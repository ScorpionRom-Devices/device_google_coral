#
# Copyright (C) 2021 The ScorpionROM Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common device stuff.
$(call inherit-product, vendor/scorpion/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/device-scorpion.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := scorpion_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 12 SQ1A.211205.008 7888514 release-keys"

BUILD_FINGERPRINT := google/coral/coral:12/SQ1A.211205.008/7888514:user/release-keys
