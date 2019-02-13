#
# Copyright 2019 The Android Open Source Project
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

# Resolution values for bootanimation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/config/common.mk)
$(call inherit-product, vendor/aosp/config/aex_props.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/samsung/manta/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := manta
PRODUCT_NAME := aosp_manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mantaray \
    PRIVATE_BUILD_DESC="mantaray-user 5.1.1 LMY49J 2640980 release-keys"

BUILD_FINGERPRINT := google/mantaray/manta:5.1.1/LMY49J/2640980:user/release-keys
