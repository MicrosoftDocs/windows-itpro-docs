---
title: SettingsSync Policy CSP
description: Learn more about the SettingsSync CSP Policy
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 11/01/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.reviewer:
ms.technology: itpro-manage
ms.topic: article
---

<!-- Auto-Generated CSP Document -->

<!-- SettingsSync-Begin -->
# Policy CSP - SettingsSync

<!-- SettingsSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SettingsSync-Editable-End -->

<!-- DisableAccessibilitySettingSync-Begin -->
## DisableAccessibilitySettingSync

<!-- DisableAccessibilitySettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows Insider Preview |
<!-- DisableAccessibilitySettingSync-Applicability-End -->

<!-- DisableAccessibilitySettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SettingsSync/DisableAccessibilitySettingSync
```
<!-- DisableAccessibilitySettingSync-OmaUri-End -->

<!-- DisableAccessibilitySettingSync-Description-Begin -->
Prevent the "accessibility" group from syncing to and from this PC. This turns off and disables the "accessibility" group on the "Windows backup" settings page in PC settings.

If you enable this policy setting, the "accessibility", group will not be synced.

Use the option "Allow users to turn accessibility syncing on" so that syncing is turned off by default but not disabled.

If you do not set or disable this setting, syncing of the "accessibility" group is on by default and configurable by the user.
<!-- DisableAccessibilitySettingSync-Description-End -->

<!-- DisableAccessibilitySettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAccessibilitySettingSync-Editable-End -->

<!-- DisableAccessibilitySettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAccessibilitySettingSync-DFProperties-End -->

<!-- DisableAccessibilitySettingSync-AdmxBacked-Begin -->
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

<!-- SettingsSync-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SettingsSync-CspMoreInfo-End -->

<!-- SettingsSync-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
