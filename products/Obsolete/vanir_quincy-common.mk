# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
 $(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
