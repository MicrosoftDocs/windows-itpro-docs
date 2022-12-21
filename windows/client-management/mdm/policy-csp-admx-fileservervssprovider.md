---
title: ADMX_FileServerVSSProvider Policy CSP
description: Learn more about the ADMX_FileServerVSSProvider Area in Policy CSP
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

<!-- ADMX_FileServerVSSProvider-Begin -->
# Policy CSP - ADMX_FileServerVSSProvider

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_FileServerVSSProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileServerVSSProvider-Editable-End -->

<!-- Pol_EncryptProtocol-Begin -->
## Pol_EncryptProtocol

<!-- Pol_EncryptProtocol-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- Pol_EncryptProtocol-Applicability-End -->

<!-- Pol_EncryptProtocol-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileServerVSSProvider/Pol_EncryptProtocol
```
<!-- Pol_EncryptProtocol-OmaUri-End -->

<!-- Pol_EncryptProtocol-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled.

VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.

By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.

Note: To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service .
<!-- Pol_EncryptProtocol-Description-End -->

<!-- Pol_EncryptProtocol-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Pol_EncryptProtocol-Editable-End -->

<!-- Pol_EncryptProtocol-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Pol_EncryptProtocol-DFProperties-End -->

<!-- Pol_EncryptProtocol-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Pol_EncryptProtocol |
| Friendly Name | Allow or Disallow use of encryption to protect the RPC protocol messages between File Share Shadow Copy Provider running on application server and File Share Shadow Copy Agent running on the file servers. |
| Location | Computer Configuration |
| Path | System > File Share Shadow Copy Provider |
| Registry Key Name | Software\Policies\Microsoft\Windows\fssProv |
| Registry Value Name | EncryptProtocol |
| ADMX File Name | FileServerVSSProvider.admx |
<!-- Pol_EncryptProtocol-AdmxBacked-End -->

<!-- Pol_EncryptProtocol-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Pol_EncryptProtocol-Examples-End -->

<!-- Pol_EncryptProtocol-End -->

<!-- ADMX_FileServerVSSProvider-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileServerVSSProvider-CspMoreInfo-End -->

<!-- ADMX_FileServerVSSProvider-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
