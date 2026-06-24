ifeq ($(WITH_GMS),true)
# Inherit GMS repo
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# Permission definitions
$(call inherit-product, vendor/gapps/permissions/permissions.mk)

# Unlimited google photos backup
PRODUCT_COPY_FILES += \
    vendor/circle/prebuilt/google/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml

# Misc overlays
PRODUCT_PACKAGES += \
    TrebuchetOverlayGMS \
    UpdaterOverlayGMS

endif
