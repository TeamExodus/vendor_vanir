#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jfltecri

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltecri/full_jfltecri.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf-common.mk)

$(call inherit-product, vendor/vanir/products/cdma.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltecri TARGET_DEVICE=jfltecri BUILD_FINGERPRINT="samsung/jfltecri/jfltecri:4.4/KRT16S/R970CVVUAME4:user/release-keys" PRIVATE_BUILD_DESC="jfltecri-user 4.4 KRT16S R970CVVUAME4 release-keys"

PRODUCT_NAME := vanir_jfltecri
PRODUCT_DEVICE := jfltecri
