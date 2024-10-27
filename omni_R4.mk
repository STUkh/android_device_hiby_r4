#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from R4 device
$(call inherit-product, device/hiby/R4/device.mk)

PRODUCT_DEVICE := R4
PRODUCT_NAME := omni_R4
PRODUCT_BRAND := HiBy
PRODUCT_MODEL := R4
PRODUCT_MANUFACTURER := hiby

PRODUCT_GMS_CLIENTID_BASE := android-hiby

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="R4-user 11 RKQ1.211001.001 HiBy08051234 release-keys"

BUILD_FINGERPRINT := HiBy/R4/R4:11/RKQ1.211001.001/HiBy08051234:user/release-keys
