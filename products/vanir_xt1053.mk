#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-xt1053

# Inherit AOSP device configuration for xt1053.
$(call inherit-product, device/motorola/xt1053/full_xt1053.mk)

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
    PRODUCT_NAME=XT1053 \
    BUILD_PRODUCT=ghost_retail \
    BUILD_FINGERPRINT=motorola/ghost_retail/ghost:4.2.2/13.9.0Q2.X-116-X-17-57/6:user/release-keys

PRODUCT_NAME := vanir_xt1053
PRODUCT_DEVICE := xt1053
