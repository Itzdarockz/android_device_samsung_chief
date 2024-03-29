$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

$(call inherit-product-if-exists, vendor/samsung/chief/chief-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/chief/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/chief/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    hostap \
    librs_jni \
    gralloc.msm7k \
    overlay.default \
    screencap \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \
    hostapd
    
PRODUCT_PACKAGES += \
    sensors.default \
    lights.msm7k

#kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/lib/modules/bthid.ko:root/lib/modules/bthid.ko \
    device/samsung/chief/files/lib/modules/cmc7xx_sdio.ko:root/lib/modules/cmc7xx_sdio.ko \
    device/samsung/chief/files/lib/modules/dhd.ko:root/lib/modules/dhd.ko \
    device/samsung/chief/files/lib/modules/qce.ko:root/lib/modules/qce.ko \
    device/samsung/chief/files/lib/modules/qcedev.ko:root/lib/modules/qcedev.ko \
    device/samsung/chief/files/system/lib/libdiag.so:system/lib/libdiag.so \
    device/samsung/chief/files/lib/modules/qcrypto.ko:root/lib/modules/qcrypto.ko

# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/logcat:system/bin/logcat \
    vendor/samsung/chief/proprietary/lib/libgsl.so:system/lib/libgsl.so

# system/etc/init's
PRODUCT_COPY_FILES += \
    device/samsung/chief/init.cdma-pppd:system/etc/init.cdma-ppd \
    device/samsung/chief/init.gprs-pppd:system/etc/init.gprs-ppd \
    device/samsung/chief/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/samsung/chief/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/samsung/chief/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/samsung/chief/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/samsung/chief/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/samsung/chief/files/SPH-D600.rle:root/SPH-D600.rle \
    device/samsung/chief/files/charging.rle:root/charging.rle

# wifi files
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/chief/files/system/etc/wifi/bcm4329_sta.bin:/system/etc/wifi/bcm4329_sta.bin \
    device/samsung/chief/files/system/etc/wifi/bcm4329_aps.bin:/system/etc/wifi/bcm4329_aps.bin \
    device/samsung/chief/files/system/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/chief/files/system/etc/wifi/bcm4329_mfg.bin:/system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/chief/files/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/chief/files/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/chief/files/system/bin/BCM4329B1_002.002.023.0746.0871.hcd:system/bin/BCM4329B1_002.002.023.0746.0871.hcd

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
    
# misc firmware
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/system/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    device/samsung/chief/files/system/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    device/samsung/chief/files/system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
    device/samsung/chief/files/system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
    device/samsung/chief/files/system/etc/firmware/wlan/volans/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    device/samsung/chief/files/system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini \
    device/samsung/chief/files/system/bin/pppd_runner:system/bin/pppd_runner \
    device/samsung/chief/files/system/bin/drexe:system/bin/drexe \
    device/samsung/chief/files/system/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/samsung/chief/files/system/etc/wifi/wl:system/etc/wifi/wl \
    device/samsung/chief/files/system/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt

# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    net.cdma.ppp.interface=ppp0 \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=ppp0,uwbr0 \
    ro.telephony.ril_class=samsung \
    ro.ril.samsung_cdma=true

# WiMAX Property setting for checking WiMAX interface
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wimax.interface=uwbr0 \
    net.tcp.buffersize.wimax=4092,87380,1520768,4092,16384,1520768

# misc for now
PRODUCT_COPY_FILES += \
    device/samsung/chief/files/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/samsung/chief/files/system/vendor/lib/libsec-ril.so:system/vendor/lib/libsec-ril.so \
    device/samsung/chief/files/system/bin/qmuxd:system/bin/qmuxd \
    device/samsung/chief/files/system/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/chief/files/system/bin/netmgrd:system/bin/netmgrd \
    device/samsung/chief/files/system/bin/thermald:system/bin/thermald \
    device/samsung/chief/files/system/bin/geomagneticd:system/bin/geomagneticd \
    device/samsung/chief/files/system/bin/orientationd:system/bin/orientationd \
    device/samsung/chief/files/system/bin/cnd:system/bin/cnd \
    device/samsung/chief/files/system/bin/mfgloader:system/bin/mfgloader \
    device/samsung/chief/files/system/bin/wlandutservice:system/bin/wlandutservice \
    device/samsung/chief/files/system/bin/btld:system/bin/btld \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    device/samsung/chief/files/system/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    device/samsung/chief/files/system/etc/cdma-carriers-conf.xml:system/etc/cdma-carriers-conf.xml \
    device/samsung/chief/files/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/samsung/chief/files/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/chief/files/system/etc/wimax_boot.bin:system/etc/wimax_boot.bin \
    device/samsung/chief/files/system/etc/wimaxfw.bin:system/etc/wimaxfw.bin \
    device/samsung/chief/files/system/etc/wimaxloader.bin:system/etc/wimaxloader.bin \
    device/samsung/chief/files/system/etc/thermald.conf:system/etc/thermald.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml



$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=eth0\
wifi.supplicant_scan_interval=15\
ril.subscription.types=NV

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    persist.sys.use_dithering=1 \
    ro.compcache.default=0

# Properties taken from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
ro.setupwizard.mode=DISABLED \
ro.com.google.gmsversion=2.3_r9 \
ro.com.google.clientidbase=android-samsung \
ro.com.google.clientidbase.ms=android-sprint-us \
ro.com.google.clientidbase.yt=android-sprint-us \
ro.com.google.clientidbase.am=android-sprint-us \
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
CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120 
