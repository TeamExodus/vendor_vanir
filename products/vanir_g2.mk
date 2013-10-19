DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-g2vzw

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/lge/g2/full_g2.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

$(call inherit-product, vendor/vanir/products/cdma.mk)

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/init.d/dasboot:system/etc/init.d/dasboot

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := g2
PRODUCT_NAME := vanir_g2
PRODUCT_BRAND := lge
PRODUCT_MODEL := VS980 4G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=g2 PRODUCT_DEVICE=g2 BUILD_FINGERPRINT=lge/g2/g2:4.2.2/JDQ39B/VS98011A.1378346052:user/release-keys PRIVATE_BUILD_DESC="g2_vzw-user 4.2.2 JDQ39B VS98011A.1378346052 release-keys"
