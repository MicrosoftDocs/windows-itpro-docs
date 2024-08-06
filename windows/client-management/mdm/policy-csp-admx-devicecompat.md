---
title: ADMX_DeviceCompat Policy CSP
description: Learn more about the ADMX_DeviceCompat Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DeviceCompat-Begin -->
# Policy CSP - ADMX_DeviceCompat

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DeviceCompat-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceCompat-Editable-End -->

<!-- DeviceFlags-Begin -->
## DeviceFlags

<!-- DeviceFlags-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceFlags-Applicability-End -->

<!-- DeviceFlags-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceCompat/DeviceFlags
```
<!-- DeviceFlags-OmaUri-End -->

<!-- DeviceFlags-Description-Begin -->
<!-- Description-Source-ADMX -->
Changes behavior of Microsoft bus drivers to work with specific devices.
<!-- DeviceFlags-Description-End -->

<!-- DeviceFlags-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceFlags-Editable-End -->

<!-- DeviceFlags-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceFlags-DFProperties-End -->

<!-- DeviceFlags-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceFlags |
| Friendly Name | Device compatibility settings |
| Location | Computer Configuration |
| Path | Windows Components > Device and Driver Compatibility |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\Compatibility |
| Registry Value Name | DisableDeviceFlags |
| ADMX File Name | DeviceCompat.admx |
<!-- DeviceFlags-AdmxBacked-End -->

<!-- DeviceFlags-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceFlags-Examples-End -->

<!-- DeviceFlags-End -->

<!-- DriverShims-Begin -->
## DriverShims

<!-- DriverShims-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DriverShims-Applicability-End -->

<!-- DriverShims-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceCompat/DriverShims
```
<!-- DriverShims-OmaUri-End -->

<!-- DriverShims-Description-Begin -->
<!-- Description-Source-ADMX -->
Changes behavior of 3rd-party drivers to work around incompatibilities introduced between OS versions.
<!-- DriverShims-Description-End -->

<!-- DriverShims-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DriverShims-Editable-End -->

<!-- DriverShims-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DriverShims-DFProperties-End -->

<!-- DriverShims-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DriverShims |
| Friendly Name | Driver compatibility settings |
| Location | Computer Configuration |
| Path | Windows Components > Device and Driver Compatibility |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\Compatibility |
| Registry Value Name | DisableDriverShims |
| ADMX File Name | DeviceCompat.admx |
<!-- DriverShims-AdmxBacked-End -->

<!-- DriverShims-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DriverShims-Examples-End -->

<!-- DriverShims-End -->

<!-- ADMX_DeviceCompat-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceCompat-CspMoreInfo-End -->

<!-- ADMX_DeviceCompat-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
