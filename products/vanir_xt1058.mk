#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-xt1058

# Inherit AOSP device configuration for xt1058.
$(call inherit-product, device/motorola/xt1058/full_xt1058.mk)

NO_DRM_BLOBS := true

# Inherit common Vanir files.
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT1058_gsm \
    BUILD_PRODUCT=ghost \
    BUILD_FINGERPRINT=motorola/XT1058_gsm/ghost:4.2.2/13.9.0Q2.X-116:user/release-keys

PRODUCT_NAME := vanir_xt1058
PRODUCT_DEVICE := xt1058
