# Release name
PRODUCT_RELEASE_NAME := falcon

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 
#Squisher Choosing
DHO_VENDOR := vanir

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# device name
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := vanir_falcon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := MOTO G
PRODUCT_MANUFACTURER := MOTOROLA
