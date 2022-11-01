# 中文简体 | [English](https://github.com/DHDAXCW/NanoPi-R4S-2021/blob/main/EngLish.md) <img src="https://img.shields.io/github/downloads/DHDAXCW/NanoPi-R4S-R4SE/total.svg?style=for-the-badge&color=32C955"/>
# NanoPi-R4S-R4SE
# 机场推荐 [ENET--IEPL内网专线接入](https://www.easy2022.com/#/register?code=Ut7iWMrk)
## 👉使用本固件前，请严格遵守国家互联网使用相关法律规定,不要违反国家法律规定！👈

### 固件分类 在[releases](https://github.com/DHDAXCW/NanoPi-R4S-2021/releases)有备注关键词
- 正式版：全插件啥都有
- 稳定版：日常使用插件
- docker版：全插件+docker
- 乞丐版：只含代理，其他没有
- 风扇链接 [点击进入](https://s.click.taobao.com/t?e=m%3D2%26s%3Dd8Ack0Lbx8McQipKwQzePOeEDrYVVa64LKpWJ%2Bin0XJRAdhuF14FMXpyNmcFd6mT8sviUM61dt2T0mcOGN1M6FAj1gqltKaEfKzCcEr0EW0YuhTK3FPxiHMT7yc3NZrQKSOkJV8harV3phaPbavinqGCwVfdcN0wcSpj5qSCmbA%3D)  建议用这种风扇

### 注：不要用恢复备份。。不保证某个插件是否正常运行。。。建议重新设置贼好！

### 默认编译  

- 用户名：root 密码：password  管理IP：192.168.11.1
- 下载地址：https://github.com/DHDAXCW/NanoPi-R4S-R4SE/releases
- x86_64固件下载 https://github.com/DHDAXCW/OpenWRT_x86_x64/releases
- 关于r4se刷机方法请参考dn2刷机 https://github.com/DHDAXCW/DoorNet2/blob/main/emmc.md
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

请不要fork我项目，因为yml文件中已托管到我本地服务器，目的是为了加速编译。
如果想fork自己编译，那就请到yml文件中修改下面
```bash
23行 runs-on: self-hosted 改为 runs-on: ubuntu-20.04
185行 runs-on: self-hosted 改为 runs-on: ubuntu-20.04
```
另外，如果改上面的，那还要改编译线程，我默认是-j72
改好就可以用github的机器编译了

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
