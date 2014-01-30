# $Id: Makefile {{! ??? 2010-02-04 23:25:21Z}} pg $

include $(TOPDIR)/rules.mk

PKG_NAME:={{name}}
PKG_VERSION:={{pkg.version}}
PKG_RELEASE:=1{{! ??? pkg.version.major ??? }}

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/{{name}}
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=4. Themes
  TITLE:={{themestrap.name}}
  DEPENDS+=+luci-theme-base
endef

define Package/{{name}}/description
   {{#themestrap.description}}{{themestrap.description}}{{^themestrap.description}}{{themestrap.name}}{{/themestrap.description}}
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/{{name}}/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	$(CP) ./luasrc/* $(1)/usr/lib/lua/luci
	$(INSTALL_DIR) $(1)/www/luci-static
	$(CP) ./htdocs//luci-static/* $(1)/luci-static
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(CP) ./root/etc/uci-defaults/* $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,{{name}}))
