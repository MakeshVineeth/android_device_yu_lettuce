# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Inherit from lettuce device
$(call inherit-product, device/yu/lettuce/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_lettuce
PRODUCT_DEVICE := lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="YUPHORIA-user $(PLATFORM_VERSION) $(BUILD_ID) MMXMR1 release-keys" \
    BUILD_VERSION_SECURITY_PATCH=2020-05-05 \
    PRODUCT_MODEL="Pixel 3" \
    PRODUCT_NAME=blueline \
    PRODUCT_DEVICE=blueline \
    PRODUCT_BRAND=google \
    PRODUCT_MANUFACTURER=Google \
    OPA_ELIGIBLE_DEVICE=TRUE \
    PRODUCT_LOCALE="en-US" \
    PRODUCT_CPU_ABI="arm64-v8a" \
    PRODUCT_CPU_ABILIST="arm64-v8a,armeabi-v7a,armeabi" \
    PRODUCT_CPU_ABILIST32="armeabi-v7a,armeabi" \
    PRODUCT_CPU_ABILIST64="arm64-v8a" \
    LINEAGE_BUILD_VENDOR_SECURITY_PATCH=2016-05-01 \
    BUILD_FINGERPRINT=$(BUILD_FINGERPRINT) \
    SYSTEM_BUILD_FINGERPRINT=$(BUILD_FINGERPRINT) \
    VENDOR_BUILD_FINGERPRINT=$(BUILD_FINGERPRINT)

BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:$(PLATFORM_VERSION)/$(BUILD_ID)/MMXMR1:$(TARGET_BUILD_VARIANT)/release-keys

TARGET_OTA_ASSERT_DEVICE := YUPHORIA,lettuce,YU5010,YU5010A
