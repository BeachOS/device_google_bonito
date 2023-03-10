# Inherit some common stuff.
$(call inherit-product, vendor/beach/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/device-beach.mk)
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := beach_bonito
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bonito \
    PRIVATE_BUILD_DESC="bonito-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:12/SP2A.220505.008/8782922:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
