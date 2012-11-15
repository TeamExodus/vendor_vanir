# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := vanir_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JOP40C/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JOP40C 405518 release-keys" BUILD_NUMBER=405518

# Need custom boot in proper resolution

