#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

# Add a feed source
echo 'src-git ssrpack https://github.com/maxlicheng/luci-app-ssr-plus.git' >>feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
#echo 'src-git smpackage https://github.com/kenzok8/small-package' >> feeds.conf.default
#echo 'src-git smopenwrt https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
#echo 'src-git sm https://github.com/kenzok8/small' >> feeds.conf.default
#2a6d68f3ded425efc0850296e7f62d53
