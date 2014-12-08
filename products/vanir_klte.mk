# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-klte \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

$(call inherit-product, device/samsung/klte/full_klte.mk)

# MPDecision and thermal(d/-engine) auto-disablers for KT-based kernels (like ours)
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/boot.d/69nuclearwinter:system/etc/boot.d/69nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinter:system/bin/nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinterinternal:system/bin/nuclearwinterinternal

PRODUCT_DEVICE := klte
PRODUCT_NAME := vanir_klte
