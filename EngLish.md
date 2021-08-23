# English | [中文简体](https://github.com/DHDAXCW/NanoPi-R4S-2021/blob/main/README.md)
# NanoPi-R4S-2021 The plug-in and kernel version are automatically updated every day.
## 👉Before using this firmware, please strictly abide by the laws and regulations related to the use of the Internet in the country, and do not violate the laws and regulations of the country! 👈
## Samsung TF card\Haikang TF card is strongly recommended. Even if the firmware is difficult to flash, only Samsung flashes it to boot.
### Firmware classification There are key words for remarks in [releases](https://github.com/DHDAXCW/NanoPi-R4S-2021/releases)
-The official version (including overclocking) can be selected for tossing, and the voltage must be considered. Overclocking is boosted, which will cause instability. For example, running cpu test is easy to boost and so on.
-Docker version contains Docker plug-in, which will cause udp forwarding to fail. Use it with caution, as long as you don’t open the udp of the passwall, nothing will affect the use!
-Silent frequency version Remove the overclocking patch and change it to the official default frequency, which is suitable for the needs of not tossing. It doesn't matter how much the voltage is, it's good to be stable! (Recommended) It is recommended to use the sq format for the format, which is suitable for Xiaobai. If you need to mount, choose ext4
-Lite version I don’t want to say it, but keep the helloworld passwall ssrp uu accelerator and so on. . .
### Note: Do not use to restore the backup. . There is no guarantee that a certain plug-in will work properly. . . It is recommended to reset the thief! ! !
This month I have been begging without a computer (please be in the computer~). . . A WiFi module is required, and the industrial-grade WiFi module MiniPCIe Qualcomm QCA9984 chip compex wle1216vx is tested on x86. Taobao shops are out of stock. Who has this module, please join the telegram group to find 💀Thank you
### Default compilation

-Username: root Password: password Management IP: 192.168.2.1
-Download link: https://github.com/DHDAXCW/NanoPi-R4S-2021/releases
-x86_64 firmware download https://github.com/DHDAXCW/lede/releases
###-Docker: The official version comes with docker, overclocking, and docker plug-in. (The udp requirements of passwall are very high, do not brush the docker version)
###-formal edition: official edition with overclocking
-Lite version: https://github.com/DHDAXCW/NanoPi-R2S-R4S-2021-mini/releases
-Telegram group: https://t.me/DHDAXCW
-X86 firmware: [click the link to download](https://github.com/DHDAXCW/lede/releases)
# Online upgrade
-Copy the following code and execute it in the TTYD terminal. You must not leave during the process, otherwise you have to download again. Please flash the ext4 format and upgrade tomorrow
### This upgrade only supports 4G version, 1G version does not support, please do not use this upgrade. 1G version memory tmp partition space is insufficient, unable to download the upgrade package
-There are multiple versions in it, choose by yourself 👇
```
wget https://raw.githubusercontent.com/DHDAXCW/NanoPi-R4S-2021/main/scripts/autoupdate.sh && sh autoupdate.sh
```
# Enjoy a chicken drumstick
 ![Alt ​​text](data/2.jpg?raw=true "Title")
### If you think this project is helpful to you, you can donate to us to encourage the sustainable development and perfection of the project
# Plugin display
 ![Alt ​​text](data/20.jpg?raw=true "Title")
## Tips
 -My firmware has added dynamic overclocking. Whether it is hot or not, it depends on what the background program is running.
 -If it feels very hot, add a fan. It is recommended that the fan is 6cm×6cm, thinner 1cm, USB is also OK or terminal cable zh1.5

### Update log 8.12
-Add cpu controller to facilitate frequency adjustment
-Optimized for r4s overclocking patch
-Change the kernel's optimization support for low-speed TF card
-Fix the issue of missing full passwall protocol, etc.
-Fix the compilation problem of passwall in Simple-Obfs.
-Re-optimize r4s for low-speed TF card to prevent crashing caused by starting DOCKER writing. I suggest changing to a high-speed card. . . Such as Samsung, Haikang, etc.
-Optimize multi-dial to write to the buffer in the case of low-speed cards, causing the lights to be all on. It is recommended to change to the best B high-speed card to solve the problem. .
-Remove bypass, it will kill smartdns
-Other compilation process fixes and optimizations.
