---
title: ADMX_DFS Policy CSP
description: Learn more about the ADMX_DFS Area in Policy CSP.
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

<!-- ADMX_DFS-Begin -->
# Policy CSP - ADMX_DFS

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_DFS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DFS-Editable-End -->

<!-- DFSDiscoverDC-Begin -->
## DFSDiscoverDC

<!-- DFSDiscoverDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DFSDiscoverDC-Applicability-End -->

<!-- DFSDiscoverDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DFS/DFSDiscoverDC
```
<!-- DFSDiscoverDC-OmaUri-End -->

<!-- DFSDiscoverDC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure how often a Distributed File System (DFS) client attempts to discover domain controllers on a network. By default, a DFS client attempts to discover domain controllers every 15 minutes.

- If you enable this policy setting, you can configure how often a DFS client attempts to discover domain controllers. This value is specified in minutes.

- If you disable or do not configure this policy setting, the default value of 15 minutes applies.

> [!NOTE]
> The minimum value you can select is 15 minutes. If you try to set this setting to a value less than 15 minutes, the default value of 15 minutes is applied.
<!-- DFSDiscoverDC-Description-End -->

<!-- DFSDiscoverDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DFSDiscoverDC-Editable-End -->

<!-- DFSDiscoverDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DFSDiscoverDC-DFProperties-End -->

<!-- DFSDiscoverDC-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DFSDiscoverDC |
| Friendly Name | Configure how often a DFS client discovers domain controllers |
| Location | Computer Configuration |
| Path | Network |
| Registry Key Name | Software\Policies\Microsoft\System\DFSClient |
| ADMX File Name | DFS.admx |
<!-- DFSDiscoverDC-AdmxBacked-End -->

<!-- DFSDiscoverDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DFSDiscoverDC-Examples-End -->

<!-- DFSDiscoverDC-End -->

<!-- ADMX_DFS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DFS-CspMoreInfo-End -->

<!-- ADMX_DFS-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
