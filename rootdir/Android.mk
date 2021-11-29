LOCAL_PATH:= $(call my-dir)

# Common init scripts

include $(CLEAR_VARS)
LOCAL_MODULE       := android.hardware.camera.provider@2.4-service.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := root/android.hardware.camera.provider@2.4-service.rc
LOCAL_MODULE_PATH  := etc/init
include $(BUILD_PREBUILT)
