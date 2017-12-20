# Inherit device configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/motorola/payton/device_payton.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := payton
PRODUCT_NAME := lineage_payton
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
