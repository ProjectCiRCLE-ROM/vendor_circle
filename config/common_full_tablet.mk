# Inherit mobile full common CiRCLE stuff
$(call inherit-product, vendor/circle/config/common_mobile_full.mk)

# Inherit tablet common CiRCLE stuff
$(call inherit-product, vendor/circle/config/tablet.mk)

$(call inherit-product, vendor/circle/config/telephony.mk)
