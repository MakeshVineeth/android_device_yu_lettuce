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

TARGET_USES_QCOM_BSP := true
DISABLE_EAP_PROXY := true

PRODUCT_GMS_CLIENTID_BASE := android-micromax

BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=$(BUILD_FINGERPRINT) \
	BUILD_VERSION_SECURITY_PATCH="2020-08-05" \
    VENDOR_BUILD_FINGERPRINT=$(BUILD_FINGERPRINT) \
    SYSTEM_BUILD_FINGERPRINT=$(BUILD_FINGERPRINT) \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200805.001 6578210 release-keys" \
    BUILD_TYPE=user \
    PRODUCT_NAME=YUPHORIA \
    TARGET_DEVICE=YUPHORIA \
    BUILD_USER=user \
    BUILD_TAGS=release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.vendor.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.bootimage.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.debuggable=0 \
    ro.secure=1 \
    ro.build.tags=release-keys \
    ro.bootmode=unknown \
    ro.boot.mode=unknown \
    ro.build.selinux=0 \
    ro.build.type=user \
    ro.build.description=coral-user 10 QQ3A.200805.001 6578210 release-keys \
    ro.build.version.security_patch=2020-08-05