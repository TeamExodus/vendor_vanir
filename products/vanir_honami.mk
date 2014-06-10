#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-honami

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for Z1.
$(call inherit-product, device/sony/honami/full_honami.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_honami
PRODUCT_DEVICE := honami
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := C6903

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/C6903/C6903:4.3/14.2.A.0.290/eng.hudsonslave:user/release-keys PRIVATE_BUILD_DESC="C6903-user 4.3 RHINE-1.1-131125-1201 eng.hudsonslave test-keys"