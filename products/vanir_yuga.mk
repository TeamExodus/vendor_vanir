#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-YUGA
# place boot animation here once we make one
# PRODUCT_COPY_FILES += \
#    vendor/vanir/proprietary/maserati/media/bootanimation.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Inherit AOSP device configuration for yuga.
$(call inherit-product, device/sony/yuga/full_yuga.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
# TODO, UPDATE THIS FOR Xpera Z
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

#
# Setup device specific product configuration.
#
# Setup device specific product configuration.
PRODUCT_NAME := vanir_yuga
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := yuga
PRODUCT_RELEASE_NAME := Xperia Z
PRODUCT_MODEL := c6606
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603 BUILD_FINGERPRINT=Sony/C6603_1270-6697/C6603:4.3/10.3.A.0.423/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="C6603-user 4.3 10.3.A.0.423 WP5_rg test-keys"

