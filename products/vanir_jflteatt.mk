#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jflteatt

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf-common.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteuc TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.4/KRT16S/I337UCUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.4 KRT16S I337UCUAMDL release-keys"

PRODUCT_NAME := vanir_jflteatt
PRODUCT_DEVICE := jflteatt
