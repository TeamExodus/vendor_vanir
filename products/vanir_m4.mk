# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.


PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-m4

$(call inherit-product, device/htc/m4/full_m4.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Device naming
PRODUCT_DEVICE := m4
PRODUCT_NAME := vanir_m4
PRODUCT_BRAND := htc
PRODUCT_MODEL := One Mini
PRODUCT_MANUFACTURER := HTC
