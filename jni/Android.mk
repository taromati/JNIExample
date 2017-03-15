LOCAL_PATH := $(call my-dir)

# Static Library(.a) Setting
include $(CLEAR_VARS)

# OPENCV Setting, Change to your OpenCV path
OPENCVROOT := /Users/rowena/Library/Android/OpenCV
OPENCV_INSTALL_MODULES := on
OPENCV_LIB_TYPE := SHARED

include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk

# Static Library Name
LOCAL_MODULE := TMGrayFilterStaticModule

# Source File
LOCAL_SRC_FILES := TMGrayFilter.cpp

include $(BUILD_STATIC_LIBRARY)


# Dummy Shared Library(.so) Setting
include $(CLEAR_VARS)

# Dummy Library Name
LOCAL_MODULE := TMGrayFilterSharedModule

# Static Library Name
LOCAL_STATIC_LIBRARIES := TMGrayFilterStaticModule
include $(BUILD_SHARED_LIBRARY)
