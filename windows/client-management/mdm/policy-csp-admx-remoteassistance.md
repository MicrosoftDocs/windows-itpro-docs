---
title: ADMX_RemoteAssistance Policy CSP
description: Learn more about the ADMX_RemoteAssistance Area in Policy CSP.
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

<!-- ADMX_RemoteAssistance-Begin -->
# Policy CSP - ADMX_RemoteAssistance

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_RemoteAssistance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_RemoteAssistance-Editable-End -->

<!-- RA_EncryptedTicketOnly-Begin -->
## RA_EncryptedTicketOnly

<!-- RA_EncryptedTicketOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- RA_EncryptedTicketOnly-Applicability-End -->

<!-- RA_EncryptedTicketOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemoteAssistance/RA_EncryptedTicketOnly
```
<!-- RA_EncryptedTicketOnly-OmaUri-End -->

<!-- RA_EncryptedTicketOnly-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables Remote Assistance invitations to be generated with improved encryption so that only computers running this version (or later versions) of the operating system can connect. This policy setting does not affect Remote Assistance connections that are initiated by instant messaging contacts or the unsolicited Offer Remote Assistance.

- If you enable this policy setting, only computers running this version (or later versions) of the operating system can connect to this computer.

- If you disable this policy setting, computers running this version and a previous version of the operating system can connect to this computer.

- If you do not configure this policy setting, users can configure the setting in System Properties in the Control Panel.
<!-- RA_EncryptedTicketOnly-Description-End -->

<!-- RA_EncryptedTicketOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RA_EncryptedTicketOnly-Editable-End -->

<!-- RA_EncryptedTicketOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RA_EncryptedTicketOnly-DFProperties-End -->

<!-- RA_EncryptedTicketOnly-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RA_EncryptedTicketOnly |
| Friendly Name | Allow only Windows Vista or later connections |
| Location | Computer Configuration |
| Path | System > Remote Assistance |
| Registry Key Name | Software\policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | CreateEncryptedOnlyTickets |
| ADMX File Name | RemoteAssistance.admx |
<!-- RA_EncryptedTicketOnly-AdmxBacked-End -->

<!-- RA_EncryptedTicketOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RA_EncryptedTicketOnly-Examples-End -->

<!-- RA_EncryptedTicketOnly-End -->

<!-- RA_Optimize_Bandwidth-Begin -->
## RA_Optimize_Bandwidth

<!-- RA_Optimize_Bandwidth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- RA_Optimize_Bandwidth-Applicability-End -->

<!-- RA_Optimize_Bandwidth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemoteAssistance/RA_Optimize_Bandwidth
```
<!-- RA_Optimize_Bandwidth-OmaUri-End -->

<!-- RA_Optimize_Bandwidth-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to improve performance in low bandwidth scenarios.

This setting is incrementally scaled from "No optimization" to "Full optimization". Each incremental setting includes the previous optimization setting.

For example:

"Turn off background" will include the following optimizations:
-No full window drag
-Turn off background

"Full optimization" will include the following optimizations:
-Use 16-bit color (8-bit color in Windows Vista)
-Turn off font smoothing (not supported in Windows Vista)
-No full window drag
-Turn off background

- If you enable this policy setting, bandwidth optimization occurs at the level specified.

- If you disable this policy setting, application-based settings are used.

- If you do not configure this policy setting, application-based settings are used.
<!-- RA_Optimize_Bandwidth-Description-End -->

<!-- RA_Optimize_Bandwidth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RA_Optimize_Bandwidth-Editable-End -->

<!-- RA_Optimize_Bandwidth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RA_Optimize_Bandwidth-DFProperties-End -->

<!-- RA_Optimize_Bandwidth-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RA_Optimize_Bandwidth |
| Friendly Name | Turn on bandwidth optimization |
| Location | Computer Configuration |
| Path | System > Remote Assistance |
| Registry Key Name | Software\policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | UseBandwidthOptimization |
| ADMX File Name | RemoteAssistance.admx |
<!-- RA_Optimize_Bandwidth-AdmxBacked-End -->

<!-- RA_Optimize_Bandwidth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RA_Optimize_Bandwidth-Examples-End -->

<!-- RA_Optimize_Bandwidth-End -->

<!-- ADMX_RemoteAssistance-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_RemoteAssistance-CspMoreInfo-End -->

<!-- ADMX_RemoteAssistance-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
