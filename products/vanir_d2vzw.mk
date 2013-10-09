#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d2vzw

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS3 VZW.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_d2vzw
PRODUCT_DEVICE := d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-I535

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.3.1/JZO54K/JLS36I:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.3.1 JLS36I I535VRBMF1 release-keys"
