cmd_/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.o := gcc -Wp,-MD,/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/.en_netdev.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include \
-DCOMPAT_BASE="\"mlnx-en-compat-20150604-2307-b558788\"" -DCOMPAT_BASE_TREE="\"mlnx_ofed/mlnx_rdma.git\"" -DCOMPAT_BASE_TREE_VERSION="\"b558788\"" -DCOMPAT_PROJECT="\"Compat-mlnx-ofed\"" -DCOMPAT_VERSION="\"b558788\""  \
-include /lib/modules/2.6.32-573.3.1.el6.x86_64/build/include/linux/autoconf.h \
-include /lib/modules/2.6.32-573.3.1.el6.x86_64/build/include/linux/kconfig.h \
-include /usr/src/mlnx-en-3.0/include/linux/compat-2.6.h \
 \
 \
 \
 \
-I/usr/src/mlnx-en-3.0/include \
-D__XEN_INTERFACE_VERSION__= \
-I/usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/mach-xen \
-I/usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include \
-Iarch/x86/include/generated \
-Iinclude \
-I/usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/uapi \
-Iarch/x86/include/generated/uapi \
-I/usr/src/kernels/2.6.32-573.3.1.el6.x86_64/include \
-I/usr/src/kernels/2.6.32-573.3.1.el6.x86_64/include/uapi \
-Iinclude/generated/uapi \
 \
-I/usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include \
-Iarch/x86/include/generated \
 -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m64 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -fstack-protector -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_AVX=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -pg -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-dwarf2-cfi-asm -fconserve-stack  -DMODULE -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(en_netdev)"  -D"KBUILD_MODNAME=KBUILD_STR(mlx4_en)" -D"DEBUG_HASH=29" -D"DEBUG_HASH2=20" -c -o /usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/.tmp_en_netdev.o /usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.c

deps_/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.o := \
  /usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.c \
    $(wildcard include/config/net/rx/busy/poll.h) \
    $(wildcard include/config/infiniband/wqe/format.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/compat/sysfs/ops/const.h) \
    $(wildcard include/config/compat/en/sysfs.h) \
    $(wildcard include/config/sysfs/loopback.h) \
    $(wildcard include/config/compat/disable/dcb.h) \
    $(wildcard include/config/mlx4/en/dcb.h) \
    $(wildcard include/config/compat/lro/enabled.h) \
  /lib/modules/2.6.32-573.3.1.el6.x86_64/build/include/linux/kconfig.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.h \
  /usr/src/mlnx-en-3.0/include/linux/../../compat/config.h \
  include/linux/version.h \
  /usr/src/mlnx-en-3.0/include/linux/compat_autoconf.h \
    $(wildcard include/config/compat/kernel/2/6/33.h) \
    $(wildcard include/config/compat/kernel/2/6/34.h) \
    $(wildcard include/config/compat/kernel/2/6/35.h) \
    $(wildcard include/config/compat/kernel/2/6/36.h) \
    $(wildcard include/config/compat/kernel/2/6/37.h) \
    $(wildcard include/config/compat/kernel/2/6/38.h) \
    $(wildcard include/config/compat/kernel/2/6/39.h) \
    $(wildcard include/config/compat/kernel/3/0.h) \
    $(wildcard include/config/compat/kernel/3/1.h) \
    $(wildcard include/config/compat/kernel/3/2.h) \
    $(wildcard include/config/compat/kernel/3/3.h) \
    $(wildcard include/config/compat/kernel/3/4.h) \
    $(wildcard include/config/compat/kernel/3/5.h) \
    $(wildcard include/config/compat/kernel/3/6.h) \
    $(wildcard include/config/compat/kernel/3/7.h) \
    $(wildcard include/config/compat/kernel/3/8.h) \
    $(wildcard include/config/compat/kernel/3/9.h) \
    $(wildcard include/config/compat/kernel/3/10.h) \
    $(wildcard include/config/compat/kernel/3/11.h) \
    $(wildcard include/config/compat/kernel/3/12.h) \
    $(wildcard include/config/compat/kernel/3/13.h) \
    $(wildcard include/config/compat/kernel/3/14.h) \
    $(wildcard include/config/compat/kernel/3/15.h) \
    $(wildcard include/config/compat/kernel/3/16.h) \
    $(wildcard include/config/compat/kernel/3/17.h) \
    $(wildcard include/config/compat/kernel/3/18.h) \
    $(wildcard include/config/compat/kernel/3/19.h) \
    $(wildcard include/config/compat/kernel/4/0.h) \
    $(wildcard include/config/compat/rhel/6/0.h) \
    $(wildcard include/config/compat/rhel/6/1.h) \
    $(wildcard include/config/compat/rhel/6/2.h) \
    $(wildcard include/config/compat/rhel/6/3.h) \
    $(wildcard include/config/compat/rhel/6/4.h) \
    $(wildcard include/config/compat/rhel/6/5.h) \
    $(wildcard include/config/compat/rhel/6/6.h) \
    $(wildcard include/config/compat/iser/attr/is/visible.h) \
    $(wildcard include/config/compat/eth/hw/addr/random.h) \
    $(wildcard include/config/compat/lro/enabled/ipoib.h) \
    $(wildcard include/config/compat/dev/hw/addr/random.h) \
    $(wildcard include/config/compat/netdev/features.h) \
    $(wildcard include/config/compat/is/work/busy.h) \
    $(wildcard include/config/compat/is/maxrate.h) \
    $(wildcard include/config/compat/is/netdev/extended.h) \
    $(wildcard include/config/compat/is/netdev/ops/extended.h) \
    $(wildcard include/config/compat/disable/va/format/print.h) \
    $(wildcard include/config/compat/netif/is/bond/master.h) \
    $(wildcard include/config/compat/netif/is/xps.h) \
    $(wildcard include/config/compat/netif/has/pick/tx.h) \
    $(wildcard include/config/compat/sock/has/queue.h) \
    $(wildcard include/config/compat/skb/has/frag/list.h) \
    $(wildcard include/config/compat/has/irq/affinity/hint.h) \
    $(wildcard include/config/compat/has/irq/affinity/notifier.h) \
    $(wildcard include/config/compat/pm/qos.h) \
    $(wildcard include/config/compat/pm/qos/v2.h) \
    $(wildcard include/config/compat/netif/f/rxhash.h) \
    $(wildcard include/config/compat/is/linux/cpu/rmap.h) \
    $(wildcard include/config/compat/netlink/3/7.h) \
    $(wildcard include/config/compat/has/num/channels.h) \
    $(wildcard include/config/compat/ethtool/ops/ext.h) \
    $(wildcard include/config/compat/define/num/lro.h) \
    $(wildcard include/config/compat/loopback.h) \
    $(wildcard include/config/compat/is/num/tx/queues.h) \
    $(wildcard include/config/compat/new/tx/ring/scheme.h) \
    $(wildcard include/config/compat/rcu.h) \
    $(wildcard include/config/compat/is/kstrtox.h) \
    $(wildcard include/config/compat/is/ip/tos2prio.h) \
    $(wildcard include/config/compat/is/bitop.h) \
    $(wildcard include/config/compat/ndo/vf/mac/vlan.h) \
    $(wildcard include/config/compat/is/vf/info/spoofchk.h) \
    $(wildcard include/config/compat/is/vf/info/linkstate.h) \
    $(wildcard include/config/compat/is/pci/physfn.h) \
    $(wildcard include/config/compat/xprt/reserve/xprt/cong/2params.h) \
    $(wildcard include/config/compat/reserve/xprt/2params.h) \
    $(wildcard include/config/compat/xprt/alloc/4params.h) \
    $(wildcard include/config/compat/xprtrdma/needed.h) \
    $(wildcard include/config/compat/virtqueue/get/buf.h) \
    $(wildcard include/config/compat/virtqueue/add/buf.h) \
    $(wildcard include/config/compat/virtqueue/kick.h) \
    $(wildcard include/config/compat/is/bitmap.h) \
    $(wildcard include/config/is/rtable/idev.h) \
    $(wildcard include/config/compat/is/prio/tc/map.h) \
    $(wildcard include/config/is/rx/handler/result.h) \
    $(wildcard include/config/module/eeprom/ethtool.h) \
    $(wildcard include/config/timestamp/ethtool.h) \
    $(wildcard include/config/compat/indir/setting.h) \
    $(wildcard include/config/compat/ifla/vf/link/state/max.h) \
    $(wildcard include/config/compat/vlan/egress/visible.h) \
    $(wildcard include/config/genetlink/is/list/head.h) \
    $(wildcard include/config/is/scsi/lockless.h) \
    $(wildcard include/config/compat/ptp/clock.h) \
    $(wildcard include/config/compat/ptp/clock/register.h) \
    $(wildcard include/config/compat/use/compound/trans/head.h) \
    $(wildcard include/config/compat/is/sysfs/dirent/sysfs/get/direnty.h) \
    $(wildcard include/config/compat/is/eth/flag/txvlan.h) \
    $(wildcard include/config/compat/is/xprt/create/net.h) \
    $(wildcard include/config/compat/is/rpc/rqst/rq/xmit/bytes/sent.h) \
    $(wildcard include/config/compat/is/iscsi/change/queue/depth.h) \
    $(wildcard include/config/compat/is/msg/iov.h) \
    $(wildcard include/config/compat/is/get/unused/fd.h) \
    $(wildcard include/config/compat/is/nlmsg/validate/not/const/nlmsghdr.h) \
    $(wildcard include/config/compat/is/const/pci/error/handlers.h) \
  /usr/src/mlnx-en-3.0/include/linux/init.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /usr/src/mlnx-en-3.0/include/linux/compiler.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /usr/src/mlnx-en-3.0/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/types.h \
  include/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/posix_types_64.h \
  include/linux/highuid.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.30.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.31.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/mips.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/sparc.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.32.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.33.h \
    $(wildcard include/config/pccard.h) \
    $(wildcard include/config/compat/firmware/class.h) \
    $(wildcard include/config/fw/loader.h) \
    $(wildcard include/config/ppc.h) \
  /usr/src/mlnx-en-3.0/include/linux/skbuff.h \
  include/linux/skbuff.h \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/network/secmark.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stdarg.h \
  include/linux/linkage.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/stringify.h \
  include/linux/bitops.h \
    $(wildcard include/config/generic/find/first/bit.h) \
    $(wildcard include/config/generic/find/last/bit.h) \
    $(wildcard include/config/generic/find/next/bit.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/paravirt.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/asm.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/invlpg.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/swab.h \
    $(wildcard include/config/x86/bswap.h) \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/minix.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/typecheck.h \
  include/linux/ratelimit.h \
  include/linux/param.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/linux/dynamic_debug.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/kmemcheck.h \
    $(wildcard include/config/kmemcheck.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  include/linux/auxvec.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/auxvec.h \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/prefetch.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/processor.h \
    $(wildcard include/config/x86/vsmp.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/m386.h) \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/vm86.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ptrace.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ptrace-abi.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/segment.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/page_types.h \
  include/linux/const.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
    $(wildcard include/config/flatmem.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/math_emu.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/sigcontext.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/current.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  include/asm-generic/percpu.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/system.h \
    $(wildcard include/config/ia32/emulation.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/oostore.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/cmpxchg.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/cmpxchg_64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/compat/vdso.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pgtable_64_types.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/desc_defs.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  include/asm-generic/kmap_types.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  /usr/src/mlnx-en-3.0/include/linux/string.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/string.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/string_64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/page.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/page_64.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/getorder.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/msr.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/msr-index.h \
  include/linux/ioctl.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/cpumask.h \
  include/linux/personality.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /usr/src/mlnx-en-3.0/include/linux/math64.h \
  include/linux/math64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/err.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/debug/stack/usage.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ftrace.h \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/atomic.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/atomic_64.h \
  include/asm-generic/atomic-long.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/spinlock.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/rwlock.h \
  include/linux/spinlock_api_smp.h \
  include/linux/prio_tree.h \
  include/linux/rbtree.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/rwsem.h \
  include/linux/completion.h \
  include/linux/wait.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/mmu.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/have/default/no/spin/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/seqlock.h \
  include/linux/net.h \
    $(wildcard include/config/sysctl.h) \
  /usr/src/mlnx-en-3.0/include/linux/socket.h \
  include/linux/socket.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/socket.h \
  include/asm-generic/socket.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/sockios.h \
  include/asm-generic/sockios.h \
  include/linux/sockios.h \
  include/linux/uio.h \
  include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  include/linux/irqnr.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/archrandom.h \
  include/linux/fcntl.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/fcntl.h \
  include/asm-generic/fcntl.h \
  include/linux/sysctl.h \
  include/linux/textsearch.h \
  /usr/src/mlnx-en-3.0/include/linux/module.h \
    $(wildcard include/config/dtrace.h) \
  include/linux/module.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/stat.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/stat.h \
  include/linux/kmod.h \
  include/linux/gfp.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/debug/vm.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/bounds.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/memory/hotremove.h) \
  include/linux/notifier.h \
  include/linux/errno.h \
  include/linux/srcu.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/mmzone.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/mmzone_64.h \
    $(wildcard include/config/numa/emu.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/virtual.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/mca.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
    $(wildcard include/config/acpi.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/mpspec_def.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/x86_init.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/bootparam.h \
  include/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/linux/edd.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/intel/txt.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  include/linux/ioport.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ist.h \
  include/video/edid.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  include/linux/delay.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/delay.h \
  include/linux/pm.h \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/ppc/pseries.h) \
  include/linux/workqueue.h \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/timex.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/timex.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/apicdef.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/x86/f00f/bug.h) \
    $(wildcard include/config/x86/cyclone/timer.h) \
    $(wildcard include/config/pci/mmconfig.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  include/acpi/pdc_intel.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/numa.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/numa_64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/vsyscall.h \
    $(wildcard include/config/generic/time.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/idle.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/io_apic.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/sparse/irq.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/sparsemem.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
    $(wildcard include/config/x86/64/acpi/numa.h) \
  include/asm-generic/topology.h \
  include/linux/elf.h \
  include/linux/elf-em.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/elf.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/user.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/user_64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/vdso.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kref.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/tracepoint.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
  include/linux/rcutree.h \
    $(wildcard include/config/no/hz.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/local.h \
  include/linux/percpu.h \
    $(wildcard include/config/have/legacy/per/cpu/area.h) \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/debug/kmemleak.h) \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/slab_def.h \
    $(wildcard include/config/kmemtrace.h) \
  include/linux/kmalloc_sizes.h \
  include/linux/pfn.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/module.h \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/x86/elan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
    $(wildcard include/config/4kstacks.h) \
  include/asm-generic/module.h \
  include/trace/events/module.h \
  /usr/src/mlnx-en-3.0/include/trace/define_trace.h \
  include/trace/define_trace.h \
  include/net/checksum.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/x86/wp/works/ok.h) \
    $(wildcard include/config/x86/intel/usercopy.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/uaccess_64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/checksum.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/checksum_64.h \
  include/linux/dmaengine.h \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
    $(wildcard include/config/async/tx/disable/channel/switch.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/devtmpfs.h) \
  include/linux/klist.h \
  /usr/src/mlnx-en-3.0/include/linux/semaphore.h \
  include/linux/semaphore.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/device.h \
    $(wildcard include/config/dmar.h) \
  include/linux/pm_wakeup.h \
    $(wildcard include/config/pm.h) \
  include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  include/linux/dma-attrs.h \
  include/linux/bug.h \
  include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/scatterlist.h \
  include/asm-generic/scatterlist.h \
  include/linux/mm.h \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/bit_spinlock.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pgtable.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pgtable_64.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pgtable_64_types.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/mm_track.h \
    $(wildcard include/config/track/dirty/pages.h) \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/s390.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/io_64.h \
  include/linux/vmalloc.h \
  include/asm-generic/iomap.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/dma-mapping.h \
    $(wildcard include/config/isa.h) \
  include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/swiotlb.h \
    $(wildcard include/config/swiotlb.h) \
  include/linux/swiotlb.h \
  include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  include/asm-generic/dma-mapping-common.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /usr/src/mlnx-en-3.0/include/linux/pci.h \
    $(wildcard include/config/pci/iov.h) \
  include/linux/pci.h \
    $(wildcard include/config/pcieaspm.h) \
    $(wildcard include/config/pci/msi.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pci/legacy.h) \
    $(wildcard include/config/pcieaer.h) \
    $(wildcard include/config/pcie/ecrc.h) \
    $(wildcard include/config/ht/irq.h) \
    $(wildcard include/config/pci/domains.h) \
    $(wildcard include/config/hotplug/pci.h) \
  include/linux/pci_regs.h \
  include/linux/mod_devicetable.h \
  include/linux/io.h \
    $(wildcard include/config/has/ioport.h) \
  include/linux/irqreturn.h \
  include/linux/pci_ids.h \
  include/linux/dmapool.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pci.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/pci_64.h \
    $(wildcard include/config/calgary/iommu.h) \
  include/asm-generic/pci-dma-compat.h \
  include/linux/pci-dma.h \
  include/asm-generic/pci.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.h \
  include/pcmcia/cs_types.h \
  /usr/src/mlnx-en-3.0/include/pcmcia/cistpl.h \
  include/pcmcia/cs.h \
  include/pcmcia/cistpl.h \
    $(wildcard include/config/cb.h) \
  include/pcmcia/ds.h \
    $(wildcard include/config/pcmcia/ioctl.h) \
  include/pcmcia/device_id.h \
  include/pcmcia/ss.h \
    $(wildcard include/config/cardbus.h) \
    $(wildcard include/config/pcmcia.h) \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/user/sched.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/utrace.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/cfs/bandwidth.h) \
    $(wildcard include/config/group/sched.h) \
  include/linux/capability.h \
    $(wildcard include/config/security/file/capabilities.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/sem.h \
  include/linux/ipc.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ipcbuf.h \
  include/asm-generic/ipcbuf.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/sembuf.h \
  include/linux/signal.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/signal.h \
  include/asm-generic/signal-defs.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/path.h \
  include/linux/pid.h \
  include/linux/proportions.h \
  include/linux/percpu_counter.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include/linux/rculist.h \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/resource.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/resource.h \
  include/asm-generic/resource.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
  include/linux/key.h \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/aio.h \
  include/linux/aio_abi.h \
  include/linux/firmware.h \
  include/linux/input.h \
  include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/limits.h \
  include/linux/blk_types.h \
  include/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/radix-tree.h \
  include/linux/fiemap.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/nfs_fs_i.h \
  include/linux/nfs.h \
  include/linux/sunrpc/msg_prot.h \
  include/linux/inet.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.34.h \
    $(wildcard include/config/preempt/rt.h) \
    $(wildcard include/config/preempt/desktop.h) \
  /usr/src/mlnx-en-3.0/include/linux/netdevice.h \
  include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan/80211.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/tr.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/netprio/cgroup.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/netpoll/trap.h) \
    $(wildcard include/config/rps.h) \
  include/linux/if.h \
  include/linux/hdlc/ioctl.h \
  include/linux/if_ether.h \
  include/linux/if_packet.h \
  include/linux/if_link.h \
  include/linux/netlink.h \
  /usr/src/mlnx-en-3.0/include/linux/ethtool.h \
  include/linux/ethtool.h \
  /usr/src/mlnx-en-3.0/include/net/net_namespace.h \
  include/net/net_namespace.h \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/net.h) \
  include/net/netns/core.h \
  include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  include/net/snmp.h \
  include/linux/snmp.h \
  include/net/netns/unix.h \
  include/net/netns/packet.h \
  include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
    $(wildcard include/config/ip/pimsm/v1.h) \
    $(wildcard include/config/ip/pimsm/v2.h) \
  include/net/inet_frag.h \
  include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/pimsm/v2.h) \
  include/net/dst_ops.h \
  include/net/netns/dccp.h \
  include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  include/linux/netfilter.h \
    $(wildcard include/config/netfilter/debug.h) \
    $(wildcard include/config/nf/nat/needed.h) \
  include/linux/in.h \
  include/linux/in6.h \
  include/linux/libc-compat.h \
  include/net/flow.h \
  include/linux/proc_fs.h \
    $(wildcard include/config/proc/devicetree.h) \
    $(wildcard include/config/proc/kcore.h) \
  include/linux/magic.h \
  include/net/netns/conntrack.h \
  include/linux/list_nulls.h \
  include/net/netns/xfrm.h \
  include/linux/xfrm.h \
  include/linux/seq_file_net.h \
  include/linux/seq_file.h \
  include/net/dsa.h \
  include/net/dcbnl.h \
  /usr/src/mlnx-en-3.0/include/linux/dcbnl.h \
  include/linux/dcbnl.h \
  include/net/netprio_cgroup.h \
  include/linux/cgroup.h \
  include/linux/cgroupstats.h \
  include/linux/taskstats.h \
  include/linux/prio_heap.h \
  include/linux/idr.h \
  include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/debug.h) \
    $(wildcard include/config/cgroup/ns.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/net/cls/cgroup.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/cgroup/perf.h) \
  include/linux/hardirq.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
  include/linux/irq.h \
    $(wildcard include/config/irq/per/cpu.h) \
    $(wildcard include/config/irq/release/method.h) \
    $(wildcard include/config/intr/remap.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/numa/irq/desc.h) \
    $(wildcard include/config/generic/hardirqs/no//do/irq.h) \
    $(wildcard include/config/cpumasks/offstack.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/irq.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/irq_regs.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/hw_irq.h \
  include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/sections.h \
    $(wildcard include/config/debug/rodata.h) \
  include/asm-generic/sections.h \
  include/linux/neighbour.h \
  include/linux/interrupt.h \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/debug/shirq.h) \
  include/trace/events/irq.h \
  include/linux/usb.h \
    $(wildcard include/config/usb/devicefs.h) \
    $(wildcard include/config/usb/mon.h) \
    $(wildcard include/config/usb/device/class.h) \
    $(wildcard include/config/usb/suspend.h) \
  include/linux/usb/ch9.h \
    $(wildcard include/config/size.h) \
    $(wildcard include/config/att/one.h) \
    $(wildcard include/config/att/selfpower.h) \
    $(wildcard include/config/att/wakeup.h) \
    $(wildcard include/config/att/battery.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.35.h \
  /usr/src/mlnx-en-3.0/include/linux/etherdevice.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  include/linux/etherdevice.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/unaligned.h \
  /usr/src/mlnx-en-3.0/include/linux/unaligned/access_ok.h \
  /usr/src/mlnx-en-3.0/include/linux/unaligned/generic.h \
  include/net/sock.h \
  include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
  include/linux/binfmts.h \
  include/linux/shm.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/shmparam.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/shmbuf.h \
  include/asm-generic/shmbuf.h \
  include/linux/msg.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/msgbuf.h \
  include/asm-generic/msgbuf.h \
  include/linux/filter.h \
  include/linux/rculist_nulls.h \
  include/linux/poll.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/poll.h \
  include/asm-generic/poll.h \
  include/net/dst.h \
    $(wildcard include/config/net/cls/route.h) \
  include/linux/rtnetlink.h \
  include/linux/if_addr.h \
  include/net/neighbour.h \
  include/net/rtnetlink.h \
  include/net/netlink.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.36.h \
    $(wildcard include/config/compat/no/printk/needed.h) \
    $(wildcard include/config/lock/kernel.h) \
  /usr/src/mlnx-en-3.0/include/linux/pm_qos_params.h \
  include/linux/pm_qos_params.h \
  include/linux/miscdevice.h \
  include/linux/major.h \
  include/linux/smp_lock.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.37.h \
    $(wildcard include/config/compat/iff/eipoib/vif.h) \
  include/linux/leds.h \
    $(wildcard include/config/leds/triggers.h) \
    $(wildcard include/config/leds/trigger/ide/disk.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.38.h \
    $(wildcard include/config/xps.h) \
  include/net/sch_generic.h \
  include/linux/pkt_sched.h \
  include/linux/pkt_cls.h \
    $(wildcard include/config/net/cls/ind.h) \
  include/net/gen_stats.h \
  include/linux/gen_stats.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-2.6.39.h \
  include/linux/tty.h \
  include/linux/termios.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/termios.h \
  include/asm-generic/termios.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/termbits.h \
  include/asm-generic/termbits.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/ioctls.h \
  include/asm-generic/ioctls.h \
  include/linux/tty_driver.h \
    $(wildcard include/config/console/poll.h) \
  include/linux/cdev.h \
  include/linux/tty_ldisc.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.0.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.1.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/generic/atomic64.h) \
  include/net/ip.h \
    $(wildcard include/config/inet.h) \
  include/linux/ip.h \
  include/net/inet_sock.h \
  include/linux/jhash.h \
  /usr/src/mlnx-en-3.0/include/linux/unaligned/packed_struct.h \
  include/net/request_sock.h \
  include/net/netns/hash.h \
  include/net/route.h \
  include/net/inetpeer.h \
  include/linux/in_route.h \
  include/linux/route.h \
  include/linux/ipv6.h \
    $(wildcard include/config/ipv6/privacy.h) \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  include/linux/icmpv6.h \
  include/linux/tcp.h \
    $(wildcard include/config/tcp/md5sig.h) \
  include/net/inet_connection_sock.h \
  include/net/inet_timewait_sock.h \
  include/net/tcp_states.h \
  include/net/timewait_sock.h \
  include/linux/udp.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.2.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.3.h \
    $(wildcard include/config/bql.h) \
  include/linux/nl80211.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.4.h \
    $(wildcard include/config/x86/x32/abi.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.5.h \
    $(wildcard include/config/tca/codel/unspec.h) \
    $(wildcard include/config/tc/codel/xstats.h) \
    $(wildcard include/config/tca/fq/codel/unspec.h) \
    $(wildcard include/config/tca/fq/codel/xstats/qdisc.h) \
    $(wildcard include/config/tc/fq/codel/qd/stats.h) \
    $(wildcard include/config/tc/fq/codel/cl/stats.h) \
    $(wildcard include/config/tc/fq/codel/xstats.h) \
    $(wildcard include/config/compat/dev/uc/mc/add/const.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.6.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.7.h \
  include/linux/user_namespace.h \
  include/linux/nsproxy.h \
  include/linux/file.h \
  include/linux/fdtable.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.8.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.9.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.10.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.11.h \
    $(wildcard include/config/compat/scatterlist/sg/pcopy/to/buffer.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.12.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.13.h \
    $(wildcard include/config/compat/is/reinit/completion.h) \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.14.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.15.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.16.h \
  /usr/src/mlnx-en-3.0/include/linux/compat-3.17.h \
  /usr/src/mlnx-en-3.0/include/linux/if_vlan.h \
  include/linux/if_vlan.h \
  include/linux/u64_stats_sync.h \
  include/linux/hash.h \
  include/net/busy_poll.h \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/driver.h \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/device.h \
    $(wildcard include/config/dev.h) \
    $(wildcard include/config/cmd.h) \
  /usr/src/mlnx-en-3.0/include/linux/cpu_rmap.h \
  include/linux/cpu_rmap.h \
  include/linux/crash_dump.h \
    $(wildcard include/config/crash/dump.h) \
  include/linux/kexec.h \
    $(wildcard include/config/kexec.h) \
    $(wildcard include/config/kexec/jump.h) \
  include/linux/compat.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/compat.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/user32.h \
  include/linux/elfcore.h \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
  include/linux/user.h \
  include/linux/ptrace.h \
  /usr/src/kernels/2.6.32-573.3.1.el6.x86_64/arch/x86/include/asm/kexec.h \
  include/asm-generic/kexec.h \
    $(wildcard include/config/kexec/auto/reserve.h) \
  /usr/src/mlnx-en-3.0/include/linux/atomic.h \
  /usr/src/mlnx-en-3.0/include/linux/clocksource.h \
  include/linux/clocksource.h \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/generic/time/vsyscall.h) \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/cmd.h \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/cq.h \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/doorbell.h \
  /usr/src/mlnx-en-3.0/include/uapi/linux/if_bonding.h \
  include/linux/if_bonding.h \
  /usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h \
    $(wildcard include/config/ptp/1588/clock.h) \
    $(wildcard include/config/sysfs/maxrate.h) \
    $(wildcard include/config/sysfs/qcn.h) \
    $(wildcard include/config/sysfs/mqprio.h) \
    $(wildcard include/config/sysfs/indir/setting.h) \
    $(wildcard include/config/sysfs/num/channels.h) \
    $(wildcard include/config/x86/xen.h) \
  include/linux/net_tstamp.h \
  /usr/src/mlnx-en-3.0/include/linux/ptp_clock_kernel.h \
  include/linux/ptp_clock_kernel.h \
  include/linux/pps_kernel.h \
    $(wildcard include/config/ntp/pps.h) \
  include/linux/pps.h \
  include/linux/ptp_clock.h \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/qp.h \
  /usr/src/mlnx-en-3.0/include/linux/mlx4/srq.h \
  include/linux/inet_lro.h \
  include/net/tcp.h \
    $(wildcard include/config/syn/cookies.h) \
  include/linux/crypto.h \
  include/linux/uaccess.h \
  include/linux/cryptohash.h \
  include/net/inet_hashtables.h \
  include/net/inet_ecn.h \
  include/net/dsfield.h \
  /usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_port.h \
  /usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/mlx4_stats.h \

/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.o: $(deps_/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.o)

$(deps_/usr/src/mlnx-en-3.0/drivers/net/ethernet/mellanox/mlx4/en_netdev.o):
