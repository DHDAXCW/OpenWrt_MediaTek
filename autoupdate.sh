#!/bin/sh --Created by DHDAXCW
opkg update
cd /tmp/upload
rm -rf /tmp/upload/openwrt-rockchip*.img.gz sha256sums
wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date +%Y.%m.%d)-Lean/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date +%Y.%m.%d)-Lean/sha256sums
if [ -f /tmp/upload/openwrt-rockchip*.img.gz	]; then
	echo -e '\e[92m今天固件已下载，准备升级\e[0m'
else
	echo -e '\e[91m今天的固件还没更新，尝试下载昨天的固件\e[0m'
	wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400))" +%Y.%m.%d)-Lean/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
	wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400))" +%Y.%m.%d)-Lean/sha256sums
	if [ -f /tmp/upload/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz ]; then
		echo -e '\e[92m昨天的固件已下载，准备升级\e[0m'
	else
		echo -e '\e[91m没找到最新的固件，脚本退出\e[0m'
		exit 1
	fi
fi
cd /tmp/upload
sha256sum -c sha256sums 2> /dev/null | grep OK
--sysupgrade -v openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
