#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-skomer

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/skomer/full_skomer.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := skomer
PRODUCT_NAME := vanir_skomer
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7710

# Set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=vanir_skomer BUILD_FINGERPRINT=vaniraosp/vanir_skomer/skomer:4.4.2/$(BUILD_ID) PRIVATE_BUILD_DESC="GT-S7710 4.4.2"
