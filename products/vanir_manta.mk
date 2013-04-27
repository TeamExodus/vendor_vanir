#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES := \
    drm.service.enabled=true \
    ro.config.vc_call_vol_steps=7 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.ril.fast.dormancy.rule=0 \
    ro.goo.rom=vanir-MANTA

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Blobs necessary for drm
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

# bootanimation
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/manta/media/bootanimation.zip:system/media/bootanimation.zip

# Bravia 2 engine
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/etc/be_movie:system/etc/be_movie \
    vendor/vanir/proprietary/tuna/etc/be_movie_setting:system/etc/be_movie_setting \
    vendor/vanir/proprietary/tuna/etc/be2_album:system/etc/be2_album \
    vendor/vanir/proprietary/tuna/etc/be_album:system/etc/be_album \
    vendor/vanir/proprietary/tuna/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
    vendor/vanir/proprietary/tuna/lib/libiwi.so:system/lib/libiwi.so \
    vendor/vanir/proprietary/tuna/lib/libiwiOmx.so:system/lib/libiwiOmx.so \
    vendor/vanir/proprietary/tuna/lib/libiwiOmxUtil.so:system/lib/libiwiOmxUtil.so \
    vendor/vanir/proprietary/tuna/lib/libmbe.so:system/lib/libmbe.so \
    vendor/vanir/proprietary/tuna/lib/libmbe_paramselector.so:system/lib/libmbe_paramselector.so \
    vendor/vanir/proprietary/tuna/lib/libSwiqiController.so:system/lib/libSwiqiController.so \
    vendor/vanir/proprietary/tuna/lib/libswiqisettinghelper.so:system/lib/libswiqisettinghelper.so \
    vendor/vanir/proprietary/tuna/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Beats Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.swiqi2.enable=1 \
    ro.service.swiqi2.supported=true

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit AOSP device configuration for Manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# More Language support for International LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

PRODUCT_NAME := vanir_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.2/JDQ39E/573038:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.2 JDQ39E 573038 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Vanir-MANTA