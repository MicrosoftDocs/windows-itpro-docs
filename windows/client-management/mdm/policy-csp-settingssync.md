---
title: SettingsSync Policy CSP
description: Learn more about the SettingsSync Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- SettingsSync-Begin -->
# Policy CSP - SettingsSync

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

> [!IMPORTANT]
> This CSP contains preview policies that are under development and only applicable for [Windows Insider Preview builds](/windows-insider/). These policies are subject to change and may have dependencies on other features or services in preview.

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
<!-- Description-Source-ADMX -->
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
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows Insider Preview |
<!-- DisableLanguageSettingSync-Applicability-End -->

<!-- DisableLanguageSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SettingsSync/DisableLanguageSettingSync
```
<!-- DisableLanguageSettingSync-OmaUri-End -->

<!-- DisableLanguageSettingSync-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- DisableLanguageSettingSync-Description-End -->

<!-- DisableLanguageSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLanguageSettingSync-Editable-End -->

<!-- DisableLanguageSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLanguageSettingSync-DFProperties-End -->

<!-- DisableLanguageSettingSync-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLanguageSettingSync |
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
