#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-hltevzw

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/hltevzw/full_hltevzw.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hltevzw
PRODUCT_NAME := vanir_hltevzw
