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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Inherit from lettuce device
$(call inherit-product, device/yu/lettuce/device.mk)

# Inherit System Properties
$(call inherit-product, device/yu/lettuce/system_prop.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_lettuce
PRODUCT_DEVICE := lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := Yuphoria
PRODUCT_MANUFACTURER := YU

TARGET_VENDOR_PRODUCT_NAME := lettuce
TARGET_VENDOR_DEVICE_NAME := lettuce

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-micromax    

BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200605.001/6392402:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=$(BUILD_FINGERPRINT) \
	BUILD_VERSION_SECURITY_PATCH=2020-06-05 \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200605.001 6392402 release-keys"
