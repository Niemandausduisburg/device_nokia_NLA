#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/NLA

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# Audio
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
TARGET_DISABLE_BLUETOOTH_LE_READ_BUFFER_SIZE_V2 := true
TARGET_DISABLE_BLUETOOTH_LE_SET_HOST_FEATURE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8998
TARGET_NO_BOOTLOADER := true

# Build system
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true

# Camera
MALLOC_SVELTE_FOR_LIBC32 := true
DEVICE_SPECIFIC_CAMERA_PATH := $(DEVICE_PATH)/camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
USE_DISPLAY_SERVICE := true

# Display
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_SCREEN_DENSITY := 520
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
BOARD_HAVE_QCOM_FM := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
LOC_HIDL_VERSION := 4.0

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3 sched_enable_hmp=0 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1 swiotlb=2048 androidboot.configfs=true
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3 loop.max_part=7 kpti=off
BOARD_KERNEL_CMDLINE += androidboot.fstab_suffix=qcom cgroup_disable=pressure
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/1da4000.ufshc
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := lineageos_NLA_defconfig
TARGET_KERNEL_SOURCE := kernel/nokia/msm8998
TARGET_KERNEL_VERSION := 4.4

TARGET_KERNEL_CLANG_VERSION := neutron
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_ADDITIONAL_FLAGS := LLVM=1
TARGET_KERNEL_ADDITIONAL_FLAGS := LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip

# Malloc
MALLOC_SVELTE := true

# ART
ART_BUILD_TARGET_NDEBUG := true
ART_BUILD_TARGET_DEBUG := false
ART_BUILD_HOST_NDEBUG := true
ART_BUILD_HOST_DEBUG := false

# Health
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH := /sys/class/power_supply/battery/charging_enabled

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_NLA

# OTA-Assert
TARGET_OTA_ASSERT_DEVICE := NB1,NLA

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_RECOVERY := true

# Platform
TARGET_BOARD_PLATFORM := msm8998

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Radio
ENABLE_VENDOR_RIL_SERVICE := true

# Recovery
TARGET_RECOVERY_DENSITY := xxhdpi
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_UI_BLANK_UNBLANK_ON_INIT := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Root
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist

# Sepolicy
include device/qcom/sepolicy-legacy-um/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private

# Treble
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_COPY_OUT_VENDOR := vendor

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2022-10-01

# Wifi
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WIFI_AVOID_IFACE_RESET_MAC_CHANGE := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit the proprietary files
include vendor/nokia/NLA/BoardConfigVendor.mk
