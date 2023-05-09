---
title: ADMX_EncryptFilesonMove Policy CSP
description: Learn more about the ADMX_EncryptFilesonMove Area in Policy CSP.
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

<!-- ADMX_EncryptFilesonMove-Begin -->
# Policy CSP - ADMX_EncryptFilesonMove

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_EncryptFilesonMove-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EncryptFilesonMove-Editable-End -->

<!-- NoEncryptOnMove-Begin -->
## NoEncryptOnMove

<!-- NoEncryptOnMove-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoEncryptOnMove-Applicability-End -->

<!-- NoEncryptOnMove-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EncryptFilesonMove/NoEncryptOnMove
```
<!-- NoEncryptOnMove-OmaUri-End -->

<!-- NoEncryptOnMove-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents File Explorer from encrypting files that are moved to an encrypted folder.

- If you enable this policy setting, File Explorer will not automatically encrypt files that are moved to an encrypted folder.

- If you disable or do not configure this policy setting, File Explorer automatically encrypts files that are moved to an encrypted folder.

This setting applies only to files moved within a volume. When files are moved to other volumes, or if you create a new file in an encrypted folder, File Explorer encrypts those files automatically.
<!-- NoEncryptOnMove-Description-End -->

<!-- NoEncryptOnMove-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoEncryptOnMove-Editable-End -->

<!-- NoEncryptOnMove-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoEncryptOnMove-DFProperties-End -->

<!-- NoEncryptOnMove-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoEncryptOnMove |
| Friendly Name | Do not automatically encrypt files moved to encrypted folders |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoEncryptOnMove |
| ADMX File Name | EncryptFilesonMove.admx |
<!-- NoEncryptOnMove-AdmxBacked-End -->

<!-- NoEncryptOnMove-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoEncryptOnMove-Examples-End -->

<!-- NoEncryptOnMove-End -->

<!-- ADMX_EncryptFilesonMove-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EncryptFilesonMove-CspMoreInfo-End -->

<!-- ADMX_EncryptFilesonMove-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
