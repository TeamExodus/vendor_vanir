#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-P880

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit CM device configuration for p880.
$(call inherit-product, device/lge/p880/p880.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := Optimus4XHD
PRODUCT_DEVICE := p880
PRODUCT_NAME := vanir_p880
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=x3_open_eu BUILD_FINGERPRINT=lge/x3_open_eu/x3:4.4.4/KTU84Q/P88020a.1e56bb4c69:user/release-keys PRIVATE_BUILD_DESC="x3_open_eu-user 4.4.4 KTU84Q P88020a.1e56bb4c69 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
