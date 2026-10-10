// vrpatch.c - 中和 vr.ko 的 root 检测 (软重启 netd/zygote 被杀的治本方案)
//
// 背景: vivo vr.ko (反 root 检测) 挂 kprobe 在 avc_has_perm/do_init_module 等,
//       检测 current->cred->euid==0 且非 vrp 域 -> force_sig(SIGABRT)。
//       软重启时 zygote/netd (uid 0) 被误杀 -> 半启动卡死。
//       (详见 neo9-root/docs/vrko_static_analysis.md: 检测函数 = .text+0x2ecc)
//
// 本模块: find_module("vr") -> text 基址 + 0x2ecc = 检测函数入口
//         -> set_memory_rw (模块内存是 vmalloc, 可用) -> 写 mov w0,#0; ret
//         -> 恢复 RO + flush icache。检测函数直接返回 0 = "无异常",
//           vr.ko 不再击杀任何 uid 0 进程。
// 软重启不重载内核模块 -> patch 持久生效 (硬重启后需重新部署)。
//
// 加载: rootd 'u0 ksud insmod /data/local/tmp/vrpatch.ko'
//       (ksud 解析未导出符号 set_memory_rw 等)
// ⚠️ 适用系统版本: 见下面的 profile 分支（本模块是**系统版本绑定**产物）
//   产物按版本存放: test-modules/out/<软件版本>/vrpatch.ko → apk/ksuonetap/assets/<同版本>/
//
// ⚙️ 设备适配: VR_DETECT_OFFSET = **vr.ko** .text 内检测函数入口偏移。
//   定位方法（可复现，见 neo9-root/docs/DEBUG_RECORD.md + vrko_static_analysis.md）：
//   1) 从该固件的 vendor_boot.img 取 lib/modules/vr.ko
//      （neo9-root/tools/vboot_extract_one.py <vendor_boot.img> lib/modules/vr.ko -o vr.ko；
//        取完用 build-id 与设备 /sys/module/vr/notes/.note.gnu.build-id 对账）
//   2) 扫 .text 里的指纹: `mrs xN,sp_el0` → `ldr xM,[xN,#0x798]`(cred) →
//      `ldr wK,[xM,#0x14]`(euid) → `cbnz wK,...`（euid!=0 直接返回）
//   3) 该指纹前最近的那个 `paciasp` 就是检测函数入口 = 这里要填的偏移
//      （core_layout.base 落在 .text 起点，因为 .text 是第一个 exec-alloc 段）
//   4) vrpatch 把入口改写成 `mov w0,#0; ret` ⇒ 检测恒返回 0
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/moduleloader.h>
#include <linux/set_memory.h>
#include <linux/cache.h>
#include <asm/cacheflush.h>

// ---- 版本绑定: vr.ko 检测函数偏移（按固件选择；构建时 -DFW_PD2338_A_14_0_17_6 选 137/17.6 那版）----
// 14.0.17.6（2026-09-28 重推）: 该固件 vr.ko 385,008 B, md5 e679cf933221f3cb1cf81fc903dfbd70,
// build-id eb16270e8314ed5fc92ad1845a2fe234babc2e94；与 14.0.17.2 的 vr.ko 仅差 vermagic/
// build-id 共 38 B，**.text 全段零差异** ⇒ 检测函数偏移沿用 0x2ecc。
#if defined(FW_PD2338_A_14_0_17_2) || defined(FW_PD2338_A_14_0_17_6)
// PD2338_A_14.0.17.2.W10.V000L1（OriginOS 4 / 内核 5.15.137-gc870e76526d2-dirty）
// 该固件 vr.ko: 385,008 B, md5 87cfed37827f74b8fb69790cc7a8b222,
//               build-id 22565b1ee91ea64111a207eb178d9fe748f01263（与设备上运行的逐字相同）
// 指纹命中 @ .text+0x2eec，所属函数入口 paciasp @ .text+0x2ecc
#define VR_DETECT_OFFSET 0x2eccUL
#else
// PD2338_A_15.1.14.7.W10.V000L1（OriginOS 5 / 内核 5.15.178-gaacdc35637c4-dirty）
// 该固件 vr.ko: 389,952 B；检测函数 = .text+0x2ecc（2026-08-18 静态分析）
#define VR_DETECT_OFFSET 0x2eccUL
#endif
_Static_assert(VR_DETECT_OFFSET == 0x2eccUL, "VR_DETECT_OFFSET 变了 —— 必须重新取证后再改");

static int __init vrpatch_init(void)
{
    struct module *vr = find_module("vr");
    unsigned long text_base, detect_fn;

    if (!vr) {
        pr_err("vrpatch: vr module not found\n");
        return -ENOENT;
    }
    if (!vr->core_layout.base || !vr->core_layout.size) {
        pr_err("vrpatch: vr module layout invalid (base=%px size=%zu)\n",
               vr->core_layout.base, vr->core_layout.size);
        return -EINVAL;
    }

    text_base = (unsigned long)vr->core_layout.base;
    detect_fn = text_base + VR_DETECT_OFFSET;

    pr_info("vrpatch: vr base=0x%lx size=%zu detect=0x%lx\n",
            text_base, vr->core_layout.size, detect_fn);

    // 模块 text 是 vmalloc 映射 -> set_memory_rw 可用 (对比内核 text 不行)
    if (set_memory_rw(detect_fn, 1)) {
        pr_err("vrpatch: set_memory_rw failed\n");
        return -EIO;
    }

    // 检测函数入口改为: mov w0,#0; ret
    // (原: paciasp; stp x29,x30... 见 vrko_static_analysis.md)
    *(u32 *)detect_fn = 0x52800000;      // mov w0, #0
    *(u32 *)(detect_fn + 4) = 0xd65f03c0; // ret

    flush_icache_range(detect_fn, detect_fn + 8);

    if (set_memory_ro(detect_fn, 1)) {
        pr_err("vrpatch: set_memory_ro failed (non-fatal)\n");
    }

    pr_info("vrpatch: vr.ko root-detect neutralized (0x%lx)\n", detect_fn);
    return 0;
}

static void __exit vrpatch_exit(void)
{
    // 不恢复: 保持中和直到重启 (恢复反而让软重启时 netd 再被误杀)
    pr_info("vrpatch: exit (leave vr.ko neutralized)\n");
}

module_init(vrpatch_init);
module_exit(vrpatch_exit);
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("neutralize vr.ko root detection (soft-reboot compat)");
