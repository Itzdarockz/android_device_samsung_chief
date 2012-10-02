LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := init.SPH-D600.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.SPH-D600.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.SPH-D600.post_boot.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.SPH-D600.post_boot.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/ueventd.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lpm.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/lpm.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.lpm.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.lpm.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.SPH-D600.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.SPH-D600.rc
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)


# include the non-open-source counterpart to this file
-include vendor/samsung/conquer/AndroidBoardVendor.mk
