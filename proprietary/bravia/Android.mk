LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libiwi
LOCAL_SRC_FILES := lib/libiwi.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libiwiOmx
LOCAL_SRC_FILES := lib/libiwiOmx.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libiwiOmxUtil
LOCAL_SRC_FILES := lib/libiwiOmxUtil.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libmbe
LOCAL_SRC_FILES := lib/libmbe.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libmbe_paramselector
LOCAL_SRC_FILES := lib/libmbe_paramselector.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libSwiqiController
LOCAL_SRC_FILES := lib/libSwiqiController.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libswiqisettinghelper
LOCAL_SRC_FILES := lib/libswiqisettinghelper.so
LOCAL_MODULE_TAGS := optional
include $(PREBUILT_SHARED_LIBRARY)

