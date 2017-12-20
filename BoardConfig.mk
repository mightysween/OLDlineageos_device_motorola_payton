# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

#Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno508
TARGET_SLSI_VARIANT := cm

#Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

#Device Assert
TARGET_OTA_ASSERT_DEVICE := payton,payton_sprout,xt1900-1

#Device Tree & Include Paths
DEVICE_PATH := device/motorola/payton
TARGET_SPECIFIC_HEADER_PATH +=$(DEVICE_PATH)/include

#Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

#Hardware
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw

#Init
#TARGET_INIT_VENDOR_LIB := 
TARGET_UNIFIED_DEVICE := true

#Kernel
TARGET_PREBUILT_KERNEL := device/motorola/payton/kernel
BOARD_KERNEL_IMAGE_NAME := device/motorola/payton/kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 4096
#BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 androidboot.hab.csv=1 androidboot.hab.product=payton androidboot.hab.cid=50 buildvariant=user veritykeyid=id:b640f6ee9102b88daa3450b13ef25fc9eb143d63
BOARD_MKBOOTIMG_ARGS := --base 0x00000000 --pagesize 4096 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100   --cmdline 'console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 androidboot.hab.csv=1 androidboot.hab.product=payton androidboot.hab.cid=50 buildvariant=user veritykeyid=id:b640f6ee9102b88daa3450b13ef25fc9eb143d63'  

#Partitions
BOARD_HAS_NO_MISC_PARTITION := false
TARGET_USERIMAGES_USE_EXT4 := true 
BOARD_BOOTIMAGE_PARTITION_SIZE := 268238848
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 17314086912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 82996817920
BOARD_OEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_PERSISTIMAGE_PARTITION_SIZE := 134217728
BOARD_FLASH_BLOCK_SIZE := 131072

#Recovery
TARGET_RECOVERY_FSTAB := device/motorola/payton/recovery/recovery.fstab

#Other
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
AB_OTA_UPDATER := true
USE_OPENGL_RENDERER := true

#Vendor
-include vendor/motorola/payton/BoardConfigVendor.mk
