# Copyright 2008, The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

ifeq (0,1)
include $(CLEAR_VARS)

#
# Exchange
#

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := android-common com.android.emailcommon
LOCAL_STATIC_JAVA_LIBRARIES += calendar-common

LOCAL_PACKAGE_NAME := Exchange

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_EMMA_COVERAGE_FILTER += +com.android.exchange.*

#include $(BUILD_PACKAGE)

endif

##################################################
# Build all sub-directories

include $(call all-makefiles-under,$(LOCAL_PATH))
