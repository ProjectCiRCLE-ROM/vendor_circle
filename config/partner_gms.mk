ifeq ($(WITH_GMS),true)
    # Inherit GMS repo
    $(call inherit-product, vendor/gms/config.mk)

    # Enable Pixel themes for Google SetupWizard
    PRODUCT_PRODUCT_PROPERTIES += \
        setupwizard.theme=glif_expressive \
        setupwizard.feature.day_night_mode_enabled=true
endif
