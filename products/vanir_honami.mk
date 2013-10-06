#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-honami

# GSM APNs and Simcard app
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for honami
$(call inherit-product, device/sony/honami/full_honami.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_honami
PRODUCT_DEVICE := honami
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := C609x

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/C6903_1276-7948/C6903:4.2.2/14.1.G.1.526/8Xl-jw:user/release-keys PRIVATE_BUILD_DESC="C6903-user 4.2.2 14.1.G.1.526 8Xl-jw test-keys"

