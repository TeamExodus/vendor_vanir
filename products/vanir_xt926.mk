#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-xt926

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

$(call inherit-product, device/motorola/xt926/full_xt926.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vanir_xt926 \
    TARGET_DEVICE=xt926

PRODUCT_NAME := vanir_xt926
PRODUCT_DEVICE := xt926
