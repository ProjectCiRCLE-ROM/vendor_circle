ifeq ($(WITH_GMS),true)
    # Inherit GMS repo
    $(call inherit-product, vendor/gms/config.mk)
endif
