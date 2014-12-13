# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-shamu

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, device/motorola/shamu/full_shamu.mk)

PRODUCT_NAME := vanir_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on Shamu
PRODUCT_MANUFACTURER := motorola
