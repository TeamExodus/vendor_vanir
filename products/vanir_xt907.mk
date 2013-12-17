#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-xt907

# Inherit AOSP device configuration for xt907.
$(call inherit-product, device/motorola/xt907/full_xt907.mk)

NO_DRM_BLOBS := true

# Inherit common Vanir files.
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT907_verizon \
    BUILD_PRODUCT=scorpion_mini \
    BUILD_FINGERPRINT=motorola/XT907_verizon/scorpion_mini:4.4.2/9.8.1Q-66/28:user/release-keys

PRODUCT_NAME := vanir_xt907
PRODUCT_DEVICE := xt907
