
LOCAL_PATH := $(call my-dir)
TARGET_PLATFORM := android-19

############ build iwlib
include $(CLEAR_VARS)
LOCAL_SRC_FILES := iwlib.c
LOCAL_CFLAGS += -Wstrict-prototypes -Wmissing-prototypes -Wshadow -Wpointer-arith -Wcast-qual -Winline -MMD -fPIC
LOCAL_MODULE:= libiw
LOCAL_STATIC_LIBRARIES := libcutils libc libm
include $(BUILD_STATIC_LIBRARY)

############ build iwconfig
include $(CLEAR_VARS)
LOCAL_SRC_FILES := iwconfig.c
LOCAL_CFLAGS += -Wstrict-prototypes -Wmissing-prototypes -Wshadow -Wpointer-arith -Wcast-qual -Winline -MMD -fPIC
LOCAL_MODULE:= iwconfig
LOCAL_STATIC_LIBRARIES := libcutils libc libm libiw
#LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
# install to system/xbin
include $(BUILD_EXECUTABLE)

############ build iwlist
include $(CLEAR_VARS)
LOCAL_SRC_FILES := iwlist.c
LOCAL_CFLAGS += -Wstrict-prototypes -Wmissing-prototypes -Wshadow -Wpointer-arith -Wcast-qual -Winline -MMD -fPIC
LOCAL_MODULE:= iwlist
LOCAL_STATIC_LIBRARIES := libcutils libc libm libiw
#LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
# install to system/xbin
include $(BUILD_EXECUTABLE)
