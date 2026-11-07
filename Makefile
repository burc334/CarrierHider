THEOS_PACKAGE_SCHEME ?= rootless
export THEOS ?= $(HOME)/theos

TARGET = iphone:clang:latest:18.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CarrierHider
CarrierHider_FILES = Tweak.xm
CarrierHider_FRAMEWORKS = Foundation
CarrierHider_CFLAGS = -fobjc-arc -Wall -Wextra -Wno-unused-parameter
CarrierHider_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk
