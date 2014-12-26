LOCAL_PATH := $(call my-dir)

# oppo apq8064 and msm8974 devices have their own QuickBoot, and qbcharger support, so the apk and our init triggers aren't needed
ifneq ($(strip $(QCOM_BOARD_PLATFORM) $(filter msm%,$(TARGET_BOARD_PLATFORM)) $(filter apq%,$(TARGET_BOARD_PLATFORM))),)
ifneq ($(BOARD_VENDOR),oppo)
include $(LOCAL_PATH)/real/quickboot.mk
else
include $(LOCAL_PATH)/fake/quickboot.mk
endif
endif
