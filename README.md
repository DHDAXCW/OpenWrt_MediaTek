# 刷机
进入不死uboot，使用固件名：```openwrt-mediatek-filogic-glinet_gl-mt6000-squashfs-sysupgrade.bin```丢进去刷入即可。
账号：root
密码：password
地址：192.168.11.1
# 截图
![image](https://github.com/DHDAXCW/GL.iNet_GL-MT6000_lede/assets/74764072/7536fbfa-cbaa-431b-a6cd-de5e69e0a682)
![image](https://github.com/DHDAXCW/GL.iNet_GL-MT6000_lede/assets/74764072/0fc3fa19-b5ef-45d5-a5fe-c919ca8fc6e5)
![image](https://github.com/DHDAXCW/GL.iNet_GL-MT6000_lede/assets/74764072/75d050e3-d574-491e-9c10-25d920c79baf)


# 启动日志：
```
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.15.133 (d@d) (aarch64-openwrt-linux-musl-gcc (OpenWrt GCC 11.3.0 r6203-1413e13b5) 11.3.0, GNU ld (GNU Binutils) 2.37) #0 SMP Sat Oct 21 03:47:42 2023
[    0.000000] Machine model: GL.iNet GL-MT6000
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x0000000042ffffff]
[    0.000000]   node   0: [mem 0x0000000043000000-0x000000004302ffff]
[    0.000000]   node   0: [mem 0x0000000043030000-0x000000004fbfffff]
[    0.000000]   node   0: [mem 0x000000004fc00000-0x000000004ffbffff]
[    0.000000]   node   0: [mem 0x000000004ffc0000-0x000000007fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 17 pages/cpu s30040 r8192 d31400 u69632
[    0.000000] pcpu-alloc: s30040 r8192 d31400 u69632 alloc=17*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: kernel page table isolation disabled by kernel configuration
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 258048
[    0.000000] Kernel command line:  root=PARTLABEL=rootfs rootwait
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1011736K/1048576K available (8384K kernel code, 912K rwdata, 2196K rodata, 448K init, 295K bss, 36840K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] 	Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 640 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x000000000c080000
[    0.000000] arch_timer: cp15 timer(s) running at 13.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x2ff89eacb, max_idle_ns: 440795202429 ns
[    0.000000] sched_clock: 56 bits at 13MHz, resolution 76ns, wraps every 4398046511101ns
[    0.000128] Calibrating delay loop (skipped), value calculated using timer frequency.. 26.00 BogoMIPS (lpj=130000)
[    0.000136] pid_max: default: 32768 minimum: 301
[    0.000217] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.000226] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.001107] rcu: Hierarchical SRCU implementation.
[    0.001192] dyndbg: Ignore empty _ddebug table in a CONFIG_DYNAMIC_DEBUG_CORE build
[    0.001383] smp: Bringing up secondary CPUs ...
[    0.001624] Detected VIPT I-cache on CPU1
[    0.001646] GICv3: CPU1: found redistributor 1 region 0:0x000000000c0a0000
[    0.001672] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.001933] Detected VIPT I-cache on CPU2
[    0.001945] GICv3: CPU2: found redistributor 2 region 0:0x000000000c0c0000
[    0.001955] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.002181] Detected VIPT I-cache on CPU3
[    0.002190] GICv3: CPU3: found redistributor 3 region 0:0x000000000c0e0000
[    0.002198] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.002224] smp: Brought up 1 node, 4 CPUs
[    0.002238] SMP: Total of 4 processors activated.
[    0.002241] CPU features: detected: 32-bit EL0 Support
[    0.002245] CPU features: detected: CRC32 instructions
[    0.002317] CPU: All CPU(s) started at EL2
[    0.002327] alternatives: patching kernel code
[    0.004490] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.004512] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.004622] pinctrl core: initialized pinctrl subsystem
[    0.005066] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.005280] DMA: preallocated 128 KiB GFP_KERNEL pool for atomic allocations
[    0.005305] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.005321] DMA: preallocated 128 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.005550] thermal_sys: Registered thermal governor 'fair_share'
[    0.005553] thermal_sys: Registered thermal governor 'bang_bang'
[    0.005556] thermal_sys: Registered thermal governor 'step_wise'
[    0.005559] thermal_sys: Registered thermal governor 'user_space'
[    0.005733] ASID allocator initialised with 65536 entries
[    0.005988] pstore: Registered ramoops as persistent store backend
[    0.005992] ramoops: using 0x10000@0x42ff0000, ecc: 0
[    0.013451] cryptd: max_cpu_qlen set to 1000
[    0.015235] SCSI subsystem initialized
[    0.015334] libata version 3.00 loaded.
[    0.016126] clocksource: Switched to clocksource arch_sys_counter
[    0.016496] NET: Registered PF_INET protocol family
[    0.016578] IP idents hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.016975] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linear)
[    0.016990] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.016997] TCP established hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.017035] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    0.017114] TCP: Hash tables configured (established 8192 bind 8192)
[    0.017220] MPTCP token hash table entries: 1024 (order: 2, 24576 bytes, linear)
[    0.017252] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.017269] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.017350] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.017370] PCI: CLS 0 bytes, default 64
[    0.019159] workingset: timestamp_bits=46 max_order=18 bucket_order=0
[    0.021238] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.021252] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.046354] Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
[    0.046923] printk: console [ttyS0] disabled
[    0.067083] 11002000.serial: ttyS0 at MMIO 0x11002000 (irq = 121, base_baud = 2500000) is a ST16650V2
[    0.705730] printk: console [ttyS0] enabled
[    0.710503] mtk_rng 1020f000.trng: registered RNG driver
[    0.710563] hwrng: no data available
[    0.716007] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    0.727359] loop: module loaded
[    0.857302] mtk_soc_eth 15100000.ethernet: generated random MAC address b2:30:a4:11:cc:93
[    0.865526] mtk_soc_eth 15100000.ethernet: generated random MAC address 2a:22:f7:11:cd:9b
[    1.588119] mtk_soc_eth 15100000.ethernet eth0: mediatek frame engine at 0xffffffc009480000, irq 129
[    1.597845] mtk_soc_eth 15100000.ethernet eth1: mediatek frame engine at 0xffffffc009480000, irq 129
[    1.607378] i2c_dev: i2c /dev entries driver
[    1.612619] mtk-wdt 1001c000.watchdog: Watchdog enabled (timeout=31 sec, nowayout=0)
[    1.621006] NET: Registered PF_INET6 protocol family
[    1.626619] Segment Routing with IPv6
[    1.630291] In-situ OAM (IOAM) with IPv6
[    1.634228] NET: Registered PF_PACKET protocol family
[    1.639398] 8021q: 802.1Q VLAN Support v1.8
[    1.644348] pstore: Using crash dump compression: deflate
[    1.694701] mt7530 mdio-bus:1f: configuring for fixed/2500base-x link mode
[    1.703572] mt7530 mdio-bus:1f: Link is Up - 2.5Gbps/Full - flow control rx/tx
[    1.712512] mt7530 mdio-bus:1f lan0 (uninitialized): PHY [mt7530-0:00] driver [MediaTek MT7531 PHY] (irq=137)
[    1.715691] mtk-msdc 11230000.mmc: phase: [map:3fffffff] [maxlen:30] [final:10]
[    1.729994] mmc0: new HS400 MMC card at address 0001
[    1.732402] mt7530 mdio-bus:1f lan1 (uninitialized): PHY [mt7530-0:01] driver [MediaTek MT7531 PHY] (irq=138)
[    1.735739] mmcblk0: mmc0:0001 8GTF4R 7.28 GiB 
[    1.750364] GPT:Primary header thinks Alt. header is not at the end of the disk.
[    1.754568] mt7530 mdio-bus:1f lan2 (uninitialized): PHY [mt7530-0:02] driver [MediaTek MT7531 PHY] (irq=139)
[    1.757752] GPT:1 != 15269887
[    1.770588] GPT:Alternate GPT header not at the end of the disk.
[    1.776579] GPT:1 != 15269887
[    1.777415] mt7530 mdio-bus:1f lan3 (uninitialized): PHY [mt7530-0:03] driver [MediaTek MT7531 PHY] (irq=140)
[    1.779532] GPT: Use GNU Parted to correct GPT errors.
[    1.779554]  mmcblk0: p1 p2 p3 p4 p5 p6 p7
[    1.799706] mmcblk0boot0: mmc0:0001 8GTF4R 4.00 MiB 
[    1.805447] mmcblk0boot1: mmc0:0001 8GTF4R 4.00 MiB 
[    1.810622] mmcblk0rpmb: mmc0:0001 8GTF4R 512 KiB, chardev (251:0)
[    2.026151] mt7530 mdio-bus:1f lan4 (uninitialized): PHY [mdio-bus:07] driver [RTL8221B-VB-CG 2.5Gbps PHY] (irq=63)
[    2.037222] DSA: tree 0 setup
[    2.043777] VFS: Mounted root (squashfs filesystem) readonly on device 179:7.
[    2.051072] Freeing unused kernel memory: 448K
[    2.106165] Run /sbin/init as init process
[    2.110245]   with arguments:
[    2.113196]     /sbin/init
[    2.115887]   with environment:
[    2.119017]     HOME=/
[    2.121362]     TERM=linux
[    2.292846] init: Console is alive
[    2.296354] init: - watchdog -
[    3.024043] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    3.105286] Key type encrypted registered
[    3.113017] usbcore: registered new interface driver usbfs
[    3.118540] usbcore: registered new interface driver hub
[    3.123864] usbcore: registered new device driver usb
[    3.131539] device-mapper: ioctl: 4.45.0-ioctl (2021-03-22) initialised: dm-devel@redhat.com
[    3.143205] raid6: skip pq benchmark and using algorithm neonx8
[    3.149142] raid6: using neon recovery algorithm
[    3.154474] xor: measuring software checksum speed
[    3.161759]    8regs           :  3951 MB/sec
[    3.168204]    32regs          :  4678 MB/sec
[    3.175011]    arm64_neon      :  3986 MB/sec
[    3.179352] xor: using function: 32regs (4678 MB/sec)
[    3.192262] Btrfs loaded, crc32c=crc32c-generic, zoned=no, fsverity=no
[    3.204313] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    3.211500] fsl-ehci: Freescale EHCI Host controller driver
[    3.217760] ehci-platform: EHCI generic platform driver
[    3.224086] ehci-pci: EHCI PCI platform driver
[    3.229430] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    3.236174] ohci-platform: OHCI generic platform driver
[    3.242267] uhci_hcd: USB Universal Host Controller Interface driver
[    3.249251] ohci-pci: OHCI PCI platform driver
[    3.259930] phy phy-soc:t-phy@11e10000.0: u2 auto load valid efuse: ENABLE with value: 1
[    3.268083] phy phy-soc:t-phy@11e10000.1: u3 auto load valid efuse: ENABLE with value: 1
[    3.276212] phy phy-soc:t-phy@11e10000.2: u2 auto load valid efuse: ENABLE with value: 1
[    3.284923] xhci-mtk 11200000.usb: xHCI Host Controller
[    3.290148] xhci-mtk 11200000.usb: new USB bus registered, assigned bus number 1
[    3.300617] xhci-mtk 11200000.usb: hcc params 0x01403f99 hci version 0x110 quirks 0x0000000000210010
[    3.309765] xhci-mtk 11200000.usb: irq 122, io mem 0x11200000
[    3.315590] xhci-mtk 11200000.usb: xHCI Host Controller
[    3.320806] xhci-mtk 11200000.usb: new USB bus registered, assigned bus number 2
[    3.328191] xhci-mtk 11200000.usb: Host supports USB 3.2 Enhanced SuperSpeed
[    3.335551] hub 1-0:1.0: USB hub found
[    3.339312] hub 1-0:1.0: 2 ports detected
[    3.343566] usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[    3.351886] hub 2-0:1.0: USB hub found
[    3.355636] hub 2-0:1.0: 1 port detected
[    3.363721] usbcore: registered new interface driver usb-storage
[    3.370694] usbcore: registered new interface driver uas
[    3.376262] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    3.392075] init: - preinit -
[    4.080012] mtk_soc_eth 15100000.ethernet eth0: configuring for fixed/2500base-x link mode
[    4.088459] mtk_soc_eth 15100000.ethernet eth0: Link is Up - 2.5Gbps/Full - flow control rx/tx
[    4.104838] mt7530 mdio-bus:1f lan1: configuring for phy/gmii link mode
[    8.272271] mount_root: loading kmods from internal overlay
[    8.291590] kmodloader: loading kernel modules from //etc/modules-boot.d/*
[    8.300750] kmodloader: done loading kernel modules from //etc/modules-boot.d/*
[    8.491788] loop0: detected capacity change from 0 to 15178752
[    8.536136] loop0: detected capacity change from 15178752 to 14770688
[    8.604061] F2FS-fs (loop0): Mounted with checkpoint version = 351ed720
[    8.608326] random: procd: uninitialized urandom read (4 bytes read)
[    8.610831] block: attempting to load /tmp/f2fs_cfg/upper/etc/config/fstab
[    8.624590] block: extroot: device not present, retrying in 5 seconds
[   11.366371] random: crng init done
[   13.664242] overlayfs: null uuid detected in lower fs '/', falling back to xino=off,index=off,nfs_export=off.
[   13.674518] mount_root: switched to extroot
[   13.683850] urandom-seed: Seeding with /etc/urandom.seed
[   13.934879] procd: - early -
[   13.937832] procd: - watchdog -
[   14.547950] procd: - watchdog -
[   14.585518] procd: - ubus -
[   14.668007] procd: - init -
[   14.935149] urngd: v1.0.2 started.
[   15.015392] kmodloader: loading kernel modules from /etc/modules.d/*
[   15.062818] NET: Registered PF_ALG protocol family
[   15.079198] async_tx: api initialized (async)
[   15.089368] Key type dns_resolver registered
[   15.099604] Key type cifs.idmap registered
[   15.110548] RPC: Registered named UNIX socket transport module.
[   15.116491] RPC: Registered udp transport module.
[   15.121186] RPC: Registered tcp transport module.
[   15.125876] RPC: Registered tcp NFSv4.1 backchannel transport module.
[   15.135783] NET: Registered PF_KEY protocol family
[   15.142305] Initializing XFRM netlink socket
[   15.160414] tun: Universal TUN/TAP device driver, 1.6
[   15.183519] l2tp_core: L2TP core driver, V2.0
[   15.188765] l2tp_netlink: L2TP netlink interface
[   15.194426] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[   15.202859] gre: GRE over IPv4 demultiplexor driver
[   15.208853] ip_gre: GRE over IPv4 tunneling driver
[   15.225929] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
[   15.239306] NFS: Registering the id_resolver key type
[   15.244375] Key type id_resolver registered
[   15.248651] Key type id_legacy registered
[   15.284067] cryptodev: driver 1.12 loaded.
[   15.289573] GACT probability on
[   15.293632] Mirror/redirect action on
[   15.302071] u32 classifier
[   15.304784]     input device check on
[   15.308494]     Actions configured
[   15.317514] ntfs3: Max link count 4000
[   15.321266] ntfs3: Enabled Linux POSIX ACLs support
[   15.329024] fuse: init (API version 7.34)
[   15.335341] crypto-safexcel 10320000.crypto: EIP97:230(0,1,4,4)-HIA:270(0,5,5),PE:150/433(alg:7fcdfc00)/0/0/0
[   15.352902] usbcore: registered new interface driver cdc_acm
[   15.358599] cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
[   15.368325] usbcore: registered new interface driver cdc_wdm
[   15.374635] Loading modules backported from Linux version v6.1.24-0-g0102425ac76b
[   15.382148] Backport generated by backports.git v5.15.92-1-44-gd6ea70fafd36
[   15.391116] hso: drivers/net/usb/hso.c: Option Wireless
[   15.396500] usbcore: registered new interface driver hso
[   15.404261] usbcore: registered new interface driver ipheth
[   15.414008] usbcore: registered new interface driver kaweth
[   15.607625] pegasus: Pegasus/Pegasus II USB Ethernet driver
[   15.613276] usbcore: registered new interface driver pegasus
[   15.622050] usbcore: registered new interface driver r8152
[   15.629012] usbcore: registered new interface driver rtl8150
[   15.641044] usbcore: registered new interface driver ums-alauda
[   15.648434] usbcore: registered new interface driver ums-cypress
[   15.655724] usbcore: registered new interface driver ums-datafab
[   15.662913] usbcore: registered new interface driver ums-freecom
[   15.670136] usbcore: registered new interface driver ums-isd200
[   15.677506] usbcore: registered new interface driver ums-jumpshot
[   15.685000] usbcore: registered new interface driver ums-karma
[   15.692305] usbcore: registered new interface driver ums-sddr09
[   15.699505] usbcore: registered new interface driver ums-sddr55
[   15.706842] usbcore: registered new interface driver ums-usbat
[   15.714429] usbcore: registered new interface driver usblp
[   15.726201] usbcore: registered new interface driver usbserial_generic
[   15.732784] usbserial: USB Serial support registered for generic
[   15.767320] xt_time: kernel timezone is -0000
[   15.773349] usbcore: registered new interface driver asix
[   15.780350] usbcore: registered new interface driver ax88179_178a
[   15.787672] usbcore: registered new interface driver cdc_eem
[   15.795131] usbcore: registered new interface driver cdc_ether
[   15.803474] usbcore: registered new interface driver cdc_ncm
[   15.810482] usbcore: registered new interface driver cdc_subset
[   15.832572] usbcore: registered new interface driver huawei_cdc_ncm
[   15.841465] usbcore: registered new interface driver kalmia
[   15.880412] mt798x-wmac 18000000.wmac: attaching wed device 0 version 2
[   15.924503] platform 15010000.wed: MTK WED WO Firmware Version: DEV_000000, Build Time: 20221012175005
[   15.933865] platform 15010000.wed: MTK WED WO Chip ID 00 Region 3
[   16.521794] mt798x-wmac 18000000.wmac: HW/SW Version: 0x8a108a10, Build Time: 20221012174648a
[   16.521794] 
[   16.628049] mt798x-wmac 18000000.wmac: WM Firmware Version: ____000000, Build Time: 20221012174725
[   16.669532] mt798x-wmac 18000000.wmac: WA Firmware Version: DEV_000000, Build Time: 20221012174937
[   16.816254] mt798x-wmac 18000000.wmac: eeprom load fail, use default bin
[   20.641501] usbcore: registered new interface driver plusb
[   20.648868] PPP generic driver version 2.4.2
[   20.654053] PPP MPPE Compression module registered
[   20.659958] NET: Registered PF_PPPOX protocol family
[   20.665828] PPTP driver version 0.8.5
[   20.671290] usbcore: registered new interface driver qmi_wwan
[   20.678713] usbcore: registered new interface driver rndis_host
[   20.685933] usbcore: registered new interface driver sierra_net
[   20.696447] usbcore: registered new interface driver snd-usb-audio
[   20.706625] wireguard: WireGuard 1.0.0 loaded. See www.wireguard.com for information.
[   20.714449] wireguard: Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
[   20.726450] usbcore: registered new interface driver cdc_mbim
[   20.734181] l2tp_ppp: PPPoL2TP kernel driver, V2.0
[   20.740276] usbcore: registered new interface driver option
[   20.745926] usbserial: USB Serial support registered for GSM modem (1-port)
[   20.886675] kmodloader: 1 module could not be probed
[   20.891737] kmodloader: - oaf - 0
[   24.823050] mtk_soc_eth 15100000.ethernet eth0: Link is Down
[   24.872624] mtk_soc_eth 15100000.ethernet eth0: configuring for fixed/2500base-x link mode
[   24.881372] mtk_soc_eth 15100000.ethernet eth0: Link is Up - 2.5Gbps/Full - flow control rx/tx
[   24.882028] device eth0 entered promiscuous mode
[   24.895197] mt7530 mdio-bus:1f lan0: configuring for phy/gmii link mode
[   24.904844] br-lan: port 1(lan0) entered blocking state
[   24.910133] br-lan: port 1(lan0) entered disabled state
[   24.916901] device lan0 entered promiscuous mode
[   24.923810] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   25.029968] mt7530 mdio-bus:1f lan1: configuring for phy/gmii link mode
[   25.039973] br-lan: port 2(lan1) entered blocking state
[   25.045202] br-lan: port 2(lan1) entered disabled state
[   25.052120] device lan1 entered promiscuous mode
[   25.060723] mt7530 mdio-bus:1f lan2: configuring for phy/gmii link mode
[   25.070290] br-lan: port 3(lan2) entered blocking state
[   25.075523] br-lan: port 3(lan2) entered disabled state
[   25.082659] device lan2 entered promiscuous mode
[   25.091183] mt7530 mdio-bus:1f lan3: configuring for phy/gmii link mode
[   25.100735] br-lan: port 4(lan3) entered blocking state
[   25.106020] br-lan: port 4(lan3) entered disabled state
[   25.113490] device lan3 entered promiscuous mode
[   25.122066] mt7530 mdio-bus:1f lan4: configuring for phy/2500base-x link mode
[   25.176805] br-lan: port 5(lan4) entered blocking state
[   25.182038] br-lan: port 5(lan4) entered disabled state
[   25.189754] device lan4 entered promiscuous mode
[   25.466168] mtk_soc_eth 15100000.ethernet eth1: PHY [mdio-bus:01] driver [RTL8221B-VB-CG 2.5Gbps PHY] (irq=62)
[   25.476489] mtk_soc_eth 15100000.ethernet eth1: configuring for phy/2500base-x link mode
[   26.844917] br-lan: port 6(wlan1) entered blocking state
[   26.850322] br-lan: port 6(wlan1) entered disabled state
[   26.855812] device wlan1 entered promiscuous mode
[   26.860638] br-lan: port 6(wlan1) entered blocking state
[   26.865934] br-lan: port 6(wlan1) entered forwarding state
[   26.872021] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
[   26.976205] br-lan: port 6(wlan1) entered disabled state
[   27.605653] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
[   27.612242] br-lan: port 6(wlan1) entered blocking state
[   27.617572] br-lan: port 6(wlan1) entered forwarding state
[   28.071367] br-lan: port 7(wlan0) entered blocking state
[   28.076705] br-lan: port 7(wlan0) entered disabled state
[   28.082187] device wlan0 entered promiscuous mode
[   28.087019] br-lan: port 7(wlan0) entered blocking state
[   28.092322] br-lan: port 7(wlan0) entered forwarding state
[   28.099461] br-lan: port 7(wlan0) entered disabled state
[   28.191672] mtk_soc_eth 15100000.ethernet eth1: Link is Up - 2.5Gbps/Full - flow control rx/tx
[   28.200336] IPv6: ADDRCONF(NETDEV_CHANGE): eth1: link becomes ready
[   30.105673] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   30.112251] br-lan: port 7(wlan0) entered blocking state
[   30.117604] br-lan: port 7(wlan0) entered forwarding state
[   41.558180] init oaf sysctl...ok
[   53.727562] NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 state recovery directory
[   53.735406] NFSD: Using legacy client tracking operations.
[   53.740886] NFSD: starting 10-second grace period (net f0000000)
[ 2443.470361] process 'usr/share/koolproxy/koolproxy' started with executable stack
```
