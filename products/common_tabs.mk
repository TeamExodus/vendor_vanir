# Vanir common
$(call inherit-product, vendor/vanir/products/common.mk)

# Tablet Overlays
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tablet

# Audio Packages
include frameworks/base/data/sounds/AudioPackage_tab.mk
