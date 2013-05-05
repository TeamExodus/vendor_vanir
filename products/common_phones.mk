# Vanir common
$(call inherit-product, vendor/vanir/products/common.mk)
$(call inherit-product, vendor/vanir/products/beats_bravia.mk)

PRODUCT_PACKAGES += \
    SpeakerProximity

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk
