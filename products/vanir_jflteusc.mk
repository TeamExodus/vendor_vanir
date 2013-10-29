#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jflteusc

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jflteusc/full_jflteusc.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf-common.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteusc TARGET_DEVICE=jflteusc BUILD_FINGERPRINT="samsung/jflteusc/jflteusc:4.2.2/JDQ39/R970VXUAMD9:user/release-keys" PRIVATE_BUILD_DESC="jflteusc-user 4.2.2 JDQ39 R970VXUAMD9 release-keys"

PRODUCT_NAME := vanir_jflteusc
PRODUCT_DEVICE := jflteusc

