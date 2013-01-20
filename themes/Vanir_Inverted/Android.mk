LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := Vanir_Inverted

LOCAL_AAPT_FLAGS := -c xhdpi -x 10

include $(BUILD_PACKAGE)
