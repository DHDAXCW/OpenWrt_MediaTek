# EMMC/[SD卡](https://github.com/DHDAXCW/DoorNet2/blob/main/emmc.md#%E9%80%9A%E8%BF%87sdtf-u%E7%9B%98%E5%88%B7%E6%9C%BA%E6%96%B9%E6%B3%95%E7%B1%BB%E4%BC%BC%E6%96%90%E8%AE%AFn1%E7%9B%92%E5%AD%90%E9%87%87%E7%94%A8dd%E5%91%BD%E4%BB%A4%E7%83%A7%E5%BD%95%E8%BF%9B%E5%8E%BB%E6%AD%A4%E4%BB%85%E4%BE%9B%E5%8F%82%E8%80%83%E5%B0%8F%E7%99%BD%E4%B8%8D%E8%A6%81%E7%94%A8)刷机方法

- 通过EMMC启动和通过SD卡启动的过程不尽相同，在接下来的文档中，我们将对两种启动方式做详细说明。

### 前言
- DoorNet2在板载EMMC的同时，还留有microSD卡槽，这使得我们既可以从EMMC启动系统， 也可以从microSD卡中启动系统。
- 由于EMMC性能稳定，不会出现兼容性问题，读写速度也要比SD卡快得多， 所以我们建议用户优先将镜像烧写到EMMC中运行。
- 在NanoPi-R4S、NanoPi-R2S、DoorNet1等用户使用过程中遇到的问题，大多都是由使用不兼容的SD卡造成的。 如无法烧写镜像、烧写镜像后无法启动、长时间运行后系统崩溃等问题。
- 为了解决用户的痛点，野火推出了板载EMMC的DoorNet2，在提升稳定性的同时， EMMC具有更高的读写速度，可以带来更快的启动速度和更流畅的系统体验。

## 通过EMMC启动

### 准备工作

           👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇
- 👉👉👉[点击蓝色--看刷机教程一下，再操作！！！！](https://www.bilibili.com/video/BV133411n7oq)👈👈👈

       👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆👆
- 访问下载地址，同时提供了系统镜像和烧录工具，下载烧录工具和相应的系统镜像：
- 双公头USB线一根，用于在PC和DoorNet2之间传输数据
- 驱动程序：[DriverAssitant_v5.1.1](https://github.com/DHDAXCW/DHDAXCW/releases/download/doornet2/DriverAssitant_v5.1.1.zip)  仅支持Windows11以下，不支持Mac SO
- 烧录软件：[RKDevTool_Release_v2.84](https://github.com/DHDAXCW/DHDAXCW/releases/download/doornet2/RKDevTool_Release_v2.84-by-DHDAXCW.zip) 不支持Mac SO
- 烧录软件内置提供：rk3399-MiniLoaderAll.bin
- 下载固件：[Doornet2](https://github.com/DHDAXCW/DoorNet2/releases)

### 安装驱动
- 下载驱动程序：[DriverAssitant_v5.1.1](https://github.com/DHDAXCW/DHDAXCW/releases/download/doornet2/DriverAssitant_v5.1.1.zip) 使用压缩工具解压 DriverAssitant_v5.1.1.zip 到任意路径下
![image](https://user-images.githubusercontent.com/74764072/142338731-792e8862-8d9f-4b20-b155-84a4cd95b570.png)
- 鼠标双击 DriverInstall.exe 安装驱动程序
![image](https://user-images.githubusercontent.com/74764072/142338773-d6a2f9e7-2b73-481d-836d-32dc10415bd0.png)
（如果以前安装过旧版本的驱动，先点击驱动卸载，卸载旧版本的驱动程序。若未安装过可以忽略这一步骤。）
- 点击驱动安装，安装驱动程序。弹出驱动安装成功的界面，点击确定完成驱动安装。
![image](https://user-images.githubusercontent.com/74764072/142338797-fc6dc321-8983-4731-b3ba-6aa4efcf224a.png)

### 安装烧录工具
- 下载烧录软件：[RKDevTool_Release_v2.84-by-DHDAXCW](https://github.com/DHDAXCW/DHDAXCW/releases/download/doornet2/RKDevTool_Release_v2.84-by-DHDAXCW.zip)，使用压缩工具解压 RKDevTool_Release_v2.84.zip 到任意路径下，由于烧录工具是无需安装的，解压完成即可
![image](https://user-images.githubusercontent.com/74764072/142338832-332474a3-f4c8-4331-a586-9f3c139a30a0.png)
- 由于下载的镜像是经过压缩的,我们需要将镜像解压缩成img格式才能让烧录软件识别
- 下载固件[Doornet2](https://github.com/DHDAXCW/DoorNet2/releases)  我们将 openwrt-embedfire_doornet2-ext4-2021xxxx.img.gz 下载并解压为img格式。
- 然后打开我们的烧录工具，观察红框内的内容是否如图中所示。
![image](https://user-images.githubusercontent.com/74764072/142338887-cf0b4e6e-e3f6-4641-b1c1-e084252b34ef.png)
- 点击图中的位置,选择刚下载的[MiniLoaderAll-DN2.bin](https://github.com/DHDAXCW/DHDAXCW/releases/download/doornet2/MiniLoaderAll-DN2.bin)文件，然后打开。
![image](https://user-images.githubusercontent.com/74764072/142338916-ab804a68-b1b5-4353-9535-9887ac74ba3e.png)
- system文件的路径配置方法也相同，我们选择刚刚解压的img镜像。
- 接着我们用双公头的USB线连接电脑和DoorNet2，一头插电脑的USB口，一头插DoorNet2下侧的USB口。
- 先按下Flash(F 是灯前面的F，找针桶，不要像麒麟臂一样桶。。。)按键，然后上电接通DoorNet2的电源，等待烧录软件识别。 当提示 发现一个MASKROM设备 时，松开按键。
- 还不懂？简单操作：桶前面F按键，然后上电，发现一个MASKROM设备 时，松开按键。
![image](https://user-images.githubusercontent.com/74764072/142338962-d7573171-6701-495b-a8d8-2e3b844e8e5e.png)
- 然后执行写入设备中
- 镜像下载完成之后DoorNet2会自动启动，绿色系统状态灯开始闪烁，说明系统正在启动。等待系统状态灯常亮时，操作系统完成启动。

### 推荐方法进入maskrom模式
- 终端TTYD命令
- ```dd if=/dev/zero of=/dev/mmcblk0 bs=8M count=1``` 
- 然后```reboot```，10秒后，拔电，上电ok 然后软件就识别maskrom模式 

## 通过SD/TF U盘刷机方法，类似斐讯N1盒子采用dd命令烧录进去（此仅供参考，小白不要用！！！）
- 将U盘或者格式化为FAT32格式
- 下载固件解压是img格式，复制到U盘根目录下，插dn2上开机
- web后台--系统--挂载--打勾自动挂载未配置的磁盘分区--应用保存  如图：
![image](https://user-images.githubusercontent.com/74764072/158067110-054bc73d-6fd0-423e-9c8e-2ac5cddda458.png)
- 然后终端（ttyd）输入账号和密码
- U盘：命令 `dd if=/mnt/sda1/openwrt-rockchip-armv8-embedfire_doornet2-ext4-sysupgrade.img of=/dev/mmcblk0 bs=1M conv=sync status=progress`
- SD/TF卡：命令 `dd if=/mnt/mmcblk1p1/openwrt-rockchip-armv8-embedfire_doornet2-ext4-sysupgrade.img of=/dev/mmcblk0 bs=1M conv=sync status=progress`
- 写入完成后建议执行 sync 结束后拔了电源 U盘和tf卡。切记！！不要重启！！直接拔了电源就行
- 以上方法是U盘刷机的，也可以tf，格式化跟上面一样。有的插u盘路径不一定是sda1或者sda2
## 清除idbloader，破坏emmc分区，改为sd启动
- DoorNet2更改SD/TF启动方法：终端命令 dd if=/dev/zero of=/dev/mmcblk0 bs=8M count=1  然后reboot，10秒后，拔电，插sd卡上电，就从sd卡启动了。
### 问题收集
- 如果在下载过程中提示下载Boot失败，可以断开所有DoorNet2上的连接线，重试尝试进入MASKROM模式下载。
- 如果上电后超过十秒仍然无法识别，可以移除电源和USB的连接，然后重试上一步操作。
- 多次尝试后仍然无法成功的，请检查USB线缆、更换电脑USB接口、卸载并重装驱动。
- 能正常识别到MASKROM设备之后，我们可以点击执行按钮下载镜像。耐心等待镜像下载完成。
- 初次启动初始化时间较长，约为2到3分钟，请耐心等待。
- 驱动助手安装失败，此驱动支持Windows10以下，Mac SO Windows11不支持
- 如果boot下载失败，请重新下载MiniLoaderAll-DN2.bin再刷入，如果失败，建议重启电脑即可。
- emmc分区清了，开机上电检测不到boot就自动进maskrom模式，如果卡刷系统，侧从sd启动系统

