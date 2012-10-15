$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, vendor/cyanogen/products/common.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/chief/chief-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/chief/overlay

-include device/semc/msm7x30-common/msm7x30.mk

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/chief/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
#vendor specific stuff
#PRODUCT_COPY_FILES +=\
#device/samsung/chief/files/init.SPH-D600.rc:root/init.SPH-D600.rc\
#device/samsung/chief/files/init.SPH-D600.sh:root/init.SPH-D600.sh\
#device/samsung/chief/files/init.SPH-D600.post_boot.sh:root/init.SPH-D600.post_boot.sh

#Let's try to get CM to autoput our mounts...
#PRODUCT_COPY_FILES += \
#device/samsung/chief/files/init.rc:root/init.rc

#PRODUCT_COPY_FILES += \
#    device/samsung/chief/files/ueventd.rc:root/ueventd.rc

#Offline charging animation
PRODUCT_COPY_FILES += \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_01_H.png:system/semc/chargemon/data/charging_animation_01.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_02_H.png:system/semc/chargemon/data/charging_animation_02.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_03_H.png:system/semc/chargemon/data/charging_animation_03.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_04_H.png:system/semc/chargemon/data/charging_animation_04.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_05_H.png:system/semc/chargemon/data/charging_animation_05.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_06_H.png:system/semc/chargemon/data/charging_animation_06.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_07_H.png:system/semc/chargemon/data/charging_animation_07.png

#kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
    device/samsung/chief/files/lib/modules/cmc7xx_sdio.ko:root/lib/modules/cmc7xx_sdio.ko \
    device/samsung/chief/files/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/samsung/chief/files/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/samsung/chief/files/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko \
    device/samsung/chief/files/system/lib/libdiag.so:system/lib/libdiag.so \
    device/samsung/chief/files/lib/modules/qcrypto.ko:root/lib/modules/qcrypto.ko \

# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/logcat:system/bin/logcat \
    vendor/samsung/chief/proprietary/lib/libgsl.so:system/lib/libgsl.so \

# system/etc/init's
PRODUCT_COPY_FILES += \
    device/samsung/chief/init.cdma-pppd:system/etc/init.cdma-ppd \
    device/samsung/chief/init.gprs-pppd:system/etc/init.gprs-ppd \
    device/samsung/chief/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/samsung/chief/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/samsung/chief/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/samsung/chief/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/samsung/chief/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
        device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle

# wifi files
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/chief/files/system/etc/wifi/bcm4329_sta.bin:/system/etc/wifi/bcm4329_sta.bin \
    device/samsung/chief/files/system/etc/wifi/bcm4329_aps.bin:/system/etc/wifi/bcm4329_aps.bin \
    device/samsung/chief/files/system/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/chief/files/system/etc/wifi/bcm4329_aps.bin:/system/etc/wifi/bcm4329_aps.bin \
    device/samsung/chief/files/system/etc/wifi/bcm4329_mfg.bin:/system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/chief/files/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/chief/files/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# video drivers
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/samsung/chief/files/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/samsung/chief/files/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/samsung/chief/files/system/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw 

# audio
#PRODUCT_COPY_FILES += \
    #vendor/samsung/chief/proprietary/lib/libaudio.so:obj/lib/libaudio.so 
    #vendor/samsung/chief/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so
    
# misc for now
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/samsung/chief/files/system/vendor/lib/libsec-ril.so:system/vendor/lib/libsec-ril.so\
    device/samsung/chief/files/system/bin/rild:system/bin/rild \
    device/samsung/chief/files/system/bin/qmuxd:system/bin/qmuxd \
    device/samsung/chief/files/system/bin/hciattach:system/bin/hciattach \
    device/samsung/chief/files/system/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/chief/files/system/bin/netmgrd:system/bin/netmgrd \
    device/samsung/chief/files/system/bin/thermald:system/bin/thermald \
    device/samsung/chief/files/system/bin/geomagneticd:system/bin/geomagneticd \
    device/samsung/chief/files/system/bin/orientationd:system/bin/orientationd \
    device/samsung/chief/files/system/bin/bluetoothd:system/bin/bluetoothd \
    device/samsung/chief/files/system/bin/cnd:system/bin/cnd \
    device/samsung/chief/files/system/bin/mfgloader:system/bin/mfgloader \
    device/samsung/chief/files/system/bin/wlandutservice:system/bin/wlandutservice \
    device/samsung/chief/files/system/lib/modules/libra/libra.ko:/system/lib/modules/libra/libra.ko \
    device/samsung/chief/files/system/lib/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    vendor/samsung/chief/proprietary/lib/libaudioalsa.so:obj/lib/libaudioalsa.so


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=eth0\
wifi.supplicant_scan_interval=15\
rild.libpath=/system/vendor/lib/libsec-ril.so\
rild.libargs='-d /dev/smd0'\
ril.subscription.types=NV
#[rild.libpath]: [/system/lib/libsec-ril.so]
#[rild.libargs]: [-d >> out/target/product/chief/system/build.prop;  echo /dev/smd0]
#[rild.libpath]: [/system/lib/libsec-ril.so]
#[rild.libargs]: [-d /dev/smd0]

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=64m \
    persist.sys.use_dithering=0 \
    ro.compcache.default=0

# Properties taken from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-samsung \
    ro.com.google.clientidbase.yt=android-sprint-us \
    ro.com.google.clientidbase.am=android-sprint-us \
    ro.com.google.clientidbase.ms=android-sprint-us \
    ro.com.google.clientidbase.gmm=android-samsung
    
# Set region
PRODUCT_DEFAULT_LANGUAGE := en_US
PRODUCT_DEFAULT_REGION := US

# Chief uses medium-density artwork where available
PRODUCT_LOCALES += mdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cyanogenmod_chief
PRODUCT_DEVICE := chief
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-D600
PRODUCT_MANUFACTURER := samsung
