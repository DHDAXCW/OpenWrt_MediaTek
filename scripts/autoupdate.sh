#!/bin/sh --Created by DHDAXCW
opkg update
opkg install pv
opkg install gzip 
opkg-key add 1035ac73cc4e59e3
rm -rf autoupdate.sh*
cd /tmp
rm -rf artifact openwrt-rockchip*.img.gz openwrt-rockchip*img* sha256sums*

echo -e '\e[92m准备下载升级文件\e[0m'
while true
do
    echo "输入对应数字选择版本或退出"
    echo "0---Exit取消"
    echo "1---Docker版"
    echo "2---Silent frequency默频版"
    echo "3---formal edition正式版"
    read -r -p "请输入数字[0-3],回车确认 " n
    case $n in
        [1]|[1])
            echo -e '\e[92m已选择Docker版本\e[0m'
            break;
            ;;
        [2]|[2])
            echo -e '\e[92m已选择Silent frequency版本\e[0m'
            break;
            ;;
        [3]|[3])
            echo -e '\e[92m已选择formal edition版本\e[0m'
            break;
            ;;
        [0]|[0])
            echo -e '\e[91m退出脚本，升级结束\e[0m'
            exit 1;
            ;;
        *)
            echo -e '\e[91m非法输入,请输入数字[0-3]\e[0m'
            ;;
    esac
done

for t in $(seq 0 14)
do {
    echo `(date -d "@$(( $(busybox date +%s) - 86400*$t))" +%Y.%m.%d)`
    wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400*$t))" +%Y.%m.%d)-Lean$n/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
    wget https://github.com/DHDAXCW/NanoPi-R4S-2021/releases/download/$(date -d "@$(( $(busybox date +%s) - 86400*$t))" +%Y.%m.%d)-Lean$n/sha256sums
    if [ -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz ]; then
        echo -e '\e[92m固件已下载\e[0m'
        echo `(date -d "@$(( $(busybox date +%s) - 86400*$t))" +%Y.%m.%d)`-Lean$n
        while true
        do
            read -r -p "是否使用此固件? [Y/N] " input
            case $input in
                [yY][eE][sS]|[yY])
                    echo "已确认"
                    break 2;
                    ;;
                [nN][oO]|[nN])
                    echo -e '\e[91m继续寻找前一天的固件\e[0m'
                    rm -rf artifact openwrt-rockchip*.img.gz openwrt-rockchip*img* sha256sums*
                    continue 2;
                    ;;
                *)
                    echo -e '\e[91m请输入[Y/N]进行确认\e[0m'
                    ;;
            esac
        done 
    else
        echo -e '\e[91m当前固件不存在，继续寻找前一天的固件\e[0m'
    fi
}
done

if [ ! -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz ]; then
    echo -e '\e[91m没有可以使用的固件，脚本结束\e[0m'
    exit;
fi
echo -e '\e[92m计算固件的sha256sum值\e[0m'
sha256sum openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
echo -e '\e[92m请检验固件是否下载完整\e[0m'
grep ext4-sysupgrade sha256sums

while true
do
    read -r -p "是否确认升级? [Y/N] " confirm
    case $confirm in
        [yY][eE][sS]|[yY])
            echo -e '\e[92m已确认升级\e[0m'
            break;
            ;;
        [nN][oO]|[nN])
            echo -e '\e[91m已退出升级\e[0m'
            exit;
            ;;
        *)
            echo -e '\e[91m请输入[Y/N]进行确认\e[0m'
            ;;
    esac
done

echo -e '\e[92m开始解压固件\e[0m'
pv openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz | gunzip -dc > openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img
if [ -f /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img	]; then
    echo -e '\e[92m删除已下载文件\e[0m'
    rm -rf openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img.gz
fi
echo -e '\e[92m开始升级固件\e[0m'
sleep 3s
sysupgrade -v /tmp/openwrt-rockchip-armv8-friendlyarm_nanopi-r4s-ext4-sysupgrade.img
