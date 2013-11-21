#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-vigor

# Inherit AOSP device configuration for vigor.
$(call inherit-product, device/htc/vigor/vigor.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Boot animation
PRODUCT_COPY_FILES += \
	vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# CDMA APN list
PRODUCT_COPY_FILES += \
	vendor/vanir/proprietary/cdma/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGE_OVERLAYS += \
	vendor/vanir/overlay/cdma_phone

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
PRODUCT_NAME := vanir_vigor
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := Rezound
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=KRT16S
