# Copy toro specific prebuilt files
# PRODUCT_COPY_FILES +=  \
#    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip 

# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

#
# Beats Audio out for now
#

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/asus/tf700/full_tf700.mk)

# ... and then make the AOSP device configuration for national anthems piped into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_700
PRODUCT_BRAND := google
PRODUCT_DEVICE := tf700
PRODUCT_MODEL := Transformer Infinity
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT=asus/US_epad/EeePad:4.2.1/JOP40D/US_epad-10.4.4.20-20121026:user/release-keys PRIVATE_BUILD_DESC="US_epad-user 4.2.1 JOP40D US_epad-10.4.4.20-20121026 release-keys" BUILD_NUMBER=235179
