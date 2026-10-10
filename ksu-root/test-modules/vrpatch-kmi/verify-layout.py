#!/usr/bin/env python3
"""verify-layout.py — 校验 KMI 版 vrpatch.ko 能否安全装进 vivo 内核。

模块装进内核唯一会 panic 的点是 ABI/布局不一致，本脚本把可静态验证的项逐条对账：

  1. struct module 字段偏移 —— init_module 里 `ldr x19,[x0,#base_off]` / `ldr w2,[x0,#size_off]`
  2. struct module 实例大小 —— .gnu.linkonce.this_module 段大小（= sizeof(struct module)）
  3. CFI 类型哈希 —— __cfi_check 内联的 64 位 type hash
  4. 代码段一致性 —— .text / .init.text / .rodata / .gnu.linkonce.this_module 的 md5
  5. vermagic —— 仅作记录（设备侧 ksud insmod 会在内存里改写成内核要求的串）

用法:
  python3 verify-layout.py <KMI 产物 ko> <vivo 产物 ko> [--toolchain <llvm bin>]
"""
import argparse
import hashlib
import os
import re
import subprocess
import sys

SECTIONS = [".text", ".init.text", ".exit.text", ".rodata", ".gnu.linkonce.this_module"]

SYM_RE = re.compile(r"^[0-9a-f]{16} <([^>]+)>:")
LDR_RE = re.compile(r"ldr\s+(x\d+|w\d+),\s*\[x0,\s*#(0x[0-9a-f]+)\]")
MOV_RE = re.compile(r"mov\s+x8,\s*#(0x[0-9a-f]+)")
MOVK_RE = re.compile(r"movk\s+x8,\s*#(0x[0-9a-f]+),\s*lsl\s*#(\d+)")


def run(cmd: list) -> str:
    return subprocess.run(cmd, capture_output=True, text=True).stdout


def disasm(tool: str, ko: str) -> str:
    return run([f"{tool}/llvm-objdump", "-d", "--no-show-raw-insn", ko])


def section_blob(tool: str, ko: str, sec: str):
    tmp = "/tmp/.verify_%s_%s.bin" % (os.path.basename(ko), sec.strip(".").replace(".", "_"))
    rc = subprocess.run([f"{tool}/llvm-objcopy", "-O", "binary", f"--only-section={sec}", ko, tmp],
                        capture_output=True).returncode
    if rc != 0 or not os.path.exists(tmp):
        return None
    data = open(tmp, "rb").read()
    os.unlink(tmp)
    return data


def modinfo(ko: str, field: str) -> str:
    m = re.search(rf"^{field}:\s*(.+)$", run(["modinfo", ko]), re.M)
    return m.group(1).strip() if m else "-"


def init_field_offsets(tool: str, ko: str) -> list:
    """init_module 中按固定偏移访问 struct module 字段的取数（顺序即源码顺序）。"""
    out, inside = [], False
    for line in disasm(tool, ko).splitlines():
        m = SYM_RE.match(line.strip())
        if m:
            inside = m.group(1) == "init_module"
            continue
        if not inside:
            continue
        m = LDR_RE.search(line)
        if m:
            out.append(f"{m.group(1)}<-[x0+{m.group(2)}]")
    return out


def cfi_hash(tool: str, ko: str) -> list:
    """__cfi_check 内 mov/movk 拼出的 64 位 CFI 类型哈希。"""
    hashes, cur, inside = [], None, False
    for line in disasm(tool, ko).splitlines():
        m = SYM_RE.match(line.strip())
        if m:
            inside = m.group(1) == "__cfi_check"
            continue
        if not inside:
            continue
        m = MOV_RE.search(line)
        if m:
            cur = int(m.group(1), 16)
            continue
        m = MOVK_RE.search(line)
        if m and cur is not None:
            cur |= int(m.group(1), 16) << int(m.group(2))
            continue
        if cur is not None:          # 非 mov/movk 行 → 立即数拼接结束
            hashes.append(cur)
            cur = None
    return hashes


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("kmi_ko")
    ap.add_argument("vivo_ko")
    ap.add_argument("--toolchain", default=os.environ.get(
        "LLVM_BIN",
        os.path.expanduser("~/android-sdk/ndk/29.0.14206865/toolchains/llvm/prebuilt/linux-x86_64/bin")))
    a = ap.parse_args()

    print(f"KMI  产物: {a.kmi_ko}")
    print(f"vivo 产物: {a.vivo_ko}")
    print(f"工具链    : {a.toolchain}\n")

    verdict = []
    for ko, tag in ((a.kmi_ko, "KMI"), (a.vivo_ko, "vivo")):
        print(f"[{tag:<4}] size={os.path.getsize(ko)} name={modinfo(ko, 'name')}")
        print(f"        vermagic={modinfo(ko, 'vermagic')}")
    print()

    ko_off, vivo_off = init_field_offsets(a.toolchain, a.kmi_ko), init_field_offsets(a.toolchain, a.vivo_ko)
    print("1) struct module 字段偏移（init_module 固定取数）")
    print(f"   KMI : {ko_off}")
    print(f"   vivo: {vivo_off}")
    same_off = bool(ko_off) and ko_off == vivo_off
    verdict.append(("struct module 字段偏移一致", same_off))
    print(f"   -> {'一致' if same_off else '★不一致：会读错 core_layout，禁止装载'}\n")

    kb = section_blob(a.toolchain, a.kmi_ko, ".gnu.linkonce.this_module") or b""
    vb = section_blob(a.toolchain, a.vivo_ko, ".gnu.linkonce.this_module") or b""
    print("2) struct module 实例大小（= sizeof(struct module)）")
    print(f"   KMI={len(kb)}  vivo={len(vb)}")
    same_size = bool(kb) and len(kb) == len(vb)
    verdict.append(("struct module 实例大小一致", same_size))
    print(f"   -> {'一致' if same_size else '★大小不同：布局不同，禁止装载'}\n")

    kh, vh = cfi_hash(a.toolchain, a.kmi_ko), cfi_hash(a.toolchain, a.vivo_ko)
    print("3) CFI 类型哈希（__cfi_check）")
    print(f"   KMI : {[hex(h) for h in kh]}")
    print(f"   vivo: {[hex(h) for h in vh]}")
    same_cfi = bool(kh) and kh == vh
    verdict.append(("CFI 类型哈希一致", same_cfi))
    print(f"   -> {'一致（间接调用不会被 CFI 拦）' if same_cfi else '★不一致：内核经 module->init() 等间接调用可能触发 CFI failure'}\n")

    print("4) 代码段 md5")
    for sec in SECTIONS:
        b1, b2 = section_blob(a.toolchain, a.kmi_ko, sec), section_blob(a.toolchain, a.vivo_ko, sec)
        if b1 is None or b2 is None:
            continue
        m1, m2 = hashlib.md5(b1).hexdigest()[:8], hashlib.md5(b2).hexdigest()[:8]
        print(f"   {sec:<30} {m1} {'=' if m1 == m2 else '≠'} {m2}")
    print()

    print("=== 结论 ===")
    for name, ok in verdict:
        print(f"  [{'PASS' if ok else 'FAIL'}] {name}")
    if all(ok for _, ok in verdict):
        print("\n布局与 CFI 均可对账 → 可经 `ksud insmod` 装载（vermagic 由 ksuinit 在内存里改写）。")
        return 0
    print("\n有 FAIL 项 → 不要装到设备，先按 FAIL 项调整编法。")
    return 1


if __name__ == "__main__":
    sys.exit(main())
