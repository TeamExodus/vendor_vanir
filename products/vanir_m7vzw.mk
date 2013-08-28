#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m7vzw

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

$(call inherit-product, vendor/vanir/products/vanir_m7.mk)

$(call inherit-product, vendor/vanir/products/cdma.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7wlv BUILD_ID=JZO54K BUILD_FINGERPRINT="VERIZON/HTCOneVZW/m7wlv:4.2.2/JDQ39/221778.8:user/release-k" PRIVATE_BUILD_DESC="1.10.605.8 CL221778 release-keys"

PRODUCT_NAME := vanir_m7vzw
PRODUCT_DEVICE := m7vzw
