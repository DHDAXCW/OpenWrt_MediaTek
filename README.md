# NanoPi R4S固件，自动编译更新插件和内核版本

### 默认编译

- 用户名：root 密码：password 管理IP：192.168.2.1

- 下载地址：https://github.com/DHDAXCW/NanoPi-R4S-2021/releases

 ![Alt text](data/2.jpg?raw=true "Title")
### 如果你觉得此项目对你有帮助，可以捐助我们，以鼓励项目能持续发展，更加完善

### DDNSTO穿透插件

- 目前编译已安装上了
- 如果还是没有的话，可以直接在软路由ttyd执行，复制👇👇👇
- ```wget https://raw.githubusercontent.com/linkease/ddnsto_all_in_one_script/master/install_ddnsto.sh&& sh install_ddnsto.sh``` 
- 然后到ttyd终端下回车后进度结束。👇
- 刷新一下就出现在服务里了。如果还没明白，可以[**看视频**](https://www.bilibili.com/video/BV1mo4y197jK)如何安装就行
- 如果在过程中遇到安装失败，可以执行备用命令安装👇
- 备用命令 ```wget https://github.com/DHDAXCW/ddnsto_all_in_one_script/releases/download/ddns/ddnsto.sh;sh ddnsto.sh```



## 基于FriendlyWRT

- 如果你们多拨，nat什么的有问题就去那边下https://github.com/DHDAXCW/FriendlyWRT-R4S

- 这个FriendlyWRT开源比较稳定。可以离线升级，东西没这里多，不过后期会增加的。我会努力的

### 关于卡刷依然存在数据，清除不掉。
- 可以用低格来解决配置残留 ，去这下载任意一个👉[**低格**](https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/tag/dge)，2g或者4g都可以。解压低格后刷上，再刷固件即可解决残留问题
- 升级或者卡刷数据依然存在，但是没变化，如果是sq格式，就先卡刷然后再按系统→备份/升级→重置，就可以变了
- ext4这个格式貌似不需要吧，直接卡刷。但是这个不能捅Reset
- 还有一件事 我的固件加了动态超频，不管热不热这是取决后台运行程序在跑什么。
- 感觉很热  就加风扇，推荐 风扇6cm×6cm，薄1cm，usb也行 或者端子线zh1.5 

# 注意！注意！注意！💀💀💀👇👇🏿👇🏾👇🏽👇🏼👇🏻

### 不要用上传固件升级，直接卡刷！卡刷！卡刷！

如果直接在上传里刷固件我可不管了，不管哪个固件，都要卡刷！

既然要这样升级，可以试试，但是不保证以后系统稳定性！
# 文件格式区别
- 固件文件名中带有 ext4 字样的文件为搭载 ext4 文件系统固件，ext4 格式的固件更适合熟悉 Linux 系统的用户使用，在 Linux 下可以比较方便地调整 ext4 分区的大小；
- 固件文件名中带有 squashfs 字样的文件为搭载 squashfs 文件系统固件，而 squashfs 格式的固件适用于 “不折腾” 的用户，其优点是可以比较方便地进行系统还原，哪怕你一不小心玩坏固件，只要还能进入控制面板或 SSH，就可以很方便地进行 “系统还原操作”。
- 固件文件名中带有 sysupgrade 字样的文件为升级 OpenWrt 所用的固件，无需解压 gz 文件，可直接在 Luci 面板中升级。(目前源码有问题，不推荐用)
- 固件文件名中带有 factory 字样的文件为全新安装 OpenWrt 所用的固件，推荐在全新安装 OpenWrt 时解压 gz 文件刷入 SD 卡或硬盘。
### 例如：

- openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-factory.img.gz 为R4S ext4 格式全新安装固件；

- openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-squashfs-sysupgrade.img.gz 为R4S squashfs 格式升级专用固件。
### 版本日志 3.12
- ARMv8 设备，新增 mbedTLS ARMv8-CE 加密扩展支持以大幅提升 AES 运算效率（约 4～10 倍），使得 Shadowsocks 等使用其加密库的软件获得巨大的性能优化。r2s引入了这个东西，r4s照样也能加（如果aes解密测试数据还是很低，请换TF卡，我和群里4人同时测试过，有的190，210，270 他们TF卡分别是8GB 16GB 64GB等。）
- 修复其他问题
- 归回dacker（过两天开始把固件分支）
### 版本日志 3.10
- 新增阿里云插件
- 归回v2ray协议
- 优化passwall完整全协议
- 优化ssr完整全协议
### 版本日志 3.9
- 移除docker （后期会加上）
- 修复内存泄漏
- 修复udp失效问题
- 其他docker相关内核和依赖全打掉,后期加上
- 修复其他问题
如果明天passwall依然不行，用第二个方案。

### 版本日志 2.22版
- 软件包扩容
- 在线升级
### 版本日志 2.22版
- 更新cpu动态调节补丁，解决在2.2GHz模式下，小核到400MHz引起死机问题（电流1A导致）
- 更新passwall顺序，再新增xray-plugin协议
- 优化config顺序
### 版本日志 2.18版

- 修复passwall和ssrp的v2ray协议

- 更新ddnsto插件

### 版本日志 2.17版

- 新增ddnsto内网穿透插件和易有云插件2.0， ddnsto与易有云都可以借助 aria2 完成远程下载 （特别感谢[**linkease**](https://github.com/linkease/ddnsto-openwrt)原作者提供源码。）

- 优化补丁中的自动调节超频

- `如果明天版本编译成功后，里面还没ddnsto内网穿透插件，那我直接放包和安装命令就行`
### 版本日志 2.15版

- 已移除CPU调节控制。因为99%的人不会调.....容易死机。恢复频率改为自动调节。

- 增加cpu核心频率和温度显示

- 更新adguardhome插件

- 优化性能

- 修复小问题

## CPU Freq 使用说明

该插件已除去了，99%的人不会调.....
### 版本日志 2.13

- 增加CPU调节控制。（已移除了）

- 由于源码自带u-boot和补丁不行，已移除，改为本地u-boot和补丁。

- 再次更新cpu超频补丁，最大A72 2.20GHz/A53 1.8GHz，最低400MHz，当前主频1.2GHz（由CPU Freq（CPU调节优化控制）不必但心发热哈）

- passwall和SSRP中的去掉v2ray协议,Xray正在取代v2ray的位置。

- 新增螃蟹网卡驱动 rtl88**BU系列

- 移除服务的v2ray服务器

### 版本日志 2.11版

- 修改错别字

- 增加螃蟹网卡驱动，rtwl8811-88**usb CU系列

### 版本日志 2.10版

- 更新补丁，解除对CPU的限制，最大A72 1.8GHz/A53 1.4GHz，最低400MHz，当前主频1.2GHz

- 优化CPU在闲置的时候频率降最低4OOMHz引起死机问题，改为闲置频率1200MHz，但不会用到最低400MHz

![Alt text](data/cpu.jpg?raw=true "Title")

### 版本日志 2.9版

- 增加cpu温度，你们想要，那就满足吧，目前动态超频不受影响

### 版本日志 2.6版

- 新增 OpenAppFilter插件 一键治疗熊孩子	

  家长对小孩上网行为进行管控，限制小孩玩游戏等	

  限制员工使用某些app， 如视频、招聘、购物、游戏、常用网站等	

  记录终端的上网记录，实时了解当前app使用情况，比如xxx正在访问抖音	

  在网络→应用过滤里

- 更新了passwall和ssrp

- 修复卡刷无法开机，再次优化	

- 修复小问题

### 版本日志 2.1号

- 新增完整语言

- 再次优化了ipv6功能

- 修复了小问题

### 版本日志 1.30号

- 新增了ipv6客户端，快速获取ipv6；

- 修复了ipv6情况下节点有时断开，提高上网质量；

- 修复了adguardhome插件无法启动问题，改为Lienol源码仓库的插件；

- 通过本地编译增加了华为拔号仿真（华为开源挖来的）提高任何协议拔号速度。

### 版本日志 1.18号

- 待机超10天无法上网,需要重启才解决（已修复）

- 再次增强DHCP稳定性，增加多种协议（已优化） 

- 优化DNS在加载情况下无法启动进后台（已增强） 

- 降级到DDNS版本，最新版有问题（已降级，不清楚没试过） 

- 再次添poeee拔号多种协议（后期提高拔号稳定） 

- 优化部分内核代码重新优化一下 

- 更新rk3399驱动（友善官网提供） 

- 更新网卡驱动 

- 修复了其他小问题

## 后续更新

