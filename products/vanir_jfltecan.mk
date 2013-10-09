#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jfltecan

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltecan/full_jfltecan.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevl TARGET_DEVICE=jfltecan BUILD_FINGERPRINT="samsung/jfltevl/jfltecan:4.3/JLS36I/I337MVLUAMDJ:user/release-keys" PRIVATE_BUILD_DESC="jfltevl-user 4.3.1 JLS36I I337MVLUAMDJ release-keys"

PRODUCT_NAME := vanir_jfltecan
PRODUCT_DEVICE := jfltecan
