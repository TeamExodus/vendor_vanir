# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/beats_bravia.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg
