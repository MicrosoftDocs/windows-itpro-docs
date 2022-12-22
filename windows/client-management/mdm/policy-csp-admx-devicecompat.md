---
title: ADMX_DeviceCompat Policy CSP
description: Learn more about the ADMX_DeviceCompat Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/21/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DeviceCompat-Begin -->
# Policy CSP - ADMX_DeviceCompat

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_DeviceCompat-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceCompat-Editable-End -->

<!-- DeviceFlags-Begin -->
## DeviceFlags

<!-- DeviceFlags-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceFlags-DFProperties-End -->

<!-- DeviceFlags-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DriverShims-DFProperties-End -->

<!-- DriverShims-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

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
