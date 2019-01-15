THEOS_DEVICE_IP = 192.168.1.63
#THEOS_DEVICE_IP = local

TARGET = iphone:clang:11.2:11.0
ARCHS = arm64
FINALPACKAGE = 1



include $(THEOS)/makefiles/common.mk
# NoiCloudInSettings_FRAMEWORKS = UIKit
NoiCloudInSettings_PRIVATE_FRAMEWORKS = Preferences PreferencesUI

TWEAK_NAME = NoiCloudInSettings
NoiCloudInSettings_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences"
