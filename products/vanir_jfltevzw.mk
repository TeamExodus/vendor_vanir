#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jfltevzw

$(call inherit-product, vendor/vanir/products/vanir_jf.mk)

$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_jfltevzw
PRODUCT_DEVICE := jfltevzw
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SCH_I545

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:4.2.2/JDQ39/I545VRUAMDK:user/release-keys" PRIVATE_BUILD_DESC="jfltevzw-user 4.2.2 JDQ39 I545VRUAMDK release-keys"
