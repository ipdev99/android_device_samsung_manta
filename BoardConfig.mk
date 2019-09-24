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

# Don't use the CM charger
WITH_CM_CHARGER := false

# Default values, possibly overridden by BoardConfigVendor.mk
TARGET_BOARD_INFO_FILE := device/samsung/manta/board-info.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/manta/bluetooth

# Use the non-open-source parts, if they're present
-include vendor/samsung/manta/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

BUILD_BROKEN_DUP_RULES := true

# Define kernel config for inline building
TARGET_KERNEL_CONFIG := followmsi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/manta

#BUILD_TOP := $(shell pwd)
#KERNEL_TOOLCHAIN := $(BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

DEVICE_MANIFEST_FILE := device/samsung/manta/manifest.xml

WITH_LINEAGE_CHARGER := false

BOARD_KERNEL_IMAGE_NAME = zImage

# Binder API version
TARGET_USES_64_BIT_BINDER := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BCM_BLUETOOTH_MANTA_BUG := true

# build/core/Makefile
TARGET_NO_BOOTLOADER := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOOTLOADER_BOARD_NAME := manta

OVERRIDE_RS_DRIVER := libRSDriverArm.so

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_RECOVERY_FSTAB = device/samsung/manta/fstab.manta
RECOVERY_FSTAB_VERSION := 2
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE:= 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE:= 33488896
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
# Disable journaling on system.img to save space.
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29783752704
BOARD_CACHEIMAGE_PARTITION_SIZE := 553648128
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_ROOT_EXTRA_FOLDERS := factory

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
BOARD_CHARGER_SHOW_PERCENTAGE := true

TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/manta

# Media
#TARGET_OMX_LEGACY_RESCALING := true

TARGET_USES_ION := true

TARGET_USES_GRALLOC1_ADAPTER := true

TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U

# Default card id for USB audio
BOARD_USB_AUDIO_CARD_ID := 2

SELINUX_IGNORE_NEVERALLOWS := true

BOARD_SEPOLICY_DIRS += \
	device/samsung/manta/sepolicy

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

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Seccomp filters
BOARD_SECCOMP_POLICY += device/samsung/manta/seccomp

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
TW_INCLUDE_NTFS_3G := true

