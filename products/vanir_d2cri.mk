#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d2cri

# Inherit AOSP device configuration for GS3 CRI.
$(call inherit-product, device/samsung/d2cri/full_d2cri.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/vanir_d2-common.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_d2cri
PRODUCT_DEVICE := d2cri
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-R530C

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2cri TARGET_DEVICE=d2cri BUILD_FINGERPRINT="samsung/d2cri/d2cri:4.4.2/KOT49H/R530CVVBMD6:user/release-keys" PRIVATE_BUILD_DESC="d2cri-user 4.4.2 KOT49H R530CVVBMD6 release-keys"
