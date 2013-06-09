#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-i605

# place boot animation here once we make one
# PRODUCT_COPY_FILES += \
#    vendor/vanir/proprietary/mako/media/bootanimation.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats_bravia.mk)

# Inherit AOSP device configuration for Note 2.
$(call inherit-product, device/samsung/i605/full_i605.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_i605
PRODUCT_DEVICE := i605
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-I605

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.2.2/JDQ39E/I605VRAMC3:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.2.2 JDQ39E I605VRAMC3 release-keys"
