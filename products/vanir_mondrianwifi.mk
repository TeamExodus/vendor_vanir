DHO_VENDOR := vanir
#Squisher Choosing

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-mondrianwifi

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/mondrianwifi/full_mondrianwifi.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_mondrianwifi
PRODUCT_DEVICE := mondrianwifi
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-T320
