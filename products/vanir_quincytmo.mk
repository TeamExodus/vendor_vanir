#Squisher Choosing
DHO_VENDOR := vanir
 
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-quincytmo

$(call inherit-product, vendor/vanir/products/vanir_quincy-common.mk)
 
# Inherit AOSP device configuration for quincytmo.
$(call inherit-product, device/samsung/quincytmo/full_quincytmo.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_quincytmo
PRODUCT_DEVICE := quincytmo
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SAMSUNG-SGH-T879

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T879 TARGET_DEVICE=SGH-T879 BUILD_FINGERPRINT="samsung/SGH-T879/SGH-T879:4.0.4/IMM76D/UVLE9:user/release-keys" PRIVATE_BUILD_DESC="SGH-T879-user 4.0.4 IMM76D UVLE9 release-keys"
