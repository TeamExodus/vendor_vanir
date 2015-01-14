#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-d2att

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common vanir stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

$(call inherit-product, device/samsung/d2att/full_d2att.mk)

PRODUCT_NAME := vanir_d2att
