# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/cdma/etc/apns-conf.xml:system/etc/apns-conf.xml

# CDMA SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/cdma/etc/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=2