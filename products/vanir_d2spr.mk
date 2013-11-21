#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d2spr

# Inherit AOSP device configuration for GS3 SPR.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)
# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/vanir_d2-common.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-L710

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.4/KRT16S/L710VPBMD4:user/release-keys" PRIVATE_BUILD_DESC="d2spr-user 4.4 KRT16S L710VPBMD4 release-keys"
