# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
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

# -----------------------------------------------------------------
# Lineage OTA update package

CIRCLE_TARGET_PACKAGE := $(PRODUCT_OUT)/ProjectCiRCLE-$(CIRCLE_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

$(CIRCLE_TARGET_PACKAGE): $(INTERNAL_OTA_PACKAGE_TARGET)
	@echo "Thanks for tuning in!" >&2
	@echo "" >&2
	$(hide) cp -f $(INTERNAL_OTA_PACKAGE_TARGET) $(CIRCLE_TARGET_PACKAGE)
	$(hide) $(SHA256) $(CIRCLE_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CIRCLE_TARGET_PACKAGE).sha256sum
	@echo "Good work! You can find your recording here:" >&2
	@echo "$(CIRCLE_TARGET_PACKAGE)" >&2
	@echo "" >&2
	@echo "If there are any problems, don't hesitate to reach out! Enjoy!" >&2

.PHONY: live bacon
live: $(CIRCLE_TARGET_PACKAGE) $(DEFAULT_GOAL)

bacon:
	@vendor/circle/build/tools/lineage_build_compat.sh
