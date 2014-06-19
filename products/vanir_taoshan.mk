# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2014 Olivier K. <yves.olli@gmail.com>
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

# Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
	ro.goo.rom=vanir-taoshan

# Torch
PRODUCT_PACKAGES += Torch

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x854.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration
$(call inherit-product, device/sony/taoshan/full_taoshan.mk)

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Override some inherited values
PRODUCT_DEVICE := taoshan
PRODUCT_NAME := vanir_taoshan

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C2105_1275-0241 BUILD_FINGERPRINT=Sony/C2105_1275-0241/C2105:4.2.2/15.3.A.0.26/Android.0031:user/release-keys PRIVATE_BUILD_DESC="C2105-user 4.2.2 JDQ39 Android.0031 test-keys"

# Release name
PRODUCT_RELEASE_NAME := XperiaL