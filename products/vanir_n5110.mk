#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    persist.sys.root_access=1 \
    persist.sys.strictmode.visual=0 \
    persist.sys.strictmode.disable=1 \
    ro.goo.rom=vanir-n5110

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/n5110/full_n5110.mk)

# Inherit common bacon files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit VANIR overlays.
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n5110
PRODUCT_NAME := vanir_n5110
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N5110
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=konawifixx TARGET_DEVICE=konawifi BUILD_FINGERPRINT="samsung/konawifixx/konawifi:4.2.2/JDQ39/N5110XXCMG2:user/release-keys" PRIVATE_BUILD_DESC="konawifixx-user 4.2.2 JDQ39 N5110XXCMG2 release-keys"
