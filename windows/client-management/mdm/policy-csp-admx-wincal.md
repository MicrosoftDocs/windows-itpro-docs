---
title: ADMX_WinCal Policy CSP
description: Learn more about the ADMX_WinCal Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/22/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WinCal-Begin -->
# Policy CSP - ADMX_WinCal

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WinCal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinCal-Editable-End -->

<!-- TurnOffWinCal_2-Begin -->
## TurnOffWinCal_2

<!-- TurnOffWinCal_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffWinCal_2-Applicability-End -->

<!-- TurnOffWinCal_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinCal/TurnOffWinCal_2
```
<!-- TurnOffWinCal_2-OmaUri-End -->

<!-- TurnOffWinCal_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Windows Calendar is a feature that allows users to manage appointments and tasks by creating personal calendars, publishing them, and subscribing to other users calendars.

If you enable this setting, Windows Calendar will be turned off.

If you disable or do not configure this setting, Windows Calendar will be turned on.

The default is for Windows Calendar to be turned on.
<!-- TurnOffWinCal_2-Description-End -->

<!-- TurnOffWinCal_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffWinCal_2-Editable-End -->

<!-- TurnOffWinCal_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffWinCal_2-DFProperties-End -->

<!-- TurnOffWinCal_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffWinCal |
| Friendly Name | Turn off Windows Calendar |
| Location | Computer Configuration |
| Path | Windows Components > Windows Calendar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Windows |
| Registry Value Name | TurnOffWinCal |
| ADMX File Name | WinCal.admx |
<!-- TurnOffWinCal_2-AdmxBacked-End -->

<!-- TurnOffWinCal_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffWinCal_2-Examples-End -->

<!-- TurnOffWinCal_2-End -->

<!-- TurnOffWinCal_1-Begin -->
## TurnOffWinCal_1

<!-- TurnOffWinCal_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffWinCal_1-Applicability-End -->

<!-- TurnOffWinCal_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WinCal/TurnOffWinCal_1
```
<!-- TurnOffWinCal_1-OmaUri-End -->

<!-- TurnOffWinCal_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Windows Calendar is a feature that allows users to manage appointments and tasks by creating personal calendars, publishing them, and subscribing to other users calendars.

If you enable this setting, Windows Calendar will be turned off.

If you disable or do not configure this setting, Windows Calendar will be turned on.

The default is for Windows Calendar to be turned on.
<!-- TurnOffWinCal_1-Description-End -->

<!-- TurnOffWinCal_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffWinCal_1-Editable-End -->

<!-- TurnOffWinCal_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffWinCal_1-DFProperties-End -->

<!-- TurnOffWinCal_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffWinCal |
| Friendly Name | Turn off Windows Calendar |
| Location | User Configuration |
| Path | Windows Components > Windows Calendar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Windows |
| Registry Value Name | TurnOffWinCal |
| ADMX File Name | WinCal.admx |
<!-- TurnOffWinCal_1-AdmxBacked-End -->

<!-- TurnOffWinCal_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffWinCal_1-Examples-End -->

<!-- TurnOffWinCal_1-End -->

<!-- ADMX_WinCal-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinCal-CspMoreInfo-End -->

<!-- ADMX_WinCal-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
