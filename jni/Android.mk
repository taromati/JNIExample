LOCAL_PATH := $(call my-dir)

# Static Library(.a) Setting
include $(CLEAR_VARS)

# OPENCV Setting, Change to your OpenCV path!!
OPENCVROOT:= /Users/perchten/Library/Android/OpenCV
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED

include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk

# Static Library Name
LOCAL_MODULE := TMGrayFilterModule

# Source File
LOCAL_SRC_FILES := TMGrayFillter.cpp

include $(BUILD_STATIC_LIBRARY)


# Dummy Shared Library(.so) Setting
include $(CLEAR_VARS)

# Dummy Library Name
LOCAL_MODULE    := garbege

# Static Library Name
LOCAL_STATIC_LIBRARIES := TMGrayFilterModule
include $(BUILD_SHARED_LIBRARY)
