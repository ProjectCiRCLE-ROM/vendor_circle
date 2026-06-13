# Set Lineage specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common CiRCLE stuff
$(call inherit-product, vendor/circle/config/common_mini_phone.mk)
