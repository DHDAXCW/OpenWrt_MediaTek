# This is free DHDAXCW, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI for sysupgrade
LUCI_DEPENDS:=+luci-base
PKG_MAINTAINER:=GaryPang <xiaoqi636322@gmail.com>

define Package/luci-theme-edge/postinst
  #!/bin/sh
  rm -Rf /var/luci-*cache*
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call DHDAXCW - OpenWrt buildroot signature
