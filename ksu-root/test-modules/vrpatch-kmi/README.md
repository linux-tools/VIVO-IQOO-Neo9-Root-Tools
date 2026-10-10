# vrpatch.ko —— 按 KernelSU 官方 KMI ko 方式编译（android13-5.15）

**目的**：不再用「某台设备的自编内核树」编 vrpatch.ko，而是照 KernelSU 官方 `kernelsu-<kmi>.ko`
的路线，用 **DDK 的 KMI 预备树** 编一份 5.15 通用产物，再由设备侧的 `ksud insmod`
（`ksuinit::load_module`）完成装载 —— 它会在首次 `init_module` 失败后，从 kmsg 读出
**本机内核自己要求的 vermagic**，在内存里重建 `.modinfo` 后重试，并用 `/proc/kallsyms`
把 UND 符号重定位成绝对地址。所以**不需要**逐字对齐 vermagic。

## 1. 编译方式（与官方一致）

```
KMI  = android13-5.15                      # DDK mapping.json
src  = $DDK_ROOT/src/android13-5.15        # DDK 源码归档
kdir = $DDK_ROOT/kdir/android13-5.15       # DDK 预备树（self-contained）
make -C $src O=$kdir M=<模块目录> src=<模块目录> modules
```

这与 KernelSU `kernel/Makefile` 的 `make -C $(KDIR) M=$(ODIR) src=$(MDIR) modules` 是同一机制。
`src=`/`M=` 同时指向模块目录是官方用来分离输出目录的写法（6.13 之前用 `src=` 变通）。

本机落地路径（避开了需要 sudo 的 `/opt/ddk`）：

| 组件 | 位置 | 来源 |
|---|---|---|
| kdir | `~/ddk/kdir/android13-5.15`（解包 3.5 G） | `ddk-prebuilts` LFS `kdir/kdir.android13-5.15.tar.zst`（799 M） |
| src | `~/ddk/src/android13-5.15`（内核 5.15.202） | `ddk-prebuilts` LFS `src/src.android13-5.15.tar.zst`（146 M） |
| clang | `~/toolchains/ndk-r27/.../bin`（clang 18.0.1） | 本机已有；官方 `clang-r450784e`(14.0.7) 未使用（见 §4） |

直接跑 `bash build-kmi.sh` 即可复现（脚本内含两处不改树的命令行覆盖，见 §4）。

## 2. 产物

```
vrpatch.ko   249,224 B
vermagic:    5.15.202-android13-5.15.202_r00-dirty SMP preempt mod_unload modversions aarch64
```

## 3. 与 vivo 原产物（`app/src/main/assets/modules/vrpatch.ko`）的对账

用 `verify-layout.py` 静态对账结果 —— **全部 PASS**：

| 校验项 | KMI 产物 | vivo 原产物 | 结论 |
|---|---|---|---|
| `struct module.core_layout.base`/`.size` 取数偏移 | `[x0+#0x180]` / `[x0+#0x188]` | 同 | 一致 |
| `sizeof(struct module)`（`.gnu.linkonce.this_module`） | 960 (0x3c0) | 960 | 一致 |
| CFI 类型哈希（`__cfi_check`） | `0x02b3a43e29242445`, `0x7e04a0fb7ad8bcd5` | 同 | 一致 |
| `.text` / `.init.text` / `.exit.text` / `.rodata` | `f51fcde6` / `4acac999` / `1438eeaa` / `173b227c` | 同 | **逐段同 md5** |
| `.gnu.linkonce.this_module` | `20e5ac96` | `20e5ac96` | 一致 |
| 段集合、`__versions`（=0） | 一致 | 一致 | 一致 |

**结论：KMI 编法与 vivo 编法在代码层是完全等价的产物**（唯一差异是 `.modinfo` 里的 vermagic 串与调试信息）。
因此不存在 `struct module` 布局风险，也不存在 CFI 类型哈希跨编译器不一致的风险。

## 4. 两处必要的命令行覆盖（不改动 KMI 树）

| 覆盖 | 原因 |
|---|---|
| `CONFIG_INIT_STACK_ALL_ZERO=` | 该树（android13-5.15-lts/5.15.202）为 clang 14 带了 `-enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang`，clang 18 已删除该 flag（命令行赋值让 `ifdef` 跳过，避免改树） |
| `CONFIG_DEBUG_INFO_BTF_MODULES=` | 模块 BTF 需 `pahole`（本机未装）。BTF 与装载/布局无关；官方产物也非必须有 |

若要用官方 clang 跑原样流程（更“正统”，但需再下 454 M）：把 `clang-r450784e.tar.zst` 解到
`~/ddk/clang/clang-r450784e`，`build-kmi.sh` 会自动优先使用它；此时上面第二处覆盖仍需要（`pahole` 与 clang 无关）。

## 5. 装载（设备侧）

App 的 root 脚本已经是这条链：

```sh
/data/adb/ksud insmod "$HOME_DIR/vrpatch.ko"     # ksud = 管理器自带（用户选择的管理器）
```

KMI 串永远不等于 vivo 内核的串 ⇒ 第一次 `init_module` 会失败，`ksuinit` 从 kmsg 拿内核要求的串、
内存改写后再试一次 —— 这条重试路径在本机型上已有真机验证记录（用它把 178 编的 `kernelsu-vivo.ko`
装进了 137 内核）。**不需要**手工改 vermagic；也不要用 `ksud late-load` 装 vrpatch
（late-load 只吃 ksud 内嵌的官方 GKI `<kmi>_kernelsu.ko`，不接受外部文件）。

## 6. 覆盖矩阵（OriginOS 4 → 6）

| 固件 | 内核 | 编译器 | vrpatch 覆盖方式 |
|---|---|---|---|
| PD2338_A_14.0.17.2 / 17.6（OriginOS 4） | 5.15.137 | clang 14 | 本 KMI 产物经 ksud insmod（vermagic 内存改写） |
| PD2338_A_15.1.14.7（OriginOS 5） | 5.15.178 | clang 18 | 同上 |
| PD2338_A_16.2.13.2（OriginOS 6） | 5.15.197 | clang 18 | 同上 |

依据：四份固件产物的 `.text`/`.init.text`/`.rodata`/`struct module` 实例**逐段同 md5**
（`f51fcde6`/`4acac999`/`173b227c`/`20e5ac96`），`VR_DETECT_OFFSET=0x2ecc` 三代一致
（源码有 `_Static_assert` 锁死）。RAM 12/16 GB 与本模块无关（`vr.ko` 检测函数偏移不随容量变）。

## 7. 交付物

| 文件 | 说明 |
|---|---|
| `vrpatch.c` | 与 `test-modules/vrpatch/vrpatch.c` 逐字节一致（md5 `1d2275e310bd5a870ff1f787c74003db`） |
| `Makefile` | `obj-m := vrpatch.o` + `KDIR` 支持 |
| `build-kmi.sh` | KMI 编译入口（含两处覆盖、官方 clang 优先/NDK 回退） |
| `verify-layout.py` | 布局/CFI/代码段对账脚本（装载前的 safety gate） |
| `vrpatch.ko` | 本次 KMI 产物（249,224 B），已通过全部对账项 |
