# NanoPi R4S固件，自动编译更新插件和内核版本
# 互换已解决了，可以正常LAN进后台
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
### 更新日志 3.28
- 解禁R4S的GPU
- 添加了 R2S/R4S 的硬件转码，可以用 Jellyfin， 1080p HEVC 10bit 60fps 无需 CPU 参与
- 更新内核 5.4.106
- 移除多线多拨，负载均衡；这两个插件移除，不会在某个情况下频繁掉线
- 再次修复R4S的一些TF卡兼容性问题（不能启动/重启死机等）
- 支持全新的 SS-RUST ，替代 SS
- UU加速器更新到 2.7.8
- 性能再提升20%
- 优化开机加载
- 优化超频稳定性
- 新增cpu优化调节器，提高网络波动稳定性（今天在编译，等6小时吧，刷上默认是内核默认的，需要手动去调一下才生效）
