#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jfltexx

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

$(call inherit-product, vendor/vanir/products/vanir_jf.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_jfltexx
PRODUCT_DEVICE := jfltexx

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltexx TARGET_DEVICE=jflte BUILD_FINGERPRINT="samsung/jfltexx/jflte:4.3/JLS36C/I9505XXUAMDE:user/release-keys" PRIVATE_BUILD_DESC="jfltexx-user 4.3 JLS36C I9505XXUAMDE release-keys"
