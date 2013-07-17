# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/cdma/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/cdma_phone
