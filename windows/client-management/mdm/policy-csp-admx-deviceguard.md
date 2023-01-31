---
title: ADMX_DeviceGuard Policy CSP
description: Learn more about the ADMX_DeviceGuard Area in Policy CSP.
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

<!-- ADMX_DeviceGuard-Begin -->
# Policy CSP - ADMX_DeviceGuard

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_DeviceGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!WARNING]
> Group Policy-based deployment of Windows Defender Application Control policies only supports single-policy format WDAC policies. To use WDAC on devices running Windows 10 1903 and greater, or Windows 11, we recommend using an alternative method for [policy deployment](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-deployment-guide).
<!-- ADMX_DeviceGuard-Editable-End -->

<!-- ConfigCIPolicy-Begin -->
## ConfigCIPolicy

<!-- ConfigCIPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigCIPolicy-Applicability-End -->

<!-- ConfigCIPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceGuard/ConfigCIPolicy
```
<!-- ConfigCIPolicy-OmaUri-End -->

<!-- ConfigCIPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Deploy Windows Defender Application Control

This policy setting lets you deploy a Code Integrity Policy to a machine to control what is allowed to run on that machine.

If you deploy a Code Integrity Policy, Windows will restrict what can run in both kernel mode and on the Windows Desktop based on the policy. To enable this policy the machine must be rebooted.

The file path must be either a UNC path (for example, \\ServerName\ShareName\SIPolicy.p7b), or a locally valid path (for example, C:\FolderName\SIPolicy.p7b). The local machine account (LOCAL SYSTEM) must have access permission to the policy file.

If using a signed and protected policy then disabling this policy setting doesn't remove the feature from the computer. Instead, you must either:

1) first update the policy to a non-protected policy and then disable the setting, or
2) disable the setting and then remove the policy from each computer, with a physically present user.
<!-- ConfigCIPolicy-Description-End -->

<!-- ConfigCIPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigCIPolicy-Editable-End -->

<!-- ConfigCIPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigCIPolicy-DFProperties-End -->

<!-- ConfigCIPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigCIPolicy |
| Friendly Name | Deploy Windows Defender Application Control |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| Registry Value Name | DeployConfigCIPolicy |
| ADMX File Name | DeviceGuard.admx |
<!-- ConfigCIPolicy-AdmxBacked-End -->

<!-- ConfigCIPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigCIPolicy-Examples-End -->

<!-- ConfigCIPolicy-End -->

<!-- ADMX_DeviceGuard-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceGuard-CspMoreInfo-End -->

<!-- ADMX_DeviceGuard-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
