---
title: ADMX_WordWheel Policy CSP
description: Learn more about the ADMX_WordWheel Area in Policy CSP.
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

<!-- ADMX_WordWheel-Begin -->
# Policy CSP - ADMX_WordWheel

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WordWheel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WordWheel-Editable-End -->

<!-- CustomSearch-Begin -->
## CustomSearch

<!-- CustomSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomSearch-Applicability-End -->

<!-- CustomSearch-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WordWheel/CustomSearch
```
<!-- CustomSearch-OmaUri-End -->

<!-- CustomSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
Set up the menu name and URL for the custom Internet search provider.

- If you enable this setting, the specified menu name and URL will be used for Internet searches.

- If you disable or not configure this setting, the default Internet search provider will be used.
<!-- CustomSearch-Description-End -->

<!-- CustomSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomSearch-Editable-End -->

<!-- CustomSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomSearch-DFProperties-End -->

<!-- CustomSearch-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomSearch |
| Friendly Name | Custom Instant Search Internet search provider |
| Location | User Configuration |
| Path | Windows Components > Instant Search |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\SearchExtensions |
| ADMX File Name | WordWheel.admx |
<!-- CustomSearch-AdmxBacked-End -->

<!-- CustomSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomSearch-Examples-End -->

<!-- CustomSearch-End -->

<!-- ADMX_WordWheel-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WordWheel-CspMoreInfo-End -->

<!-- ADMX_WordWheel-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
