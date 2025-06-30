#!/bin/bash

# 添加额外软件包
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/pymumu/smartdns.git package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/AdguardTeam/AdGuardHome.git package/AdGuardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# 修改默认IP为192.168.50.1
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

