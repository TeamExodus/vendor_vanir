#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jactiveltexx

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS4 ACTIVE (GSM).
$(call inherit-product, device/samsung/jactiveltexx/full_jactiveltexx.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_jactiveltexx
PRODUCT_DEVICE := jactiveltexx
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9295

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jactiveltexx TARGET_DEVICE=jactiveltexx BUILD_FINGERPRINT="samsung/jactiveltexx/jactivelte:4.2.2/JDQ39/I9295XXUAMF7:user/release-keys"

