#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-galaxysmtd

$(call inherit-product, vendor/vanir/products/vanir_galaxys-common.mk)

$(call inherit-product, vendor/vanir/products/gsm.mk)

$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := vanir_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:4.4.4/KITKAT/KTU84P:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 4.4.4 KITKAT KTU84P release-keys"
