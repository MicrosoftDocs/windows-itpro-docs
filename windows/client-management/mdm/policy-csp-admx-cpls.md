---
title: ADMX_Cpls Policy CSP
description: Learn more about the ADMX_Cpls Area in Policy CSP.
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

<!-- ADMX_Cpls-Begin -->
# Policy CSP - ADMX_Cpls

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Cpls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Cpls-Editable-End -->

<!-- UseDefaultTile-Begin -->
## UseDefaultTile

<!-- UseDefaultTile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- UseDefaultTile-Applicability-End -->

<!-- UseDefaultTile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Cpls/UseDefaultTile
```
<!-- UseDefaultTile-OmaUri-End -->

<!-- UseDefaultTile-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows an administrator to standardize the account pictures for all users on a system to the default account picture. One application for this policy setting is to standardize the account pictures to a company logo.

> [!NOTE]
> The default account picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\user.jpg. The default guest picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\guest.jpg. If the default pictures do not exist, an empty frame is displayed.

- If you enable this policy setting, the default user account picture will display for all users on the system with no customization allowed.

- If you disable or do not configure this policy setting, users will be able to customize their account pictures.
<!-- UseDefaultTile-Description-End -->

<!-- UseDefaultTile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UseDefaultTile-Editable-End -->

<!-- UseDefaultTile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UseDefaultTile-DFProperties-End -->

<!-- UseDefaultTile-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UseDefaultTile |
| Friendly Name | Apply the default account picture to all users |
| Location | Computer Configuration |
| Path | Control Panel > User Accounts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | UseDefaultTile |
| ADMX File Name | Cpls.admx |
<!-- UseDefaultTile-AdmxBacked-End -->

<!-- UseDefaultTile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UseDefaultTile-Examples-End -->

<!-- UseDefaultTile-End -->

<!-- ADMX_Cpls-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Cpls-CspMoreInfo-End -->

<!-- ADMX_Cpls-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
