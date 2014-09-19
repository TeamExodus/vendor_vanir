# Release name
PRODUCT_RELEASE_NAME := peregrine

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 
#Squisher Choosing
DHO_VENDOR := vanir

# Inherit device configuration
$(call inherit-product, device/motorola/peregrine/full_peregrine.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/beats.mk)

# device name
PRODUCT_RELEASE_NAME := MOTO G 4G
PRODUCT_NAME := vanir_peregrine
PRODUCT_BRAND := motorola
PRODUCT_MODEL := MOTO G 4G
PRODUCT_MANUFACTURER := MOTOROLA
