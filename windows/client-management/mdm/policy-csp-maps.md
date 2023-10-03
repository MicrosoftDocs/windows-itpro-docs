---
title: Maps Policy CSP
description: Learn more about the Maps Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Maps-Begin -->
# Policy CSP - Maps

<!-- Maps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Maps-Editable-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-Begin -->
## AllowOfflineMapsDownloadOverMeteredConnection

<!-- AllowOfflineMapsDownloadOverMeteredConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowOfflineMapsDownloadOverMeteredConnection-Applicability-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Maps/AllowOfflineMapsDownloadOverMeteredConnection
```
<!-- AllowOfflineMapsDownloadOverMeteredConnection-OmaUri-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the download and update of map data over metered connections. After the policy is applied, you can verify the settings in the user interface in System > Offline Maps.
<!-- AllowOfflineMapsDownloadOverMeteredConnection-Description-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowOfflineMapsDownloadOverMeteredConnection-Editable-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 65535 |
<!-- AllowOfflineMapsDownloadOverMeteredConnection-DFProperties-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. Force disable auto-update over metered connection. |
| 1 | Enabled. Force enable auto-update over metered connection. |
| 65535 (Default) | Not configured. User's choice. |
<!-- AllowOfflineMapsDownloadOverMeteredConnection-AllowedValues-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowOfflineMapsDownloadOverMeteredConnection-Examples-End -->

<!-- AllowOfflineMapsDownloadOverMeteredConnection-End -->

<!-- EnableOfflineMapsAutoUpdate-Begin -->
## EnableOfflineMapsAutoUpdate

<!-- EnableOfflineMapsAutoUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- EnableOfflineMapsAutoUpdate-Applicability-End -->

<!-- EnableOfflineMapsAutoUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Maps/EnableOfflineMapsAutoUpdate
```
<!-- EnableOfflineMapsAutoUpdate-OmaUri-End -->

<!-- EnableOfflineMapsAutoUpdate-Description-Begin -->
<!-- Description-Source-DDF -->
Disables the automatic download and update of map data. After the policy is applied, you can verify the settings in the user interface in System > Offline Maps.
<!-- EnableOfflineMapsAutoUpdate-Description-End -->

<!-- EnableOfflineMapsAutoUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableOfflineMapsAutoUpdate-Editable-End -->

<!-- EnableOfflineMapsAutoUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 65535 |
<!-- EnableOfflineMapsAutoUpdate-DFProperties-End -->

<!-- EnableOfflineMapsAutoUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. Force off auto-update. |
| 1 | Enabled. Force on auto-update. |
| 65535 (Default) | Not configured. User's choice. |
<!-- EnableOfflineMapsAutoUpdate-AllowedValues-End -->

<!-- EnableOfflineMapsAutoUpdate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffAutoUpdate |
| Friendly Name | Turn off Automatic Download and Update of Map Data |
| Location | Computer Configuration |
| Path | Windows Components > Maps |
| Registry Key Name | Software\Policies\Microsoft\Windows\Maps |
| Registry Value Name | AutoDownloadAndUpdateMapData |
| ADMX File Name | WinMaps.admx |
<!-- EnableOfflineMapsAutoUpdate-GpMapping-End -->

<!-- EnableOfflineMapsAutoUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableOfflineMapsAutoUpdate-Examples-End -->

<!-- EnableOfflineMapsAutoUpdate-End -->

<!-- Maps-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Maps-CspMoreInfo-End -->

<!-- Maps-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
