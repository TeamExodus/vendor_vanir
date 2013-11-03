#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-hammerhead

# Inherit VANIR files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

#
#
# UPDATE BOOT ANIMATION SIZE ONCE WE KNOW IT
#
#
# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for Nexus 5
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Product key is based on mako, will need update
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/hammerhead:4.4/KRT16M/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.4 KRT16M 737497 release-keys"
