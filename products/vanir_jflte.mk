# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.


PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-jflte \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.gmm=android-samsung

$(call inherit-product, device/samsung/jflte/full_jflte.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# MPDecision and thermal(d/-engine) auto-disablers for KT-based kernels (like ours)
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/init.d/00kernelcompat:system/etc/init.d/00kernelcompat \
    vendor/vanir/proprietary/jf/bin/nuclearwinter:system/bin/nuclearwinter

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)


PRODUCT_NAME := vanir_jflte
