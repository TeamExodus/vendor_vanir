# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-ls990

$(call inherit-product, device/lge/ls990/full_ls990.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_DEVICE := ls990
PRODUCT_NAME := vanir_ls990
