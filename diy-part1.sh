#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#echo 'src-git OpenAppFilter https://github.com/destan19/OpenAppFilter' >>feeds.conf.default
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
echo 'CONFIG_PACKAGE_luci-app-oaf=y' >>.config
echo 'CONFIG_PACKAGE_kmod-oaf=y' >>.config
echo 'CONFIG_PACKAGE_appfilter=y' >>.config
echo 'CONFIG_PACKAGE_luci-i18n-oaf-zh-cn=y' >>.config
