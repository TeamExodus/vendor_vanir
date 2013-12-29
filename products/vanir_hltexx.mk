#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-hltexx

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/hltexx/full_hltexx.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hltexx
PRODUCT_NAME := vanir_hltexx
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-N9000

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hltexx TARGET_DEVICE=hltexx BUILD_FINGERPRINT="samsung/hltetmo/hltetmo:4.4.2/KOT49H/N900TUVUBMI7:user/release-keys" PRIVATE_BUILD_DESC="hltetmo-user 4.4.2 KOT49H N900TUVUBMI7 release-keys"
