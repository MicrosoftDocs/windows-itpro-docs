---
title: ADMX_SystemRestore Policy CSP
description: Learn more about the ADMX_SystemRestore Area in Policy CSP.
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

<!-- ADMX_SystemRestore-Begin -->
# Policy CSP - ADMX_SystemRestore

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_SystemRestore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_SystemRestore-Editable-End -->

<!-- SR_DisableConfig-Begin -->
## SR_DisableConfig

<!-- SR_DisableConfig-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- SR_DisableConfig-Applicability-End -->

<!-- SR_DisableConfig-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SystemRestore/SR_DisableConfig
```
<!-- SR_DisableConfig-OmaUri-End -->

<!-- SR_DisableConfig-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to disable System Restore configuration through System Protection.

This policy setting allows you to turn off System Restore configuration through System Protection.

System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. The behavior of this policy setting depends on the "Turn off System Restore" policy setting.

- If you enable this policy setting, the option to configure System Restore through System Protection is disabled.

- If you disable or do not configure this policy setting, users can change the System Restore settings through System Protection.

Also, see the "Turn off System Restore" policy setting. If the "Turn off System Restore" policy setting is enabled, the "Turn off System Restore configuration" policy setting is overwritten.
<!-- SR_DisableConfig-Description-End -->

<!-- SR_DisableConfig-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SR_DisableConfig-Editable-End -->

<!-- SR_DisableConfig-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SR_DisableConfig-DFProperties-End -->

<!-- SR_DisableConfig-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SR_DisableConfig |
| Friendly Name | Turn off Configuration |
| Location | Computer Configuration |
| Path | System > System Restore |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SystemRestore |
| Registry Value Name | DisableConfig |
| ADMX File Name | SystemRestore.admx |
<!-- SR_DisableConfig-AdmxBacked-End -->

<!-- SR_DisableConfig-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SR_DisableConfig-Examples-End -->

<!-- SR_DisableConfig-End -->

<!-- ADMX_SystemRestore-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_SystemRestore-CspMoreInfo-End -->

<!-- ADMX_SystemRestore-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
