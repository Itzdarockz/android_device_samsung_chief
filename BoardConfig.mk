# inherit from the proprietary version
-include vendor/samsung/chief/BoardConfigVendor.mk
-include device/semc/msm7x30-common/BoardConfigCommon.mk

# Board General info
#TARGET_NO_BOOTLOADER := true
HAVE_HTC_AUDIO_DRIVER := false
BOARD_CAMERA_USE_GETBUFFERINFO:=true
TARGET_BOOTLOADER_BOARD_NAME := SPH-D600
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USES_2G_VM_SPLIT := false

# audio
BUILD_TINY_ANDROID := false
QC_PROP := true
BOARD_USES_GENERIC_AUDIO := false
#TARGET_PROVIDES_LIBAUDIO := true

# wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcm4329_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_PATH := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"

# video
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_CUSTOM_GRAPHICS:= ../../../device/samsung/chief/recovery/minui/graphics.c
BOARD_EGL_CFG := device/samsung/chief/files/egl.cfg

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=SPH-D600
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/samsung/chief/kernel

# Partitioning setup (fix this up by examining /proc/mtd on a running device)
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x21fc0000
BOARD_FLASH_BLOCK_SIZE := 131072

## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/mtdblock10
BOARD_DATA_FILESYSTEM := yaffs2
BOARD_DATA_FILESYSTEM_OPTIONS := rw,nosuid,nodev,noatime,nodiratime 0 0
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock9
BOARD_SYSTEM_FILESYSTEM := yaffs2
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw,noatime,nodiratime 0 0
BOARD_CACHE_DEVICE := /dev/block/mtdblock12
BOARD_CACHE_FILESYSTEM := yaffs2
BOARD_CACHE_FILESYSTEM_OPTION := rw,nosuid,nodev,noatime,nodiratime 0 0
BOARD_MISC_DEVICE := /dev/block/mtdblock11
BOARD_BOOT_DEVICE := /dev/block/mtdblock6
BOARD_RECOVERY_DEVICE := /dev/block/mtdblock7
TARGET_USERIMAGES_USE_EXT4 := false
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/vold/179:1 

USE_CAMERA_STUB := true

# custom lun0 file for USB Mass Storage
#BOARD_UMS_LUNFILE := /sys/devices/platform/s3c-usbgadget/gadget/lun0/file
BOARD_RECOVERY_HANDLES_MOUNT := true
# JIT / Optimizations
WITH_DEXPREOPT := true
JS_ENGINE := v8

TARGET_SPECIFIC_HEADER_PATH += device/samsung/chief/files

# FM Radio (needed for the audio driver to compile)
#BOARD_USE_QCOM_SPEECH:=true
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := bcm4325
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
#BOARD_HAVE_FM_RADIO := true
#TARGET_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#TARGET_GLOBAL_CPPFLAGS += -DHAVE_FM_RADIO
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := false

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := 
