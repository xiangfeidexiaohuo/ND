DEBUG = 0
FINALPACKAGE = 1

TARGET := iphone:clang:latest:13.0
ARCHS = arm64 arm64e

THEOS_PACKAGE_SCHEME = rootless

INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PowerSettings

PowerSettings_FILES = $(wildcard Sources/*.swift) Sources/Tweak.S
PowerSettings_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
