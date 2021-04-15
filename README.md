# NanoPi R4S固件，自动编译更新插件和内核版本
# 这明天估计延迟更新了，今天我笔记本开虚拟机编译固件突然灭屏，没法开机。。可能是长期用笔记本用废。。没别的电脑了。我会尽量适应手机更新固件和修复BUG。（慢慢适应手机上github就好了😭）
## 强烈推荐三星TF卡，哪怕是很难刷上的固件，三星都可以刷

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
### 例如：6

- openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-factory.img.gz 为R4S ext4 格式全新安装固件；

- openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-squashfs-sysupgrade.img.gz 为R4S squashfs 格式升级专用固件。
### 更新日志 4.11
- 修复passwall**几部分协议**无法使用问题
- 对我项目passwall的config重构一下
### 更新日志 4.9
- 修复断网异常
- 修复后台崩溃
- 修复在下载pt或者游戏的时候，12小时内必断网（代码改为我本地镜像，防止炒作）
- 优化性能，改为平衡模式，移除CPU优化调节器（用着必死机）
- 优化其他启动速度
- 今天最后一个版本了，下个版本，还要等我有电脑才可以。✘他小气不给借个电脑给我用用...
- 感谢大家长期以来支持，谢谢哦，江湖有缘再会👊🏻
### 更新日志 4.6
- 新增qbittorrent插件，提高种子下载方便
- 修复实时监控改中文时，系统日志满都是报错问题。
- 更新内核 5.4.109
- 再增强10%性能
- 优化其他问题
- 关于无法写入缓存，建议换三星卡，随便折腾都好好的
### 更新日志 4.3
-  新增cpu优化调节器（CPU Freq），提高网络波动稳定性（后期加上）需要手动去调才生效。系统→CPU Freq
-  新增cpu限制。利用cpulimit限制应用程序的CPU使用率。系统→cpu限制
-  将实时监控改为中文，日志报错别管他就行了，不影响使用
-  内核更新到 5.4.108
### 更新日志 4.2
- 修复所有网卡驱动失效问题
- 归回smartdns插件
- 新增百度网盘（BaiduPCSweb）插件
- 优化一些问题
- 移除垃圾源
- 修复昨天版本有问题，科学上网会时断
### 更新日志 3.28
- 解禁R4S的GPU
- 添加了 R2S/R4S 的硬件转码，可以用 Jellyfin， 1080p HEVC 10bit 60fps 无需 CPU 参与.如何使用？R4S→服务→Docker→容器→新建→第一个蓝色按钮输入命令，下面全复制到输入命令框里，然后点击提交。等他进度完了，再去容器里打勾启用它，再点端口那个，随便一个就进去了，剩下自己搞吧。。。
``` 
docker run -d --name jellyfin
-v /mnt/sda/video:/video
-p 8096:8096
-p 8920:8920
--user 1000:1000
--device /dev/dri/renderD128:/dev/dri/renderD128
--device /dev/dri/card0:/dev/dri/card0
--restart unless-stopped
jellyfin/jellyfin 
```
- 更新内核 5.4.106
- 移除多线多拨，负载均衡；这两个插件移除，不会在某个情况下频繁掉线
- 再次修复R4S的一些TF卡兼容性问题（不能启动/重启死机等）
- 支持全新的 SS-RUST ，替代 SS
- UU加速器更新到 2.7.8
- 性能再提升20%
- 优化开机加载
- 优化超频稳定性
- 新增cpu优化调节器，提高网络波动稳定性（后期加上）
