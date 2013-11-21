#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d802

# Inherit device configuration
$(call inherit-product, device/lge/vs980/vs980.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/vanir_g2-common.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs980
PRODUCT_NAME := vanir_vs980
PRODUCT_BRAND := lge
PRODUCT_MODEL := VS980 4G
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_vzw/g2:4.4/KRT16S/VS98011A.1378346052:user/release-keys PRIVATE_BUILD_DESC="g2_vzw-user 4.4 KRT16S VS98011A.1378346052 release-keys"
