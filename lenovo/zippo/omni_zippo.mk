#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


PRODUCT_RELEASE_NAME := zippo
PRODUCT_DEVICE := zippo
PRODUCT_NAME := omni_zippo
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L78051
PRODUCT_MANUFACTURER := Lenovo

ALLOW_MISSING_DEPENDENCIES := true

$(call inherit-product, build/target/product/embedded.mk)
# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/kernel:kernel \
$(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab 

 

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=zippo \
    BUILD_PRODUCT=zippo \
    TARGET_DEVICE=zippo



# Boot control HAL

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-06-01
