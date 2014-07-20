ARCHS = armv7 arm64 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = Pwner
Pwner_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk


