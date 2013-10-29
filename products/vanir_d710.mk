#Squisher Choosing
DHO_VENDOR := vanir
 
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d710

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x480.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)
 
# Inherit AOSP device configuration for d710.
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_d710
PRODUCT_DEVICE := d710
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-D710

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-D710 TARGET_DEVICE=SGH-D710 BUILD_FINGERPRINT="samsung/SGH-D710/SGH-D710:4.3.1/JLS36I/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-D710-user 4.13 JLS36I UVMC6 release-keys"
