# vrpatch (KMI build) — 按 KernelSU 官方 KMI ko 的方式编译
#
# 与 test-modules/vrpatch/Makefile 的区别：不再用某台设备的自编内核树（wsl /root/kernel/source），
# 而是用 DDK 的 KMI 预备树（kdir），与 KernelSU 官方 kernelsu-<kmi>.ko 同源同法：
#
#   KDIR = $DDK_ROOT/kdir/<kmi>      （DDK local 模式安装位置，默认 /opt/ddk）
#   make -C $(KDIR) M=$(PWD) src=$(PWD) modules
#
# 工具链由 build-kmi.sh 设定（android13-5.15 → clang-r450784e），KDIR 亦由其导出。
obj-m := vrpatch.o

KDIR ?= $(DDK_ROOT)/kdir/android13-5.15
PWD  := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) src=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) src=$(PWD) clean
