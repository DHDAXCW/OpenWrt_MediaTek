#!/bin/bash

# Add luci-app-ssr-plus
pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
popd

# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr

# Add mentohust & luci-app-mentohust
git clone --depth=1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth=1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk

# Add minieap & luci-proto-minieap
git clone --depth=1 https://github.com/ysc3839/luci-proto-minieap
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ntlf9t/minieap

# Add luci-app-netdata
rm -rf ../lean/luci-app-netdata
svn co https://github.com/281677160/openwrt-package/trunk/luci-app-netdata

# Add ServerChan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-app-onliner (need luci-app-nlbwmon)
git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner

# Add luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/adguardhome

# Add luci-app-diskman
git clone --depth=1 https://github.com/SuLingGG/luci-app-diskman
mkdir parted
cp luci-app-diskman/Parted.Makefile parted/Makefile

# Add luci-app-dockerman
rm -rf ../lean/luci-app-docker
git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker

# Add luci-app-gowebdav
git clone --depth=1 https://github.com/immortalwrt/openwrt-gowebdav

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
rm -rf ../lean/luci-theme-argon

# Add tmate
git clone --depth=1 https://github.com/immortalwrt/openwrt-tmate

# Add subconverter
git clone --depth=1 https://github.com/tindy2013/openwrt-subconverter

# Add gotop
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/gotop

# Add smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt ../smartdns
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ntlf9t/luci-app-smartdns ../luci-app-smartdns

# Add cpulimit
svn co https://github.com/281677160/openwrt-package/trunk/luci-app-cpulimit

# Add CPU cpufreq
svn co https://github.com/immortalwrt/immortalwrt/branches/master/package/lean/luci-app-cpufreq

# Add luci-udptools
git clone --depth=1 https://github.com/zcy85611/openwrt-luci-kcp-udp

# Add luci-app-wireguard
svn co https://github.com/openwrt/luci/trunk/applications/luci-app-wireguard

# Add OpenAppFilter
git clone --depth=1 https://github.com/destan19/OpenAppFilter
popd

# Add CPUInfo
#pushd feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status
#sed -i '/Load Average/i\\t\t<tr><td width="33%"><%:CPU Temperature%></td><td><%=luci.sys.exec("cut -c1-2 /sys/class/thermal/thermal_zone0/temp")%><span>&#8451;</span></td></tr>' index.htm
#sed -i '/Load Average/i\\t\t<tr><td width="33%"><%:欢迎订阅 Youbube 频道%></td><td><a href="https://www.youtube.com"><%:YOURENAME%></a></td></tr>' index.htm
#sed -i 's/pcdata(boardinfo.system or "?")/"ARMv8"/' index.htm
#sed -i 's/<%=luci.sys.exec("cat \/etc\/bench.log") or " "%>//' index.htm
#sed -i 's|pcdata(boardinfo.system or "?")|luci.sys.exec("uname -m") or "?"|g' index.htm
#sed -i 's/or "1"%>/or "1"%> ( <%=luci.sys.exec("expr `cat \/sys\/class\/thermal\/thermal_zone0\/temp` \/ 1000") or "?"%> \&#8451; ) /g' index.htm
#popd

# Add luci-app-ddnsto
pushd package/network/services
git clone --depth=1 https://github.com/linkease/ddnsto-openwrt
popd

# Add luci-app-linkease
pushd package/network/services
git clone --depth=1 https://github.com/linkease/linkease-openwrt
popd

# Add Pandownload
pushd package/lean
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lean/pandownload-fake-server
popd

# Add driver for rtl8821cu & rtl8812au-ac
pushd package/lean
svn co https://github.com/immortalwrt/immortalwrt/branches/master/package/ctcgfw/rtl8812au-ac
svn co https://github.com/immortalwrt/immortalwrt/branches/master/package/ctcgfw/rtl8821cu
popd

# Add rtl88x2bu
pushd package/lean
svn co https://github.com/immortalwrt/immortalwrt/branches/master/package/ctcgfw/rtl88x2bu
popd

# Mod zzz-default-settings
pushd package/lean/default-settings/files
sed -i '/http/d' zzz-default-settings
export orig_version="$(cat "zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')"
sed -i "s/${orig_version}/${orig_version} ($(date +"%Y.%m.%d"))/g" zzz-default-settings
popd

# Fix libssh
pushd feeds/packages/libs
rm -rf libssh
svn co https://github.com/openwrt/packages/trunk/libs/libssh
popd

# Use Lienol's https-dns-proxy package
pushd feeds/packages/net
rm -rf https-dns-proxy
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
popd

# Use snapshots syncthing package
pushd feeds/packages/utils
rm -rf syncthing
svn co https://github.com/openwrt/packages/trunk/utils/syncthing
popd

# Fix mt76 wireless driver
pushd package/kernel/mt76
sed -i '/mt7662u_rom_patch.bin/a\\techo mt76-usb disable_usb_sg=1 > $\(1\)\/etc\/modules.d\/mt76-usb' Makefile
popd

# Add po2lmo
git clone https://github.com/openwrt-dev/po2lmo.git
pushd po2lmo
make && sudo make install
popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Custom configs
git am $GITHUB_WORKSPACE/patches/lean/*.patch
echo -e " DHDAXCW's OpenWrt built on "$(date +%Y.%m.%d)"\n -----------------------------------------------------" >> package/base-files/files/etc/banner

# Add CUPInfo
pushd package/lean/autocore/files/arm/sbin
cp -f $GITHUB_WORKSPACE/scripts/cpuinfo cpuinfo
popd
