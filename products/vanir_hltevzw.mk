#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-hltevzw

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/hltevzw/full_hltevzw.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hltevzw
PRODUCT_NAME := vanir_hltevzw
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-N900V

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hltevzw TARGET_DEVICE=hltevzw BUILD_FINGERPRINT="Verizon/hltevzw/hltevzw:4.4.2/KOT49H/N900VOYUBMJ3:user/release-keys" PRIVATE_BUILD_DESC="hltevzw-user 4.4.2 KOT49H N900VOYUBMJ3 release-keys"