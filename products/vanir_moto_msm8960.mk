#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-moto_msm8960

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

$(call inherit-product, device/motorola/moto_msm8960/full_moto_msm8960.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=moto_msm8960 \
    TARGET_DEVICE=moto_msm8960

PRODUCT_NAME := vanir_moto_msm8960
PRODUCT_DEVICE := moto_msm8960
