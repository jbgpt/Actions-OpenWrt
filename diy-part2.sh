#!/bin/bash
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#sed -i -e "s/set system\.@system$-1$\.zonename='UTC'/set system\.@system$-1$\.timezone='CST-8'/" \
 #      -e "a\set system.@system[-1].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate# Modify default IP
#sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#sed -i '/option band.*2g.*/{s|option ssid.*|option ssid "openwrt_2G"|}' package/base-files/files/bin/config_generate
#sed -i '/option band.*5g.*/{s|option ssid.*|option ssid "openwrt_5G"|}' package/base-files/files/bin/config_generate
#sed -i '/option band.*5g.*/{s|option country.*|option country "US"|}' package/base-files/files/bin/config_generate
#sed -i '/option band.*2g.*/{s|option disabled.*|option disabled 0|}' package/base-files/files/bin/config_generate
#sed -i '/option band.*5g.*/{s|option disabled.*|option disabled 0|}' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/office-open/g' package/base-files/files/bin/config_generate

# 复制 files 到 OpenWrt 源码目录
if [ -d "$GITHUB_WORKSPACE/files" ]; then
    echo "找到 files 目录，正在复制..."
    cp -rf "$GITHUB_WORKSPACE/files" "$GITHUB_WORKSPACE/openwrt/"
else
    echo "❌ 错误：未找到 files 目录！"
    exit 1
fi

# 设置 shadow 文件权限（确保安全）
#chmod 600 "$GITHUB_WORKSPACE/openwrt/files/etc/shadow"

echo "DIY2: 系统配置已预置（时区、IP、WiFi）"
