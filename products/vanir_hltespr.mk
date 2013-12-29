#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-hltespr

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/hltespr/full_hltespr.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hltespr
PRODUCT_NAME := vanir_hltespr
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-L720

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hltespr TARGET_DEVICE=hltespr BUILD_FINGERPRINT="samsung/hltespr/hltespr:4.4.2/KOT49H/L720VPUAMDL:user/release-keys" PRIVATE_BUILD_DESC="hltespr-user 4.4.2 KOT49H L720VPUAMDL release-keys"
