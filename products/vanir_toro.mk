#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-TORO

# trusting defaults
#    ro.config.vc_call_vol_steps=7 \
#    ring.delay=0 \
#    ro.telephony.call_ring.delay=0 \
#    ro.ril.fast.dormancy.rule=0 \

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

$(call inherit-product, vendor/vanir/products/multi_tuna.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:5.0/LRX22G/937116:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 5.0 LRX22G 937116 release-keys"
