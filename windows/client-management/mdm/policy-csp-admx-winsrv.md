---
title: ADMX_Winsrv Policy CSP
description: Learn more about the ADMX_Winsrv Area in Policy CSP
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

<!-- ADMX_Winsrv-Begin -->
# Policy CSP - ADMX_Winsrv

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Winsrv-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Winsrv-Editable-End -->

<!-- AllowBlockingAppsAtShutdown-Begin -->
## AllowBlockingAppsAtShutdown

<!-- AllowBlockingAppsAtShutdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowBlockingAppsAtShutdown-Applicability-End -->

<!-- AllowBlockingAppsAtShutdown-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Winsrv/AllowBlockingAppsAtShutdown
```
<!-- AllowBlockingAppsAtShutdown-OmaUri-End -->

<!-- AllowBlockingAppsAtShutdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows will allow console applications and GUI applications without visible top-level windows to block or cancel shutdown. By default, such applications are automatically terminated if they attempt to cancel shutdown or block it indefinitely.

If you enable this setting, console applications or GUI applications without visible top-level windows that block or cancel shutdown will not be automatically terminated during shutdown.

If you disable or do not configure this setting, these applications will be automatically terminated during shutdown, helping to ensure that Windows can shut down faster and more smoothly.
<!-- AllowBlockingAppsAtShutdown-Description-End -->

<!-- AllowBlockingAppsAtShutdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!-- AllowBlockingAppsAtShutdown-Editable-End -->

<!-- AllowBlockingAppsAtShutdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowBlockingAppsAtShutdown-DFProperties-End -->

<!-- AllowBlockingAppsAtShutdown-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowBlockingAppsAtShutdown |
| Friendly Name | Turn off automatic termination of applications that block or cancel shutdown |
| Location | Computer Configuration |
| Path | System > Shutdown Options |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowBlockingAppsAtShutdown |
| ADMX File Name | Winsrv.admx |
<!-- AllowBlockingAppsAtShutdown-AdmxBacked-End -->

<!-- AllowBlockingAppsAtShutdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBlockingAppsAtShutdown-Examples-End -->

<!-- AllowBlockingAppsAtShutdown-End -->

<!-- ADMX_Winsrv-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Winsrv-CspMoreInfo-End -->

<!-- ADMX_Winsrv-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
