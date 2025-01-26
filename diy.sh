
# 默认地址
sed -i 's/192.168.1.1/10.0.0.3/g' package/base-files/buci2/files/bin/config_generate

# 清除密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

# 更换主题
rm -rf feeds/luci/themes/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon

# 调整 Docker 到 服务 菜单
# sed -i 's/"admin"/"admin", "services"/g' feeds/luci/applications/luci-app-dockerman/luasrc/controller/*.lua
# sed -i 's/"admin"/"admin", "services"/g; s/admin\//admin\/services\//g' feeds/luci/applications/luci-app-dockerman/luasrc/model/cbi/dockerman/*.lua
# sed -i 's/admin\//admin\/services\//g' feeds/luci/applications/luci-app-dockerman/luasrc/view/dockerman/*.htm
# sed -i 's|admin\\|admin\\/services\\|g' feeds/luci/applications/luci-app-dockerman/luasrc/view/dockerman/container.htm


# TTYD 自动登录
# sed -i 's|/bin/login|/bin/login -f root|g' openwrt/feeds/packages/utils/ttyd/files/t

# 调整alist到 服务 菜单
# sed -i 's/nas/services/g; s/NAS/Services/g' openwrt/package/luci-app-alist/luasrc/controller/alist.lua
# sed -i 's/nas/services/g' openwrt/package/luci-app-alist/luasrc/view/alist/alist_status.htm

# 调整 x86 型号只显示 CPU 型号
# sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/aut

./scripts/feeds update -a
./scripts/feeds install -a
