# inherit corsica vendor config
-include vendor/nvidia/tegratab/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t114
TARGET_TEGRA_FAMILY := t11x
TARGET_CPU_VARIANT := cortex-a15

# CPU options
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
#TARGET_USE_TEGRA_BIONIC_OPTIMIZATION := true
#TARGET_USE_TEGRA11_MEMCPY_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Skip droiddoc build to save build time
#BOARD_SKIP_ANDROID_DOC_BUILD := true

#BOARD_BUILD_BOOTLOADER := true
#TARGET_USE_DTB := true
#TARGET_KERNEL_DT_NAME := tegra114-tegratab
#BOOTLOADER_SUPPORTS_DTB := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORT_NVOICE := true
#BOARD_SUPPORT_NVAUDIOFX := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13600030720
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_KERNEL_CONFIG := tegra_tegratab_android_defconfig

USE_E2FSPROGS := true
USE_OPENGL_RENDERER := true

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/nvidia/tegratab/bluetooth
BOARD_HAVE_BLUETOOTH := true

BOARD_HAVE_TI_BLUETOOTH := true

USE_CAMERA_STUB := false

# mediaplayer
BOARD_USES_HW_MEDIAPLUGINS := false
BOARD_USES_HW_MEDIASCANNER := false
BOARD_USES_HW_MEDIARECORDER := false

# powerhal
BOARD_USES_POWERHAL := true

# Wifi related defines
BOARD_WLAN_DEVICE           := wl18xx_mac80211
BOARD_SOFTAP_DEVICE         := wl18xx_mac80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_TI_0_8_X
BOARD_HOSTAPD_DRIVER        := NL80211
WIFI_DRIVER_MODULE_NAME     := "wlcore_sdio"
WIFI_FIRMWARE_LOADER        := ""

# Default HDMI mirror mode
# Crop (default) picks closest mode, crops to screen resolution
# Scale picks closest mode, scales to screen resolution (aspect preserved)
# Center picks a mode greater than or equal to the panel size and centers;
#     if no suitable mode is available, reverts to scale
BOARD_HDMI_MIRROR_MODE := Scale

# This should be set to true for boards that support 3DVision.
BOARD_HAS_3DV_SUPPORT := false

# Double buffered display surfaces reduce memory usage, but will decrease performance.
# The default is to triple buffer the display surfaces.
# BOARD_DISABLE_TRIPLE_BUFFERED_DISPLAY_SURFACES := true

BOARD_ROOT_DEVICE := emmc

-include 3rdparty/trustedlogic/samples/hdcp/tegra3/build/arm_android/config.mk

# BOARD_WIDEVINE_OEMCRYPTO_LEVEL
# The security level of the content protection provided by the Widevine DRM plugin depends
# on the security capabilities of the underlying hardware platform.
# There are Level 1/2/3. To run HD contents, should be Widevine level 1 security.
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1

# Dalvik option
DALVIK_ENABLE_DYNAMIC_GC := true

# NCT related defines
# bootloader/kernel
TARGET_USE_NCT := true

# Max panel brightness in the first device boot for OOBE
# BOARD_FIRST_MAX_BRIGHTNESS_FOR_OOBE := true

# Charger disable init blank
# BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CMU enable forcibly from Android
BOARD_CMU_ENABLE_FROM_ANDROID_BOOT := true

# Charger show animation when key down
BOARD_CHARGER_KEYDOWN_KICK_ANIMATION := true

# Charger immediatley power down when chager unplug
BOARD_CHARGER_UNPLUGGED_SHUTDOWN_PROMPTLY := true

# Enable PRISM toggle switch in menu
BOARD_PRISM_TOGGLE_SWITCH_ENABLED := true

# board specific sepolicy
BOARD_SEPOLICY_DIRS := device/nvidia/tegratab/sepolicy

BOARD_SEPOLICY_UNION := healthd.te \
    installd.te \
    netd.te \
    untrusted_app.te \
    vold.te

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_FSTAB := device/nvidia/tegratab/recovery/recovery.fstab
BOARD_CUSTOM_GRAPHICS := ../../../device/nvidia/tegratab/recovery/graphics.c
DEVICE_RESOLUTION := 1200x800
BOARD_HAS_NO_SELECT_BUTTON := true

# RES
TARGET_SCREEN_HEIGHT := 1200 
TARGET_SCREEN_WIDTH := 800

