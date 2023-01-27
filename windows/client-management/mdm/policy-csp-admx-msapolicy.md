---
title: ADMX_MSAPolicy Policy CSP
description: Learn more about the ADMX_MSAPolicy Area in Policy CSP.
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

<!-- ADMX_MSAPolicy-Begin -->
# Policy CSP - ADMX_MSAPolicy

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_MSAPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSAPolicy-Editable-End -->

<!-- MicrosoftAccount_DisableUserAuth-Begin -->
## MicrosoftAccount_DisableUserAuth

<!-- MicrosoftAccount_DisableUserAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftAccount_DisableUserAuth-Applicability-End -->

<!-- MicrosoftAccount_DisableUserAuth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSAPolicy/MicrosoftAccount_DisableUserAuth
```
<!-- MicrosoftAccount_DisableUserAuth-OmaUri-End -->

<!-- MicrosoftAccount_DisableUserAuth-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting controls whether users can provide Microsoft accounts for authentication for applications or services.
- If this setting is enabled, all applications and services on the device are prevented from using Microsoft accounts for authentication.
This applies both to existing users of a device and new users who may be added. However, any application or service that has already authenticated a user will not be affected by enabling this setting until the authentication cache expires.
It is recommended to enable this setting before any user signs in to a device to prevent cached tokens from being present.
- If this setting is disabled or not configured, applications and services can use Microsoft accounts for authentication.
By default, this setting is Disabled. This setting does not affect whether users can sign in to devices by using Microsoft accounts, or the ability for users to provide Microsoft accounts via the browser for authentication with web-based applications.
<!-- MicrosoftAccount_DisableUserAuth-Description-End -->

<!-- MicrosoftAccount_DisableUserAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftAccount_DisableUserAuth-Editable-End -->

<!-- MicrosoftAccount_DisableUserAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftAccount_DisableUserAuth-DFProperties-End -->

<!-- MicrosoftAccount_DisableUserAuth-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftAccount_DisableUserAuth |
| Friendly Name | Block all consumer Microsoft account user authentication |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft account |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftAccount |
| Registry Value Name | DisableUserAuth |
| ADMX File Name | MSAPolicy.admx |
<!-- MicrosoftAccount_DisableUserAuth-AdmxBacked-End -->

<!-- MicrosoftAccount_DisableUserAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftAccount_DisableUserAuth-Examples-End -->

<!-- MicrosoftAccount_DisableUserAuth-End -->

<!-- ADMX_MSAPolicy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSAPolicy-CspMoreInfo-End -->

<!-- ADMX_MSAPolicy-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
