#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These two variables are set first, so they can be overridden
# by BoardConfigVendor.mk
BOARD_USES_GENERIC_AUDIO := true
BOARD_USE_DEVICE_AUDIO_EFFECTS_CONF := true

# Default values, possibly overridden by BoardConfigVendor.mk
TARGET_BOARD_INFO_FILE := device/samsung/manta/board-info.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/manta/bluetooth

# Use the non-open-source parts, if they're present
-include vendor/samsung/manta/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

BUILD_BROKEN_DUP_RULES := true

#BUILD_TOP := $(shell pwd)
# Define kernel config for inline building
#KERNEL_TOOLCHAIN := $(BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.7/bin
#KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
TARGET_KERNEL_CONFIG := aosp_manta_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/manta
#TARGET_GCC_VERSION_ARM := 4.7

DEVICE_MANIFEST_FILE := device/samsung/manta/manifest.xml

# Binder API version
TARGET_USES_64_BIT_BINDER := true

#Bluetooth
BCM_BLUETOOTH_MANTA_BUG := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_NO_BOOTLOADER := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOOTLOADER_BOARD_NAME := manta

BOARD_EGL_CFG := device/samsung/manta/egl.cfg

OVERRIDE_RS_DRIVER := libRSDriverArm.so

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#TARGET_OMX_LEGACY_RESCALING := true

TARGET_USES_ION := true

TARGET_USES_GRALLOC1_ADAPTER := true

TARGET_RECOVERY_FSTAB = device/samsung/manta/fstab.manta
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 826277888
# Disable journaling on system.img to save space.
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14273216512
BOARD_CACHEIMAGE_PARTITION_SIZE := 553648128
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

#TARGET_PROVIDES_INIT_RC := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"

BOARD_HAL_STATIC_LIBRARIES := libhealthd.manta libdumpstate.manta

BOARD_CHARGER_DISABLE_INIT_BLANK := true

#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_manta
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/manta

BOARD_SEPOLICY_DIRS += device/samsung/manta/sepolicy

BOARD_SECCOMP_POLICY += device/samsung/manta/seccomp

#USE_CLANG_PLATFORM_BUILD := true
MALLOC_SVELTE := true
# MALLOC_IMPL := dlmalloc

BOARD_INV_LIBMLLITE_FROM_SOURCE := true

# Shims: libui
TARGET_LD_SHIM_LIBS := \
    /system/lib/omx/libOMX.Exynos.AVC.Decoder.so|libui_shim.so \
    /system/lib/omx/libOMX.Exynos.AVC.Encoder.so|libui_shim.so \
    /system/lib/omx/libOMX.Exynos.MPEG4.Decoder.so|libui_shim.so \
    /system/lib/omx/libOMX.Exynos.MPEG4.Encoder.so|libui_shim.so \
    /system/lib/omx/libOMX.Exynos.VP8.Decoder.so|libui_shim.so

# Shims: gpsd
TARGET_LD_SHIM_LIBS += \
    /system/vendor/bin/gpsd|gpsd_shim.so

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

#TWRP
#TARGET_PREBUILT_KERNEL := device/samsung/manta/kernel
#TARGET_RECOVERY_UI_LIB := librecovery_ui_manta
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_manta
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
DEVICE_RESOLUTION := 2560x1600
TW_THEME := landscape_hdpi
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_CUSTOM_BATTERY_PATH := /sys/devices/virtual/power_supply/manta-battery/subsystem/ds2784-fuelgauge
#TW_DISABLE_TTF := true
TW_NO_CPU_TEMP := true
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/power_supply/manta-battery/subsystem/ds2784-fuelgauge/temp
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_INCLUDE_L_CRYPTO := true
TW_INCLUDE_CRYPTO := true
#TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_MTP := true


