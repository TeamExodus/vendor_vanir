#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d710

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d710
PRODUCT_NAME := vanir_d710
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-D710 

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.4.2/KOT49L/SPH-D710.GB27:user/release-keys PRIVATE_BUILD_DESC="SPH-D710-user 4.4.2 KOT49L SPH-D710.GB27 release-keys"
