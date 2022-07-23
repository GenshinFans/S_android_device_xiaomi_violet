#
# Copyright (C) 2019-2022 The LineageOS Project
# Copyright (C) 2021-2022 Miku UI
# SPDX-License-Identifier: Apache-2.0

# Inherit some common Nyanpasu stuff.
TARGET_BOOT_ANIMATION_RES := 1080
NYANPASU_NOWPLAY := false
$(call inherit-product, vendor/nyanpasu/build/target/nekomimi.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nyanpasu_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP3A.220705.003.A1 8672226 release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_PROPERTY_OVERRIDES += ro.build.fingerprint=google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
