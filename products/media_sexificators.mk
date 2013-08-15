PRODUCT_PACKAGES += \
    DSPManager

ifneq ($(NO_DRM_BLOBS),true)
# Blobs necessary for drm
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so
endif

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

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.swiqi2.enable=1 \
    ro.service.swiqi2.supported=true
