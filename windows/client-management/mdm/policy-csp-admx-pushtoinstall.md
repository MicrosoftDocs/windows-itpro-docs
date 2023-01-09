---
title: ADMX_PushToInstall Policy CSP
description: Learn more about the ADMX_PushToInstall Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_PushToInstall-Begin -->
# Policy CSP - ADMX_PushToInstall

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_PushToInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PushToInstall-Editable-End -->

<!-- DisablePushToInstall-Begin -->
## DisablePushToInstall

<!-- DisablePushToInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisablePushToInstall-Applicability-End -->

<!-- DisablePushToInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PushToInstall/DisablePushToInstall
```
<!-- DisablePushToInstall-OmaUri-End -->

<!-- DisablePushToInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
- If you enable this setting, users will not be able to push Apps to this device from the Microsoft Store running on other devices or the web.
<!-- DisablePushToInstall-Description-End -->

<!-- DisablePushToInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePushToInstall-Editable-End -->

<!-- DisablePushToInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisablePushToInstall-DFProperties-End -->

<!-- DisablePushToInstall-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePushToInstall |
| Friendly Name | Turn off Push To Install service |
| Location | Computer Configuration |
| Path | Windows Components > Push To Install |
| Registry Key Name | Software\Policies\Microsoft\PushToInstall |
| Registry Value Name | DisablePushToInstall |
| ADMX File Name | PushToInstall.admx |
<!-- DisablePushToInstall-AdmxBacked-End -->

<!-- DisablePushToInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePushToInstall-Examples-End -->

<!-- DisablePushToInstall-End -->

<!-- ADMX_PushToInstall-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PushToInstall-CspMoreInfo-End -->

<!-- ADMX_PushToInstall-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
