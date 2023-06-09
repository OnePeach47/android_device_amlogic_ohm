#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ohm device
$(call inherit-product, device/amlogic/ohm/device.mk)

PRODUCT_DEVICE := ohm
PRODUCT_NAME := twrp_ohm
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := ohm
PRODUCT_MANUFACTURER := amlogic

PRODUCT_GMS_CLIENTID_BASE := android-droid-tv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ohm-user 11 RTT0.210829.002 20220721 release-keys"

BUILD_FINGERPRINT := Amlogic/ohm/ohm:11/RTT0.210829.002/jiangshaohui07211918:user/release-keys
