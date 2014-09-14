#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-d2lte

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Unified device flag for Verizon permissions
VZW_UNIFIED := true

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

PRODUCT_NAME := vanir_d2lte

