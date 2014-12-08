#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=commotio-d2vzw

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common vanir stuff
$(call inherit-product, vendor/commotio/products/common_phones.mk)

$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Unified device flag for Verizon permissions
VZW_UNIFIED := true

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

PRODUCT_NAME := commotio_d2vzw
