#!/bin/sh
opkg update
opkg install zstd
opkg install libzstd
cd /mnt/mmcblk0p2
rm -rf artifact openwrt-rockchip*.img.gz openwrt-rockchip*img*
wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date +%Y.%m.%d)-Lean/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz

if [ -f /mnt/mmcblk0p2/openwrt-rockchip*.img.gz	]; then
	echo -e '\e[92m今天固件已下载，准备解压\e[0m'
else
	echo -e '\e[91m今天的固件还没更新，尝试下载昨天的固件\e[0m'
	wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400))" +%Y.%m.%d)-Lean/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
	if [ -f /mnt/mmcblk0p2/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz ]; then
		echo -e '\e[92m昨天的固件已下载，准备解压\e[0m'
	else
		echo -e '\e[91m没找到最新的固件，脚本退出\e[0m'
		exit 1
	fi
fi
cd /mnt/mmcblk0p2
	pv /mnt/mmcblk0p2/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz | gunzip openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
	echo -e '\e[92m准备解压镜像文件\e[0m'
rm -rf openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
lodev=$(losetup -f)
mkdir /mnt/img
losetup -o 100663296 $lodev /mnt/mmcblk0p2/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img
mount $lodev /mnt/img
--echo -e '\e[92m解压已完成，准备编辑镜像文件，写入备份信息\e[0m'
--cd /mnt/img
--sysupgrade -b /mnt/img/back.tar.gz
--tar zxf back.tar.gz
--echo -e '\e[92m备份文件已经写入，移除挂载\e[0m'
--rm back.tar.gz
cd /tmp
umount /mnt/img
losetup -d $lodev
echo -e '\e[92m准备重新打包\e[0m'
zstdmt /mnt/mmcblk0p2/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img -o /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.zst
echo -e '\e[92m打包完毕，准备刷机\e[0m'
if [ -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.zst ]; then
	echo 1 > /proc/sys/kernel/sysrq
	echo u > /proc/sysrq-trigger || umount /
	pv /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.zst | zstdcat | dd of=/dev/mmcblk0 conv=fsync
	echo -e '\e[92m刷机完毕，正在重启...\e[0m'	
	echo b > /proc/sysrq-trigger
fi
