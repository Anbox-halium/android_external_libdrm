LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libdrm_rockchip

LOCAL_SHARED_LIBRARIES := libdrm

LOCAL_SRC_FILES := rockchip_drm.c

LOCAL_CFLAGS := \
	-DHAVE_LIBDRM_ATOMIC_PRIMITIVES=1 \
	-Wall -Werror

LOCAL_SHARED_LIBRARIES := \
	libdrm

LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)