#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Screen density
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.software.controls.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.controls.xml

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.samsungexynos9810.rc

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio@1.0-impl:32 \
    android.hardware.soundtrigger@2.0-impl:32 \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudioroute \
    libtinyalsa \
    libtinycompress

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_configuration.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_default_stream_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_default_stream_volumes.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_product_strategies.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_product_strategies.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_stream_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_stream_volumes.xml \
    $(COMMON_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(COMMON_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(COMMON_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml

# SP-NDK
PRODUCT_PACKAGES += \
    libvulkan

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl:64 \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor:64 \
    audio.a2dp.default

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5-service_64.exynos9810 \
    libsensorndkbridge \
    Snap

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.graphics.mapper@2.0-impl

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.2-service.clearkey

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:64 \
    android.hardware.gatekeeper@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl:64 \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
   libhidltransport \
   libhidltransport.vendor \
   libhwbinder \
   libhwbinder.vendor

# init
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/init/fstab.samsungexynos9810:$(TARGET_COPY_OUT_RAMDISK)/fstab.samsungexynos9810 \
    $(COMMON_PATH)/configs/init/fstab.samsungexynos9810:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.samsungexynos9810 \
    $(COMMON_PATH)/configs/init/init.samsungexynos9810.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.samsungexynos9810.rc \
    $(COMMON_PATH)/configs/init/init.samsungexynos9810.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.samsungexynos9810.usb.rc \
#   $(COMMON_PATH)/configs/init/init.recovery.exynos9810.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.exynos9810.rc \ #
    $(COMMON_PATH)/configs/init/init.samsung.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.samsung.rc \
    $(COMMON_PATH)/configs/init/init.vendor.rilcommon.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.vendor.rilcommon.rc \
    $(COMMON_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nci.conf:$(TARGET_COPY_OUT_PRODUCT)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/libnfc-sec-vendor.conf

# Lights
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hidl/lights/vendor.samsung.hardware.light@3.0-service:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/bin/hw/vendor.samsung.hardware.light@3.0-service \
    $(LOCAL_PATH)/hidl/lights/vendor.samsung.hardware.light@3.0-service.rc:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/init/vendor.samsung.hardware.light@3.0-service.rc

# Vibrator
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hidl/vibrator/vendor.samsung.hardware.vibrator@2.1-service:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/bin/hw/vendor.samsung.hardware.vibrator@2.1-service \
    $(LOCAL_PATH)/hidl/vibrator/vendor.samsung.hardware.vibrator@2.1-service.rc:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/init/vendor.samsung.hardware.vibrator@2.1-service.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hidl/sensors/lib/android.hardware.sensors@1.0-impl.so:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/lib/hw/android.hardware.sensors@1.0-impl.so \
    $(LOCAL_PATH)/hidl/sensors/lib64/android.hardware.sensors@1.0-impl.so:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/lib64/hw/android.hardware.sensors@1.0-impl.so

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hidl/power/android.hardware.power@1.0-service.rc:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/init/android.hardware.power@1.0-service.rc \
    $(LOCAL_PATH)/hidl/power/android.hardware.power@1.3-service.samsung.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/vintf/manifest/android.hardware.power@1.3-service.samsung.xml \
    $(LOCAL_PATH)/hidl/power/android.hardware.power@1.3-service.samsung-libperfmgr:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/bin/hw/android.hardware.power@1.3-service.samsung-libperfmgr \
    $(LOCAL_PATH)/hidl/power/libperfmgr.so:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/lib64/libperfmgr.so \
    $(LOCAL_PATH)/hidl/power/powerhint.json:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/powerhint.json

# S-Pen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/samsung-sec_e-pen.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/sec_e-pen.idc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio_keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio_keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/sec_touchscreen.kl

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Call proprietary blob setup
$(call inherit-product, vendor/samsung/universal9810-common/universal9810-common-vendor.mk)
