#
# Copyright (C) 2024 The RisingOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common RisingOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#EPPE
TARGET_DISABLE_EPPE := true

# RisingOS Stuffs
RISING_BUILDTYPE := OFFICIAL
RISING_MAINTAINER := AAMIRR ALI
RISING_CHIPSET := SDM865-5G
RISING_DEVICE := bladerunner
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
PRODUCT_NO_CAMERA := false
USER_BUILD_NO_CHANGELOG := 1


PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon® 865 5G" \
    RISING_MAINTAINER="AAMIR_ALI" \
    RISING_DEVICE="bladerunner"


# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_bladerunner
PRODUCT_DEVICE := bladerunner
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2076
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX2076
PRODUCT_SYSTEM_DEVICE := RMX2076L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2076-user 12 RKQ1.211103.002 Q.202207142209 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX2076/RMX2076L1:12/RKQ1.211103.002/Q.202207142209:user/release-keys
