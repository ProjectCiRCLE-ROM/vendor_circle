# Inherit mobile mini common CiRCLE stuff
$(call inherit-product, vendor/circle/config/common_mobile_mini.mk)

# Inherit tablet common CiRCLE stuff
$(call inherit-product, vendor/circle/config/tablet.mk)

$(call inherit-product, vendor/circle/config/wifionly.mk)
