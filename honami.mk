# Recovery out path
TWRP_OUT := recovery/root

# Assert
TARGET_OTA_ASSERT_DEVICE := C6902,C6903,C6906,C6916,C6943,honami

# Inherit Omni parts
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# Ramdisk files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/rootdir/logo.rle:root/logo.rle

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:$(TWRP_OUT)/system/usr/share/zoneinfo/tzdata

# System prop
TARGET_SYSTEM_PROP += device/sony/honami/system.prop
