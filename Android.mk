LOCAL_PATH := $(call my-dir)

define oplus-camera-app-lib
include $$(CLEAR_VARS)
LOCAL_MODULE := $(1)_camera_app_lib
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_STEM := $(1)
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../vendor/oneplus/macan-camera/proprietary/system_ext/lib64/$(1).so
LOCAL_MODULE_PATH := $$(TARGET_OUT_SYSTEM_EXT)/priv-app/OplusCamera/lib/arm64
LOCAL_CHECK_ELF_FILES := false
LOCAL_STRIP_MODULE := false
include $$(BUILD_PREBUILT)
endef

$(eval $(call oplus-camera-app-lib,libNativeWinBuffExchange))
$(eval $(call oplus-camera-app-lib,libHeifEncoderWrapper))
