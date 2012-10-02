$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/conquer/conquer-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/conquer/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/conquer/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
#vendor specific stuff
#PRODUCT_COPY_FILES +=\
#device/samsung/conquer/files/init.SPH-D600.rc:root/init.SPH-D600.rc\
#device/samsung/conquer/files/init.SPH-D600.sh:root/init.SPH-D600.sh\
#device/samsung/conquer/files/init.SPH-D600.post_boot.sh:root/init.SPH-D600.post_boot.sh

#Let's try to get CM to autoput our mounts...
#PRODUCT_COPY_FILES += \

    #device/samsung/conquer/files/init.rc:root/init.rc

#PRODUCT_COPY_FILES += \
#    device/samsung/conquer/files/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    device/samsung/conquer/files/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
	device/samsung/conquer/files/lib/modules/cmc7xx_sdio.ko:root/lib/modules/cmc7xx_sdio.ko \
    device/samsung/conquer/files/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/samsung/conquer/files/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/samsung/conquer/files/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko 
	

PRODUCT_COPY_FILES += \
    device/samsung/conquer/files/lib/modules/qcrypto.ko:root/lib/modules/qcrypto.ko \
    device/samsung/conquer/files/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    #device/samsung/conquer/files/system/bin/rild:system/bin/rild \
    #device/samsung/conquer/files/init.local.rc:root/system/etc/init.local.rc
        

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml






$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=eth0 \
wifi.supplicant_scan_interval=15 \
rild.libpath=/system/lib/libsec-ril.so \
rild.libargs='-d /dev/smd0'\
ril.subscription.types=NV
#[rild.libpath]: [/system/lib/libsec-ril.so]
#[rild.libpath]: [/system/lib/libsec-ril.so]
#[rild.libargs]: [-d >> out/target/product/conquer/system/build.prop;  echo /dev/smd0]
#[rild.libargs]: [-d /dev/smd0]


PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel



PRODUCT_NAME := samsung_conquer
PRODUCT_DEVICE := conquer
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SPH-D600
PRODUCT_MANUFACTURER := Samsung
