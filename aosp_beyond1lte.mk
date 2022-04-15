#
# Copyright (C) 2021 The LineageOS Project
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
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Inherit from beyond1lte device
$(call inherit-product, device/samsung/beyond1lte/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

## Flags
TARGET_HAVE_FOD := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

## PixelExtended Official Stuff
PEX_BUILD_TYPE := OFFICIAL
PEX_MAINTAINER := Jubscleisson

## Inherit some common PixelExtended stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := aosp_beyond1lte
PRODUCT_DEVICE := beyond1lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G973F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
