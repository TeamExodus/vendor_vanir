# Variable for zip installerscript spam about kernel
KERNEL_SPAM := Popcorn Kernel v12 just rolled up in a retro custom van with an airbrushed wizard on the side

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
