# Inherit device configurations
$(call inherit-product, device/sony/honami/honami.mk)

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device
PRODUCT_NAME := omni_honami
PRODUCT_RELEASE_NAME := honami
PRODUCT_DEVICE := honami
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z1

# Fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C6903 \
    PRIVATE_BUILD_DESC="C6903-user 5.1.1 14.6.A.1.236 2031203603 release-keys"

BUILD_FINGERPRINT := Sony/C6903/C6903:5.1.1/14.6.A.1.236/2031203603:user/release-keys
