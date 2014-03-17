# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.


PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-jflte

# Inherit device configuration
$(call inherit-product, device/samsung/codinalte/full_codinalte.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x480.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Device identifier
PRODUCT_DEVICE := codinalte
PRODUCT_NAME := vanir_codinalte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-T599X
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint and ID
BUILD_ID := TRIANA00$(shell date -u +%Y%m%d)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cm_codinalte BUILD_FINGERPRINT=cyanogenmod/cm_codinalte/codinalte:4.4.2/$(BUILD_ID) PRIVATE_BUILD_DESC="SGH-T599X 4.4.2"
