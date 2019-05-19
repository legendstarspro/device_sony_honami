# Board device path
DEVICE_PATH := device/sony/honami

# Board Vendor
BOARD_VENDOR := sony

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel

# Platform
TARGET_BOARD_PLATFORM := msm8974
BOARD_VENDOR_PLATFORM := rhine
PRODUCT_PLATFORM := rhine

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Kernel information
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 vmalloc=300M dwc3.maximum_speed=high dwc3_msm.prop_chg_detect=Y androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
BOARD_KERNEL_SEPARATED_DT := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 26

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2436890624
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12891175936

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Healthd
HEALTHD_ENABLE_TRICOLOR_LED := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH :=/sys/class/leds/lcd-backlight/brightness
RED_LED_PATH := /sys/class/leds/led:rgb_red/brightness
GREEN_LED_PATH := /sys/class/leds/led:rgb_green/brightness
BLUE_LED_PATH := /sys/class/leds/led:rgb_blue/brightness

# Custom boot
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/boot/custombootimg.mk

include device/sony/honami/twrp.mk
