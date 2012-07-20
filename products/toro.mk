# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JRN84D BUILD_FINGERPRINT=google/mysid/toro:4.1.1/JRN84D/336647:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRN84D 336647 release-keys" BUILD_NUMBER=235179

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
   vendor/vanir/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so 

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/vanir/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/vanir/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/vanir/proprietary/tuna/lib/hw/power.tuna.so:system/lib/hw/power.tuna.so

# Copy missing apps
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/app/SpeakerProximity.apk:system/app/SpeakerProximity.apk 

# Copy missing files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/vendor/etc/sirfgps.conf:vendor/etc/sirfgps.conf \
    vendor/vanir/proprietary/tuna/vendor/lib/hw/gps.omap4.so:vendor/lib/hw/gps.omap4.so \
    vendor/vanir/proprietary/tuna/vendor/firmware/ducati-m3.bin:vendor/firmware/ducati-m3.bin 
