#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-galaxysbmtd

$(call inherit-product, vendor/vanir/products/vanir_galaxys-common.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

$(call inherit-product, device/samsung/galaxysmtd/full_galaxysbmtd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxysbmtd
PRODUCT_NAME := vanir_galaxysbmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000B

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000B TARGET_DEVICE=GT-I9000B BUILD_FINGERPRINT=samsung/GT-I9000B/GT-I9000B:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000B-user 2.3.5 GINGERBREAD XXJVT release-keys"
