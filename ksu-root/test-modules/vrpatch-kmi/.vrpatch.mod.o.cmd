cmd_/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o := clang -Wp,-MMD,/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/.vrpatch.mod.o.d -nostdinc -isystem /home/dengxiang/toolchains/ndk-r27/android-ndk-r27/toolchains/llvm/prebuilt/linux-x86_64/lib/clang/18/include -I/home/dengxiang/ddk/src/android13-5.15/arch/arm64/include -I./arch/arm64/include/generated -I/home/dengxiang/ddk/src/android13-5.15/include -I./include -I/home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I/home/dengxiang/ddk/src/android13-5.15/include/uapi -I./include/generated/uapi -include /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler-version.h -include /home/dengxiang/ddk/src/android13-5.15/include/linux/kconfig.h -include /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler_types.h -D__KERNEL__ --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -Qunused-arguments -fmacro-prefix-map=/home/dengxiang/ddk/src/android13-5.15/= -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Wno-format-security -std=gnu89 -mgeneral-regs-only -DCONFIG_CC_HAS_K_CONSTRAINT=1 -Wno-psabi -fno-asynchronous-unwind-tables -fno-unwind-tables -mbranch-protection=pac-ret+leaf+bti -Wa,-march=armv8.5-a -DARM64_ASM_ARCH='"armv8.5-a"' -ffixed-x18 -DKASAN_SHADOW_SCALE_SHIFT= -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-gnu -mno-global-merge -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-stack-clash-protection -g -gdwarf-4 -fsanitize=shadow-call-stack -fno-lto -flto -fvisibility=default -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-array-bounds -Werror -fno-strict-overflow -fno-stack-check -Werror=date-time -Werror=incompatible-pointer-types -fno-builtin-wcslen -Wno-initializer-overrides -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -mstack-protector-guard=sysreg -mstack-protector-guard-reg=sp_el0 -mstack-protector-guard-offset=1504 -fsanitize=array-bounds -fsanitize=local-bounds -fsanitize-undefined-trap-on-error -DMODULE -DKBUILD_BASENAME='"vrpatch.mod"' -DKBUILD_MODNAME='"vrpatch"' -D__KBUILD_MODNAME=kmod_vrpatch -c -o /home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o /home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.c

source_/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o := /home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.c

deps_/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o := \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/RETPOLINE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler_types.h \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler_attributes.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler-clang.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/compiler.h \
    $(wildcard include/config/CFI_CLANG) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MITIGATION_ITS) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/MODULE_SIG) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/list.h \
    $(wildcard include/config/DEBUG_LIST) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/int-ll64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/int-ll64.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/bitsperlong.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitsperlong.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/bitsperlong.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/posix_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/stddef.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/stddef.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/posix_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/posix_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/const.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/const.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/const.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/PROVE_LOCKING) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/stdarg.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/align.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/array_size.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/STACK_VALIDATION) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/rwonce.h \
    $(wildcard include/config/LTO) \
    $(wildcard include/config/AS_HAS_LDAPR) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/alternative-macros.h \
  arch/arm64/include/generated/asm/cpucaps.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/insn-def.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/brk-imm.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/stringify.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/rwonce.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/limits.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/limits.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/limits.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/linkage.h \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/MODULE_REL_CRCS) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
    $(wildcard include/config/TRIM_UNUSED_KSYMS) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/linkage.h \
    $(wildcard include/config/ARM64_BTI_KERNEL) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bitops.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bits.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/bits.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/build_bug.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/typecheck.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/kernel.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/sysinfo.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/bitops.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/builtin-__ffs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/builtin-ffs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/builtin-__fls.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/builtin-fls.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/ffz.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/fls64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/find.h \
    $(wildcard include/config/GENERIC_FIND_FIRST_BIT) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/sched.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/hweight.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/arch_hweight.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/const_hweight.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/atomic.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/atomic.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/atomic.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/barrier.h \
    $(wildcard include/config/ARM64_PSEUDO_NMI) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/barrier.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/cmpxchg.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/lse.h \
    $(wildcard include/config/ARM64_LSE_ATOMICS) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/atomic_ll_sc.h \
    $(wildcard include/config/CC_HAS_K_CONSTRAINT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/jump_label.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/insn.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/alternative.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/init.h \
    $(wildcard include/config/STRICT_KERNEL_RWX) \
    $(wildcard include/config/STRICT_MODULE_RWX) \
    $(wildcard include/config/LTO_CLANG) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/atomic_lse.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/atomic/atomic-long.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/atomic/atomic-instrumented.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/instrumented.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/instrumented-atomic.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/lock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/instrumented-lock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/non-atomic.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/le.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/byteorder.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/byteorder/little_endian.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/byteorder/little_endian.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/swab.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/swab.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/byteorder/generic.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kstrtox.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/math.h \
  arch/arm64/include/generated/asm/div64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/div64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/minmax.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kern_levels.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/ratelimit_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/param.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/param.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/param.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/spinlock_types.h \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/spinlock_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/qrwlock_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/PREEMPT_LOCK) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rwlock_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/once_lite.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/stat.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/stat.h \
    $(wildcard include/config/COMPAT) \
  arch/arm64/include/generated/uapi/asm/stat.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/stat.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/cache.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/cputype.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/BROKEN_GAS_INST) \
    $(wildcard include/config/ARM64_PA_BITS_52) \
    $(wildcard include/config/ARM64_4K_PAGES) \
    $(wildcard include/config/ARM64_16K_PAGES) \
    $(wildcard include/config/ARM64_64K_PAGES) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kasan-tags.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/mte-def.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kasan-enabled.h \
    $(wildcard include/config/KASAN) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/static_key.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/math64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/time64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/time64.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/time.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/time_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/time32.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/timex.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/timex.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/timex.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER_OOL_WORKAROUND) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/hwcap.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/hwcap.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/cpufeature.h \
    $(wildcard include/config/ARM64_PAN) \
    $(wildcard include/config/ARM64_SW_TTBR0_PAN) \
    $(wildcard include/config/ARM64_SVE) \
    $(wildcard include/config/ARM64_CNP) \
    $(wildcard include/config/ARM64_PTR_AUTH) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/ARM64_DEBUG_PRIORITY_MASKING) \
    $(wildcard include/config/ARM64_BTI) \
    $(wildcard include/config/ARM64_TLB_RANGE) \
    $(wildcard include/config/ARM64_PA_BITS) \
    $(wildcard include/config/ARM64_HW_AFDBM) \
    $(wildcard include/config/ARM64_AMU_EXTN) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/bug.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/instrumentation.h \
    $(wildcard include/config/DEBUG_ENTRY) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/DEBUG_PREEMPT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/errno.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/errno.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/errno.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/errno-base.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/cpumask.h \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bitmap.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/err.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/overflow.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/string.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/string.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/smp_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/cleanup.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/preempt.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/restart_block.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/current.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/thread_info.h \
    $(wildcard include/config/SHADOW_CALL_STACK) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/ARM64_VA_BITS) \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/EFI) \
    $(wildcard include/config/ARM_GIC_V3_ITS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sizes.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/ARM64_PAGE_SHIFT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/pfn.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/stack_pointer.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/smp.h \
    $(wildcard include/config/ARM64_ACPI_PARKING_PROTOCOL) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/percpu.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/percpu.h \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/dengxiang/ddk/src/android13-5.15/include/clocksource/arm_arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/timecounter.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/timex.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/time32.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/time.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/compat.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/CPU_FREQ_TIMES) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DEBUG_MUTEXES) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/BLOCK) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RT_SOFTINT_OPTIMIZATION) \
    $(wildcard include/config/ARCH_TASK_STRUCT_ON_STACK) \
    $(wildcard include/config/DEBUG_RSEQ) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/sched.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/pid.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/irqflags.h \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/irqflags.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/ptrace.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/ptrace.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/sve_context.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bottom_half.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/processor.h \
    $(wildcard include/config/KUSER_HELPERS) \
    $(wildcard include/config/ARM64_FORCE_52BIT) \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/ARM64_PTR_AUTH_KERNEL) \
    $(wildcard include/config/ARM64_TAGGED_ADDR_ABI) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/android_vendor.h \
    $(wildcard include/config/ANDROID_VENDOR_OEM_DATA) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/android_kabi.h \
    $(wildcard include/config/ANDROID_KABI_RESERVE) \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/processor.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/vdso/processor.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/hw_breakpoint.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/virt.h \
    $(wildcard include/config/KVM) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/sections.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/sections.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/kasan.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/mte-kasan.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/pgtable-types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/pgtable-nopud.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/pgtable-nop4d.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/ARM64_CONT_PTE_SHIFT) \
    $(wildcard include/config/ARM64_CONT_PMD_SHIFT) \
    $(wildcard include/config/ARM64_VA_BITS_52) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/pointer_auth.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/prctl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/random.h \
    $(wildcard include/config/ARCH_RANDOM) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/once.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/random.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/ioctl.h \
  arch/arm64/include/generated/uapi/asm/ioctl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/ioctl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/ioctl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/irqnr.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/irqnr.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/prandom.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/percpu.h \
    $(wildcard include/config/NEED_PER_CPU_EMBED_FIRST_CHUNK) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/siphash.h \
    $(wildcard include/config/HAVE_EFFICIENT_UNALIGNED_ACCESS) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/archrandom.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/arm-smccc.h \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/HAVE_ARM_SMCCC) \
    $(wildcard include/config/ARM) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/spectre.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/fpsimd.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/sigcontext.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rcutree.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/wait.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/spinlock.h \
  arch/arm64/include/generated/asm/mmiowb.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/spinlock.h \
  arch/arm64/include/generated/asm/qspinlock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/qspinlock.h \
  arch/arm64/include/generated/asm/qrwlock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/qrwlock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rwlock.h \
    $(wildcard include/config/PREEMPT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/wait.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/refcount.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sem.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/sem.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/ipc.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/highuid.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rhashtable-types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mutex.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/osq_lock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/debug_locks.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
    $(wildcard include/config/NO_HZ_COMMON) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/ktime.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/jiffies.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /home/dengxiang/ddk/src/android13-5.15/include/vdso/ktime.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/clocksource_ids.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/ipc.h \
  arch/arm64/include/generated/uapi/asm/ipcbuf.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/ipcbuf.h \
  arch/arm64/include/generated/uapi/asm/sembuf.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/sembuf.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/shm.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/page.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/personality.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/personality.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/getorder.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/shm.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm64/include/generated/uapi/asm/shmbuf.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/shmbuf.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/shmparam.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/shmparam.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/plist.h \
    $(wildcard include/config/DEBUG_PLIST) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/hrtimer_defs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rbtree.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rbtree_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/seqlock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/ww_mutex.h \
    $(wildcard include/config/DEBUG_RT_MUTEXES) \
    $(wildcard include/config/DEBUG_WW_MUTEX_SLOWPATH) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rtmutex.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/timerqueue.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/seccomp.h \
    $(wildcard include/config/SECCOMP) \
    $(wildcard include/config/HAVE_ARCH_SECCOMP_FILTER) \
    $(wildcard include/config/SECCOMP_FILTER) \
    $(wildcard include/config/CHECKPOINT_RESTORE) \
    $(wildcard include/config/SECCOMP_CACHE_DEBUG) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/seccomp.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/seccomp.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/unistd.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/unistd.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/unistd.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/seccomp.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/unistd.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/nodemask.h \
    $(wildcard include/config/HIGHMEM) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/resource.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/resource.h \
  arch/arm64/include/generated/uapi/asm/resource.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/resource.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/resource.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/latencytop.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/prio.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/signal.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/signal.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/signal.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/signal.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/signal.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/signal-defs.h \
  arch/arm64/include/generated/uapi/asm/siginfo.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/siginfo.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/syscall_user_dispatch.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/SPLIT_PTLOCK_CPUS) \
    $(wildcard include/config/ARCH_ENABLE_SPLIT_PMD_PTLOCK) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/posix-timers.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/task_work.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/rseq.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kcsan.h \
  arch/arm64/include/generated/asm/kmap_size.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/task_stack.h \
    $(wildcard include/config/STACK_GROWSUP) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/magic.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/stat.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/buildid.h \
    $(wildcard include/config/CRASH_CORE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/SPECULATIVE_PAGE_FAULT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/IOMMU_SUPPORT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/auxvec.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/auxvec.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/auxvec.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kref.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/completion.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/swait.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/uprobes.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/uprobes.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/debug-monitors.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/esr.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/probes.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/sparsemem.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/mmu.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kmod.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/umh.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/gfp.h \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mmzone.h \
    $(wildcard include/config/FORCE_MAX_ZONEORDER) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/page-flags.h \
    $(wildcard include/config/ARCH_USES_PG_UNCACHED) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/THP_SWAP) \
    $(wildcard include/config/KSM) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/local_lock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/local_lock_internal.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/HAVE_ARCH_NODEDATA_EXTENSION) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/notifier.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/SRCU) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rcu_segcblist.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/srcutree.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/topology.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/topology.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/sysctl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/elf.h \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/elf.h \
    $(wildcard include/config/COMPAT_VDSO) \
  arch/arm64/include/generated/asm/user.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/user.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/elf.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/elf-em.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/fs.h \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/MIGRATION) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/wait_bit.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kdev_t.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/kdev_t.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/dcache.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rculist_bl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/list_bl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bit_spinlock.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/path.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/list_lru.h \
    $(wildcard include/config/MEMCG_KMEM) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/shrinker.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/radix-tree.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/mm.h \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/capability.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/capability.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/semaphore.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/fcntl.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/uapi/asm/fcntl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/asm-generic/fcntl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/openat2.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/migrate_mode.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/percpu-rwsem.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rcuwait.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/signal.h \
    $(wildcard include/config/PROC_FS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/jobctl.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/uaccess.h \
    $(wildcard include/config/SET_FS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/uaccess.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/kernel-pgtable.h \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/mte.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/bitfield.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/cred.h \
    $(wildcard include/config/DEBUG_CREDENTIALS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/user.h \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/percpu_counter.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/ratelimit.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rcu_sync.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/delayed_call.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/uuid.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/uuid.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/errseq.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/ioprio.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sched/rt.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/iocontext.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/ioprio.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/fs_types.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mount.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/mnt_idmapping.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/fs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/dqblk_xfs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/dqblk_v1.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/dqblk_v2.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/dqblk_qtree.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/projid.h \
  /home/dengxiang/ddk/src/android13-5.15/include/uapi/linux/quota.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/nfs_fs_i.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/sysfs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/idr.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/kobject_ns.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/IA64) \
    $(wildcard include/config/PPC64) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/rbtree_latch.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/error-injection.h \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/error-injection.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/tracepoint-defs.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/cfi.h \
    $(wildcard include/config/CFI_CLANG_SHADOW) \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/module.h \
    $(wildcard include/config/ARM64_MODULE_PLTS) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
    $(wildcard include/config/ARM64_ERRATUM_843419) \
  /home/dengxiang/ddk/src/android13-5.15/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/build-salt.h \
    $(wildcard include/config/BUILD_SALT) \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/elfnote.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/elfnote-lto.h \
  /home/dengxiang/ddk/src/android13-5.15/include/linux/vermagic.h \
  include/generated/utsrelease.h \
  /home/dengxiang/ddk/src/android13-5.15/arch/arm64/include/asm/vermagic.h \

/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o: $(deps_/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o)

$(deps_/home/dengxiang/VIVO-IQOO-Neo9-Root-Tools/ksu-root/test-modules/vrpatch-kmi/vrpatch.mod.o):
