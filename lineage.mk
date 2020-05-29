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

# Inherit from lettuce device
$(call inherit-product, device/yu/lettuce/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_lettuce
BOARD_VENDOR := yu
PRODUCT_DEVICE := lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=YUPHORIA \
    TARGET_DEVICE=YUPHORIA