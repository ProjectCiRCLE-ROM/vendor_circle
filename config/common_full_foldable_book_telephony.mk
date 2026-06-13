# Inherit mobile full common CiRCLE stuff
$(call inherit-product, vendor/circle/config/common_mobile_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Inherit tablet common CiRCLE stuff
$(call inherit-product, vendor/circle/config/tablet.mk)

$(call inherit-product, vendor/circle/config/telephony.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/circle/overlay/foldable_book
