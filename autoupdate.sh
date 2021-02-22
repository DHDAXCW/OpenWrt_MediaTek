#!/bin/sh --Created by DHDAXCW
opkg update
opkg install zstd
opkg install libzstd
mkdir /mnt/mmcblk0p2
cd /mnt/mmcblk0p2
rm -rf artifact openwrt-rockchip*.img.gz openwrt-rockchip*img*
wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date +%Y.%m.%d)-Lean/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz

if [ -f /mnt/mmcblk0p2/openwrt-rockchip*.img.gz	]; then
	echo -e '\e[92m今天固件已下载，准备升级\e[0m'
else
	echo -e '\e[91m今天的固件还没更新，尝试下载昨天的固件\e[0m'
	wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400))" +%Y.%m.%d)-Lean/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
	if [ -f /mnt/mmcblk0p2/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz ]; then
		echo -e '\e[92m昨天的固件已下载，准备升级\e[0m'
	else
		echo -e '\e[91m没找到最新的固件，脚本退出\e[0m'
		exit 1
	fi
fi
cd /mnt/mmcblk0p2
sysupgrade -v openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
