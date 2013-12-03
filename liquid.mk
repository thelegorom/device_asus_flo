
#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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

# boot
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# device
$(call inherit-product, device/asus/flo/full_flo.mk)

# tablet
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# product
PRODUCT_DEVICE := flo
PRODUCT_BRAND := Google
PRODUCT_NAME := liquid_flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.flo.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=920375 \
    PRODUCT_NAME=razor \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="razor-user 4.4 KRT16S 920375 release-keys" \
    BUILD_FINGERPRINT="google/razor/flo:4.4/KRT16S/920375:user/release-keys"
