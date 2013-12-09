#Squisher Choosing
DHO_VENDOR := vanir
 
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-quincyatt

$(call inherit-product, vendor/vanir/products/vanir_quincy-common.mk)
 
# Inherit AOSP device configuration for quincyatt.
$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_quincyatt
PRODUCT_DEVICE := quincyatt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SAMSUNG-SGH-I717

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.1.2/JZO54K/I717UCMD3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.1.2 JZO54K I717UCMD3 release-keys"
