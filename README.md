# 中文简体 | [English](https://github.com/DHDAXCW/NanoPi-R4S-2021/blob/main/EngLish.md) <img src="https://img.shields.io/github/downloads/DHDAXCW/NanoPi-R4S-R4SE/total.svg?style=for-the-badge&color=32C955"/>
# NanoPi-R4S-R4SE
# 机场推荐 [ENET--IEPL内网专线接入](https://www.easy2023.com/#/register?code=Ut7iWMrk)
## 👉使用本固件前，请严格遵守国家互联网使用相关法律规定,不要违反国家法律规定！👈
## 未经许可不得用于任何商用用途。
### 源代码地址
- lede https://github.com/DHDAXCW/lede-rockchip
- Luci https://github.com/DHDAXCW/luci
- packages https://github.com/DHDAXCW/packages

### 固件分类 在[releases](https://github.com/DHDAXCW/NanoPi-R4S-2021/releases)有备注关键词
- 正式版：全插件啥都有
- 稳定版：日常使用插件
- docker版：全插件+docker
- 乞丐版：只含代理，其他没有
- 风扇链接 [点击进入](https://s.click.taobao.com/t?e=m%3D2%26s%3Dd8Ack0Lbx8McQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XJRAdhuF14FMXpyNmcFd6mT8sviUM61dt2T0mcOGN1M6FAj1gqltKaEfKzCcEr0EW0YuhTK3FPxiHMT7yc3NZrQKSOkJV8harV3phaPbavinqGCwVfdcN0wcSpj5qSCmbA%3D)  建议用这种风扇

### 固件格式
- **ext4:** 固件文件名中带有 ext4 字样的文件为搭载 ext4 文件系统固件ext4 格式的固件更适合熟悉 Linux 系统的用户使用，在 Linux 下可以比较方便地调整 ext4 分区的大小;
- **squashfs:** 固件文件名中带有 squashfs 字样的文件为搭载 squashfs 文件系统固件而 squashfs 格式的固件适用于“不折腾” 的用户，其优点是可以比较方便地进行系统还原哪怕你一不小心玩坏固件，只要还能进入控制面板或 SSH就可以很方便地进行“系统还原操作”。

### 注：不要用恢复备份。。不保证某个插件是否正常运行。。。建议重新设置贼好！

### 默认编译  

- 用户名：root 密码：password  管理IP：192.168.11.1
- 下载地址：https://github.com/DHDAXCW/NanoPi-R4S-R4SE/releases
- x86_64固件下载 https://github.com/DHDAXCW/OpenWRT_x86_x64/releases
- 关于r4se刷机方法请参考dn2刷机 https://github.com/DHDAXCW/DoorNet-1-2/blob/mere/emmc.md
- 电报群：https://t.me/DHDAXCW

### 该升级支持4G版，1G版
- 多版本在里面，自己选 👇ok 
```
wget https://raw.githubusercontent.com/lone-wind/scripts/main/onlineupdate.sh && sh onlineupdate.sh
```

# 插件展示
 
 ![image](https://user-images.githubusercontent.com/74764072/183227361-e8bdb023-5514-437d-97e8-e13ca4285035.png)
 
### AES跑分
 ![image](https://user-images.githubusercontent.com/74764072/183227382-7dd4c7e9-b2b4-4471-b867-3963bdd6c7a2.png)
### HTOP
 ![image](https://user-images.githubusercontent.com/74764072/183227388-8a51ed5f-282b-4154-9be2-3abe26387dd7.png)

# [赏个鸡腿吧](https://afdian.net/@dhdaxcw/plan)
### https://afdian.net/@dhdaxcw/plan

## 鸣谢

特别感谢以下项目：

Openwrt 官方项目：

<https://github.com/openwrt/openwrt>

Lean 大的 Openwrt 项目：

<https://github.com/coolsnowwolf/lede>

immortalwrt 的 OpenWrt 项目：

<https://github.com/immortalwrt/immortalwrt>

P3TERX 大佬的 Actions-OpenWrt 项目：

<https://github.com/P3TERX/Actions-OpenWrt>

SuLingGG 大佬的 Actions 编译框架 项目：

https://github.com/SuLingGG/OpenWrt-Rpi
