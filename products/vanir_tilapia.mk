#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := Faux Kernel v013u IN THE HIZNOUSE

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-TILAPIA

# Copy grouper specific prebuilt files
## FIX ME: bootanimation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/smalltab/media/bootanimation.zip:system/media/bootanimation.zip

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats_bravia.mk)

# GSM APNs and Simcard app
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7 GSM
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasig/tilapia:4.2.2/JDQ39E/405518:user/release-keys PRIVATE_BUILD_DESC="nakasig-user 4.2.2 JDQ39E 405518 release-keys" BUILD_NUMBER=405518
