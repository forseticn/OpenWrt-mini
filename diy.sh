# | mosdns | passall | dockerman | ddns-go | ttyd | diskman | upnp | VHDX & VMDK | #

# 默认地址
# sed -i 's/192.168.1.1/10.0.0.3/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/10.0.0.3/g' package/base-files/buci2/files/bin/config_generate


# 清除密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

# 替换菜单
#sed -i 's/"带宽监控"/"宽带"/g' `grep "带宽监控" -rl ./`

# 更换主题
# rm -rf luci-app-argon-config
# git clone https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config

# 调整 Docker 到 服务 菜单
# sed -i 's/"admin"/"admin", "services"/g' feeds/luci/applications/luci-app-dockerman/luasrc/controller/*.lua
# sed -i 's/"admin"/"admin", "services"/g; s/admin\//admin\/services\//g' feeds/luci/applications/luci-app-dockerman/luasrc/model/cbi/dockerman/*.lua
# sed -i 's/admin\//admin\/services\//g' feeds/luci/applications/luci-app-dockerman/luasrc/view/dockerman/*.htm
# sed -i 's|admin\\|admin\\/services\\|g' feeds/luci/applications/luci-app-dockerman/luasrc/view/dockerman/container.htm

# 科学上网
# git clone --depth=1 -b main https://github.com/fw876/helloworld package/luci-app-ssr-plus
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
# git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb

# TTYD 自动登录
sed -i 's|/bin/login|/bin/login -f root|g' openwrt/feeds/packages/utils/ttyd/files/t

# 调整alist到 服务 菜单
# sed -i 's/nas/services/g; s/NAS/Services/g' openwrt/package/luci-app-alist/luasrc/controller/alist.lua
# sed -i 's/nas/services/g' openwrt/package/luci-app-alist/luasrc/view/alist/alist_status.htm

# 调整 x86 型号只显示 CPU 型号
sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/aut

# 修改 argon 为默认主题
# sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
# sed -i 's/Bootstrap theme/Argon theme/g' feeds/luci/collections/*/Makefile
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/*/Mak

./scripts/feeds update -a
./scripts/feeds install -a
