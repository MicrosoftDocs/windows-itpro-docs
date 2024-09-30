---
title: SettingsSync Policy CSP
description: Learn more about the SettingsSync Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- SettingsSync-Begin -->
# Policy CSP - SettingsSync

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- SettingsSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SettingsSync-Editable-End -->

<!-- DisableAccessibilitySettingSync-Begin -->
## DisableAccessibilitySettingSync

<!-- DisableAccessibilitySettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DisableAccessibilitySettingSync-Applicability-End -->

<!-- DisableAccessibilitySettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SettingsSync/DisableAccessibilitySettingSync
```
<!-- DisableAccessibilitySettingSync-OmaUri-End -->

<!-- DisableAccessibilitySettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "accessibility" group from syncing to and from this PC. This turns off and disables the "accessibility" group on the "Windows backup" settings page in PC settings.

If you enable this policy setting, the "accessibility", group won't be synced.

Use the option "Allow users to turn accessibility syncing on" so that syncing is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "accessibility" group is on by default and configurable by the user.
<!-- DisableAccessibilitySettingSync-Description-End -->

<!-- DisableAccessibilitySettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAccessibilitySettingSync-Editable-End -->

<!-- DisableAccessibilitySettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAccessibilitySettingSync-DFProperties-End -->

<!-- DisableAccessibilitySettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAccessibilitySettingSync |
| Friendly Name | Do not sync accessibility settings |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableAccessibilitySettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableAccessibilitySettingSync-AdmxBacked-End -->

<!-- DisableAccessibilitySettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAccessibilitySettingSync-Examples-End -->

<!-- DisableAccessibilitySettingSync-End -->

<!-- DisableLanguageSettingSync-Begin -->
## DisableLanguageSettingSync

<!-- DisableLanguageSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DisableLanguageSettingSync-Applicability-End -->

<!-- DisableLanguageSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SettingsSync/DisableLanguageSettingSync
```
<!-- DisableLanguageSettingSync-OmaUri-End -->

<!-- DisableLanguageSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "language preferences" group from syncing to and from this PC. This turns off and disables the "languages preferences" group on the "Windows backup" settings page in PC settings.

If you enable this policy setting, the "language preferences", group won't be synced.

Use the option "Allow users to turn language preferences syncing on" so that syncing is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "language preferences" group is on by default and configurable by the user.
<!-- DisableLanguageSettingSync-Description-End -->

<!-- DisableLanguageSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLanguageSettingSync-Editable-End -->

<!-- DisableLanguageSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLanguageSettingSync-DFProperties-End -->

<!-- DisableLanguageSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLanguageSettingSync |
| Friendly Name | Do not sync language preferences settings |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableLanguageSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableLanguageSettingSync-AdmxBacked-End -->

<!-- DisableLanguageSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLanguageSettingSync-Examples-End -->

<!-- DisableLanguageSettingSync-End -->

<!-- SettingsSync-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SettingsSync-CspMoreInfo-End -->

<!-- SettingsSync-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
