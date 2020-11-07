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

PRODUCT_COPY_FILES := \
    device/samsung/manta/init.manta.rc:root/init.manta.rc \
    device/samsung/manta/init.manta.usb.rc:root/init.manta.usb.rc \
    device/samsung/manta/init.recovery.manta.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.manta.rc \
    device/samsung/manta/fstab.manta:root/fstab.manta \
    device/samsung/manta/ueventd.manta.rc:root/ueventd.manta.rc \
    device/samsung/manta/twrp.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/twrp.fstab \
    $(LOCAL_PATH)/fstab.manta:$(TARGET_COPY_OUT_RAMDISK)/fstab.manta \
    $(LOCAL_PATH)/fstab.manta:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.manta

# Input device files for manta
PRODUCT_COPY_FILES += \
    device/samsung/manta/Atmel_maXTouch_Touchscreen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/Atmel_maXTouch_Touchscreen.idc \
    device/samsung/manta/manta-keypad.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/manta-keypad.kl \
    device/samsung/manta/manta-keypad.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/manta-keypad.kcm

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    device/samsung/manta/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    device/samsung/manta/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
    device/samsung/manta/bcmdhd.cal:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bcmdhd.cal

# Audio configuration
USE_XML_AUDIO_POLICY_CONF := 1

# audio mixer paths
PRODUCT_COPY_FILES += \
    device/samsung/manta/mixer_paths.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/mixer_paths.xml

# audio policy configuration
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    device/samsung/manta/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml

# audio effects
PRODUCT_PACKAGES += libaudience_voicefx
PRODUCT_COPY_FILES += \
    device/samsung/manta/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/fmas_eq.dat:$(TARGET_COPY_OUT_VENDOR)/etc/fmas_eq.dat \
    $(LOCAL_PATH)/libfmas.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libfmas.so

PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/samsung/manta/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/manta/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf

# BCM47511 GPS
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
#    device/samsung/manta/gps/gps.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/gps.conf \
#    device/samsung/manta/gps/gpsd:$(TARGET_COPY_OUT_VENDOR)/bin/gpsd \
#    device/samsung/manta/gps/gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gps.xml \
#    device/samsung/manta/gps/gps.manta.so:$(TARGET_COPY_OUT_SYSTEM)/lib/hw/gps.manta.so

# NFC packages
#PRODUCT_PACKAGES += \
#    android.hardware.nfc@1.0-impl \
#    nfc_nci.bcm2079x.default \
#    NfcNci \
#    Tag \
#    com.android.nfc_extras

# NFC access control + feature files + configuration
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
#    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
#    device/samsung/manta/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf

PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.manta \
    android.hardware.sensors@1.0-impl \
    sensors.manta \
    sensors.exynos5

# GNSS HAL
#PRODUCT_PACKAGES += \
#    android.hardware.gnss@1.0-impl
#
#PRODUCT_PACKAGES += \
#    gpsd_shim

PRODUCT_PACKAGES += \
    android.hardware.health@1.0-impl

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Bluetooth HAL
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# We need to build the GPS interposition library for the GPS to work, also M removes
# libstlport, but some of our binary-only prebuilts need it, so we'll add it back in
# in source and here
#PRODUCT_PACKAGES += \
#    libdmitry

PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

PRODUCT_CHARACTERISTICS := tablet,nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/samsung/manta/overlay

# for now include gralloc here. should come from hardware/samsung_slsi/exynos5
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.renderscript@1.0-impl \
    android.hardware.memtrack@1.0-impl \
    libhwc2on1adapter \
    gralloc.exynos5

PRODUCT_PACKAGES += \
    libExynosOMX_shim \
    libui_shim \
    hwcomposer.exynos5

# Overriden service definition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/android.hardware.media.omx@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.omx@1.0-service.rc

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    audio.primary.manta \
    audio.a2dp.default \
    audio.usb.default \
    libbubblelevel \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    power.manta

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    ro.opengles.version=196609 \
    ro.sf.lcd_density=320 \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024 \
    ro.hwui.disable_scissor_opt=true \
    af.fast_track_multiplier=1

# Configure ro.recents.grid
PRODUCT_PROPERTY_OVERRIDES += \
    ro.recents.grid=true

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

# Default OMX service to non-Treble
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bionic.ld.warning=0

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

PRODUCT_SHIPPING_API_LEVEL := 17

PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.enableAptX=true \
    persist.bt.enableAptXHD=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.force_gpu=1 \
    debug.egl.hw=0 \
    debug.sf.hw=0 \
    persist.sys.ui.hw=false

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=adb \
    ro.adb.secure=0

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

$(call inherit-product-if-exists, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product-if-exists, vendor/samsung/manta/manta-vendor.mk)

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4324/device-bcm.mk)
