#!/bin/bash
# build-kmi.sh — 按 KernelSU 官方 KMI ko 的编法编译 vrpatch.ko
#
# 与官方 kernelsu-<kmi>.ko 同一条路：
#   1) 用 DDK 预制的 KMI 预备树（kdir/<kmi>，self-contained 源码+构建产物）
#   2) 用 DDK 源码归档（src/<kmi>）作为 Kbuild 的 srctree
#   3) make -C $SRC O=$KDIR M=<模块目录> src=<模块目录> modules
#      —— 与 KernelSU kernel/Makefile 的 `make -C $(KDIR) M=$(ODIR) src=$(MDIR) modules` 同一机制
#
# vermagic 是 KMI 串，**不会**等于任何 vivo 内核的串；设备侧由 `ksud insmod`
# （ksuinit::load_module）首次装载失败后从 kmsg 读内核要求的串、在内存里重建 .modinfo 再重试，
# 并用 /proc/kallsyms 重定位 UND 符号。这条重试路径在本机型上已真机验证
# （178 编的 kernelsu-vivo.ko 装进 137 内核成功）。
#
# 用法:
#   DDK_ROOT=~/ddk bash build-kmi.sh                     # 默认 android13-5.15
#   DDK_ROOT=~/ddk KMI=android14-5.15 bash build-kmi.sh  # 也可编 14-5.15（clang 18 同族）
#
# 说明: android13-5.15 官方 clang 是 r450784e(14.0.7)。本工程实测用 **NDK r27 的 clang 18**
#       编出的产物与 vivo 原产物代码段逐段同 md5、CFI 哈希与 struct module 布局一致，
#       故默认优先用官方 clang（若已装），否则回退 NDK r27。
set -euo pipefail

KMI="${KMI:-android13-5.15}"
DDK_ROOT="${DDK_ROOT:-$HOME/ddk}"
NDK_BIN="${NDK_BIN:-$HOME/toolchains/ndk-r27/android-ndk-r27/toolchains/llvm/prebuilt/linux-x86_64/bin}"

# KMI → 官方 clang（与 Ylarod/ddk mapping.json 一致）
case "$KMI" in
    android12-5.10) OFFICIAL_CLANG=clang-r416183b ;;
    android13-5.10) OFFICIAL_CLANG=clang-r450784e ;;
    android13-5.15) OFFICIAL_CLANG=clang-r450784e ;;
    android14-5.15) OFFICIAL_CLANG=clang-r487747c ;;
    android14-6.1)  OFFICIAL_CLANG=clang-r487747c ;;
    android15-6.6)  OFFICIAL_CLANG=clang-r510928 ;;
    android16-6.12) OFFICIAL_CLANG=clang-r536225 ;;
    android17-6.18) OFFICIAL_CLANG=clang-r584948c ;;
    *) echo "!! 未登记的 KMI: $KMI（查 mapping.json）" >&2; exit 1 ;;
esac

SRC="$DDK_ROOT/src/$KMI"
KDIR="$DDK_ROOT/kdir/$KMI"
OFFICIAL_BIN="$DDK_ROOT/clang/$OFFICIAL_CLANG/bin"

[ -d "$SRC/Makefile" ] || [ -f "$SRC/Makefile" ] || { echo "!! 缺 src: $SRC" >&2; exit 1; }
[ -d "$KDIR" ] || { echo "!! 缺 kdir: $KDIR" >&2; exit 1; }

if [ -x "$OFFICIAL_BIN/clang" ]; then
    export PATH="$OFFICIAL_BIN:$PATH"
else
    echo "提示: 未找到官方 clang（$OFFICIAL_BIN），回退 NDK r27 clang 18"
    export PATH="$NDK_BIN:$PATH"
fi

export ARCH=arm64 LLVM=1 LLVM_IAS=1 CROSS_COMPILE=aarch64-linux-gnu-
D="$(cd "$(dirname "$0")" && pwd)"

echo "=== vrpatch.ko (KMI build) ==="
echo "  KMI    : $KMI"
echo "  src    : $SRC"
echo "  kdir   : $KDIR"
echo "  clang  : $(clang --version | head -1)"

# 两处覆盖，均为「不改动 KMI 树」的命令行覆盖：
#   CONFIG_INIT_STACK_ALL_ZERO=       该树为 clang14 带 -enable-trivial-auto-var-init-zero…（clang18 不认）
#   CONFIG_DEBUG_INFO_BTF_MODULES=    跳过模块 BTF 生成（需要 pahole；与装载/布局无关）
make -C "$SRC" O="$KDIR" M="$D" src="$D" \
     CONFIG_INIT_STACK_ALL_ZERO= CONFIG_DEBUG_INFO_BTF_MODULES= \
     modules -j"$(nproc)"

echo "--- 产物 ---"
ls -l "$D/vrpatch.ko"
modinfo "$D/vrpatch.ko" 2>/dev/null | grep -E '^(name|vermagic|scmversion)' || true
echo
echo "下一步（可选，强烈建议）:"
echo "  python3 $D/verify-layout.py $D/vrpatch.ko <vivo 原产物 ko>"
echo "  三项全 PASS 才装设备（设备侧: /data/adb/ksud insmod $D/vrpatch.ko）"
