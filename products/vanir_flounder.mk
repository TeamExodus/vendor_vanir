#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := AOSP 3.10.0 Prebuilt

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-FLOUNDER

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1280x1920.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/htc/flounder/full_flounder.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_flounder
PRODUCT_BRAND := google
PRODUCT_DEVICE := flounder
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=volantis TARGET_DEVICE=flounder BUILD_FINGERPRINT=google/razor/flo:5.0/LRX22G/937116:user/release-keys PRIVATE_BUILD_DESC="razor-user 5.0 LRX22G 937116 release-keys"
