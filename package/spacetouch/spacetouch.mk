################################################################################
#
# spacetouch
#
################################################################################

SPACETOUCH_VERSION = e87bf736228fe4424acf3419486dd1a04160efdf
SPACETOUCH_SITE = $(call github,linux4sam,spacetouch,$(SPACETOUCH_VERSION))
SPACETOUCH_LICENSE = Apache-2.0
SPACETOUCH_LICENSE_FILES = COPYING
SPACETOUCH_DEPENDENCIES = qt5base libplanes

define SPACETOUCH_CONFIGURE_CMDS
	cd $(@D) && $(TARGET_MAKE_ENV) $(QT5_QMAKE)
endef

define SPACETOUCH_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define SPACETOUCH_INSTALL_TARGET_CMDS
	$(MAKE) INSTALL_ROOT=$(TARGET_DIR) -C $(@D) install
endef

$(eval $(generic-package))
