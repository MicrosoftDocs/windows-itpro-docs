---
title: ADMX_EventLogging Policy CSP
description: Learn more about the ADMX_EventLogging Area in Policy CSP.
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

<!-- ADMX_EventLogging-Begin -->
# Policy CSP - ADMX_EventLogging

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_EventLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventLogging-Editable-End -->

<!-- EnableProtectedEventLogging-Begin -->
## EnableProtectedEventLogging

<!-- EnableProtectedEventLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableProtectedEventLogging-Applicability-End -->

<!-- EnableProtectedEventLogging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLogging/EnableProtectedEventLogging
```
<!-- EnableProtectedEventLogging-OmaUri-End -->

<!-- EnableProtectedEventLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure Protected Event Logging.

- If you enable this policy setting, components that support it will use the certificate you supply to encrypt potentially sensitive event log data before writing it to the event log. Data will be encrypted using the Cryptographic Message Syntax (CMS) standard and the public key you provide. You can use the Unprotect-CmsMessage PowerShell cmdlet to decrypt these encrypted messages, provided that you have access to the private key corresponding to the public key that they were encrypted with.

- If you disable or do not configure this policy setting, components will not encrypt event log messages before writing them to the event log.
<!-- EnableProtectedEventLogging-Description-End -->

<!-- EnableProtectedEventLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableProtectedEventLogging-Editable-End -->

<!-- EnableProtectedEventLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableProtectedEventLogging-DFProperties-End -->

<!-- EnableProtectedEventLogging-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableProtectedEventLogging |
| Friendly Name | Enable Protected Event Logging |
| Location | Computer Configuration |
| Path | Windows Components > Event Logging |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\ProtectedEventLogging |
| Registry Value Name | EnableProtectedEventLogging |
| ADMX File Name | EventLogging.admx |
<!-- EnableProtectedEventLogging-AdmxBacked-End -->

<!-- EnableProtectedEventLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableProtectedEventLogging-Examples-End -->

<!-- EnableProtectedEventLogging-End -->

<!-- ADMX_EventLogging-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventLogging-CspMoreInfo-End -->

<!-- ADMX_EventLogging-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
