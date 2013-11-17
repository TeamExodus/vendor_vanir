PRODUCT_PACKAGES += \
    audio_effects.conf \
    DSPManager \
    libcyanogen-dsp

# Bravia 3 engine, credit C0deF0x
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/bravia/etc/be_movie:system/etc/be_movie \
    vendor/vanir/proprietary/bravia/etc/be_photo:system/etc/be_photo \
    vendor/vanir/proprietary/bravia/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
    vendor/vanir/proprietary/bravia/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.swiqi3.enable=1 \
    ro.service.swiqi3.supported=true \
    persist.service.swiqi.enable=1 \
    ro.service.swiqi.supported=true
