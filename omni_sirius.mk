# Copyright (C) 2011 The Android Open Source Project
# Copyright (C) 2013 The CyanogenMod Project
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

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from sirius device. Most specific first.
$(call inherit-product, device/sony/sirius/sirius.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Kernel properties
TARGET_KERNEL_CONFIG := omni_shinano_sirius_defconfig

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_sirius
PRODUCT_DEVICE := sirius
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z2

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D6503
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D6503/D6503:6.0.1/23.5.A.1.291/2769308465:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D6503-user 6.0.1 23.5.A.1.291 2769308465 release-keys"

# Inherit OmniROM parts
$(call inherit-product, vendor/omni/config/gsm.mk)
