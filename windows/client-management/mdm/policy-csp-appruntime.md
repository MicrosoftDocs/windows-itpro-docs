---
title: AppRuntime Policy CSP
description: Learn more about the AppRuntime Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/04/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- AppRuntime-Begin -->
# Policy CSP - AppRuntime

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- AppRuntime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppRuntime-Editable-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Begin -->
## AllowMicrosoftAccountsToBeOptional

<!-- AllowMicrosoftAccountsToBeOptional-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowMicrosoftAccountsToBeOptional-Applicability-End -->

<!-- AllowMicrosoftAccountsToBeOptional-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppRuntime/AllowMicrosoftAccountsToBeOptional
```
<!-- AllowMicrosoftAccountsToBeOptional-OmaUri-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you control whether Microsoft accounts are optional for Windows Store apps that require an account to sign in. This policy only affects Windows Store apps that support it.

If you enable this policy setting, Windows Store apps that typically require a Microsoft account to sign in will allow users to sign in with an enterprise account instead.

If you disable or do not configure this policy setting, users will need to sign in with a Microsoft account.
<!-- AllowMicrosoftAccountsToBeOptional-Description-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountsToBeOptional-Editable-End -->

<!-- AllowMicrosoftAccountsToBeOptional-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowMicrosoftAccountsToBeOptional-DFProperties-End -->

<!-- AllowMicrosoftAccountsToBeOptional-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppxRuntimeMicrosoftAccountsOptional |
| Friendly Name | Allow Microsoft accounts to be optional |
| Location | Computer Configuration |
| Path | Windows Components > App runtime |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | MSAOptional |
| ADMX File Name | AppXRuntime.admx |
<!-- AllowMicrosoftAccountsToBeOptional-AdmxBacked-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountsToBeOptional-Examples-End -->

<!-- AllowMicrosoftAccountsToBeOptional-End -->

<!-- AppRuntime-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- AppRuntime-CspMoreInfo-End -->

<!-- AppRuntime-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
