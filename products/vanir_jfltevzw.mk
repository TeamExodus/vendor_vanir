#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jfltevzw

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf-common.mk)

$(call inherit-product, vendor/vanir/products/cdma.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:4.4/KRT16S/I545VRUAMDK:user/release-keys" PRIVATE_BUILD_DESC="jfltevzw-user 4.4 KRT16S I545VRUAMDK release-keys"

PRODUCT_NAME := vanir_jfltevzw
PRODUCT_DEVICE := jfltevzw
