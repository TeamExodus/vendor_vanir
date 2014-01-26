#Squisher Choosing
DHO_VENDOR := vanir

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip
# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)



PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2uc \
    TARGET_DEVICE=d2lte \
    BUILD_FINGERPRINT="xxxxxxxxxx" \
    PRIVATE_BUILD_DESC="xxxxxxxxxx"

PRODUCT_NAME := vanir_d2lte
PRODUCT_DEVICE := d2lte

