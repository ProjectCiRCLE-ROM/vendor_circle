# Set Lineage specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common CiRCLE stuff
$(call inherit-product, vendor/circle/config/common_full_phone.mk)
