ifeq ($(WITH_GMS),true)
# Inherit GMS repo
$(call inherit-product, vendor/gms/config.mk)

# Unlimited google photos backup
PRODUCT_COPY_FILES += \
    vendor/circle/prebuilt/google/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml

# Updater overlay
PRODUCT_PACKAGES += \
    UpdaterOverlayGMS
endif
