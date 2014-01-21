#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-xt926

# Inherit AOSP device configuration for xt926.
$(call inherit-product, device/motorola/xt926/full_xt926.mk)

NO_DRM_BLOBS := true

# Inherit common Vanir files.
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT926_verizon \
    BUILD_PRODUCT=vanquish \
    BUILD_FINGERPRINT=motorola/XT926_verizon/vanquish:4.4.2/9.8.1Q-62_VQW_MR-2/6:user/release-keys


PRODUCT_NAME := vanir_xt926
PRODUCT_DEVICE := xt926
