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
    device/samsung/manta/init.recovery.manta.rc:root/init.recovery.manta.rc \
    device/samsung/manta/fstab.manta:root/fstab.manta \
    device/samsung/manta/ueventd.manta.rc:root/ueventd.manta.rc \
    device/samsung/manta/twrp.fstab:recovery/root/etc/twrp.fstab

# Input device files for manta
PRODUCT_COPY_FILES += \
    device/samsung/manta/Atmel_maXTouch_Touchscreen.idc:system/usr/idc/Atmel_maXTouch_Touchscreen.idc \
    device/samsung/manta/manta-keypad.kl:system/usr/keylayout/manta-keypad.kl \
    device/samsung/manta/manta-keypad.kcm:system/usr/keychars/manta-keypad.kcm

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    device/samsung/manta/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/samsung/manta/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/manta/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
    device/samsung/manta/bcmdhd.cal:system/vendor/etc/wifi/bcmdhd.cal

# audio mixer paths
PRODUCT_COPY_FILES += \
    device/samsung/manta/mixer_paths.xml:system/etc/mixer_paths.xml

# audio policy configuration
PRODUCT_COPY_FILES += \
    device/samsung/manta/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/samsung/manta/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/manta/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf

# audio effects
PRODUCT_PACKAGES += libaudience_voicefx
PRODUCT_COPY_FILES += \
    device/samsung/manta/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/fmas_eq.dat:system/vendor/etc/fmas_eq.dat \
    $(LOCAL_PATH)/libfmas.so:system/vendor/lib/soundfx/libfmas.so

# BCM47511 GPS
PRODUCT_COPY_FILES += \
    device/samsung/manta/gps/gps.conf:system/etc/gps.conf \
    device/samsung/manta/gps/gpsd:system/vendor/bin/gpsd \
    device/samsung/manta/gps/gps.xml:system/vendor/etc/gps.xml \
    device/samsung/manta/gps/gps.manta.so:system/lib/hw/gps.manta.so

# NFC packages
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    device/samsung/manta/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf

PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.manta \
    android.hardware.sensors@1.0-impl \
    sensors.manta \
    sensors.exynos5

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

PRODUCT_PACKAGES += \
    gpsd_shim

PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl

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
PRODUCT_PACKAGES += \
    libdmitry

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
    $(LOCAL_PATH)/configs/init/android.hardware.media.omx@1.0-service.rc:system/vendor/etc/init/android.hardware.media.omx@1.0-service.rc

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
    ro.opa.eligible_device=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=17

PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.enableAptX=true \
    persist.bt.enableAptXHD=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.force_gpu=1 \
    debug.egl.hw=0 \
    debug.sf.hw=0 \
    persist.sys.ui.hw=false

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

$(call inherit-product-if-exists, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product-if-exists, vendor/samsung/manta/manta-vendor.mk)

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4324/device-bcm.mk)
