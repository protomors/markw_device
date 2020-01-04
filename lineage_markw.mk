# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Syberia stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from markw device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Boot animation
TARGET_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Xiaomi
PRODUCT_NAME := lineage_markw
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_DEVICE := markw
PRODUCT_MODEL := Redmi 4 Prime

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.021 4565141 release-keys" \
    TARGET_DEVICE="markw" \
    DEVICE_MAINTAINERS="FLC"
    
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.021/4565141:user/release-keys
