---
title: ADMX_LocationProviderAdm Policy CSP
description: Learn more about the ADMX_LocationProviderAdm Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/03/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_LocationProviderAdm-Begin -->
# Policy CSP - ADMX_LocationProviderAdm

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_LocationProviderAdm-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!WARNING]
> Some information relates to pre-released products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.
<!-- ADMX_LocationProviderAdm-Editable-End -->

<!-- DisableWindowsLocationProvider_1-Begin -->
## DisableWindowsLocationProvider_1

<!-- DisableWindowsLocationProvider_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWindowsLocationProvider_1-Applicability-End -->

<!-- DisableWindowsLocationProvider_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LocationProviderAdm/DisableWindowsLocationProvider_1
```
<!-- DisableWindowsLocationProvider_1-OmaUri-End -->

<!-- DisableWindowsLocationProvider_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the Windows Location Provider feature for this computer.

If you enable this policy setting, the Windows Location Provider feature will be turned off, and all programs on this computer will not be able to use the Windows Location Provider feature.

If you disable or do not configure this policy setting, all programs on this computer can use the Windows Location Provider feature.
<!-- DisableWindowsLocationProvider_1-Description-End -->

<!-- DisableWindowsLocationProvider_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWindowsLocationProvider_1-Editable-End -->

<!-- DisableWindowsLocationProvider_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWindowsLocationProvider_1-DFProperties-End -->

<!-- DisableWindowsLocationProvider_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsLocationProvider |
| Friendly Name | Turn off Windows Location Provider |
| Location | Computer Configuration |
| Path | Windows Components > Location and Sensors > Windows Location Provider |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableWindowsLocationProvider |
| ADMX File Name | LocationProviderAdm.admx |
<!-- DisableWindowsLocationProvider_1-AdmxBacked-End -->

<!-- DisableWindowsLocationProvider_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWindowsLocationProvider_1-Examples-End -->

<!-- DisableWindowsLocationProvider_1-End -->

<!-- ADMX_LocationProviderAdm-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_LocationProviderAdm-CspMoreInfo-End -->

<!-- ADMX_LocationProviderAdm-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
