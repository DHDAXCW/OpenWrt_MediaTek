#!/bin/sh --Created by DHDAXCW
opkg update
opkg install pv
opkg install gzip
cd /tmp
rm -rf artifact openwrt-rockchip*.img.gz openwrt-rockchip*img*
echo -e '\e[92m准备下载升级文件\e[0m'
echo `(date +%Y.%m.%d)`
wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date +%Y.%m.%d)-Lean3/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
if [ -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz	]; then
	echo -e '\e[92m当日固件已下载，准备解压\e[0m'
else
	echo -e '\e[91m当日固件暂未更新，尝试下载旧固件\e[0m'
	for t in $(seq 15)
	do {
	    echo `(date -d "@$(( $(busybox date +%s) - 86400*$t))" +%Y.%m.%d)`
	    wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400*$t))" +%Y.%m.%d)-Lean3/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
	    if [ -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz ]; then
		    echo -e '\e[92m旧版固件已下载，准备解压\e[0m'
		    break;
	    else
		    echo -e '\e[91m当前固件不存在，继续寻找前一天的固件\e[0m'
		fi
	}
	done
fi
cd /tmp
echo -e '\e[92m准备解压镜像文件\e[0m'
pv openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz | gunzip -dc > openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img
if [ -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img	]; then
	echo -e '\e[92m删除已下载文件\e[0m'
	rm -rf openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
fi
echo -e '\e[92m开始升级固件\e[0m'
sleep 3s
sysupgrade -v /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img
