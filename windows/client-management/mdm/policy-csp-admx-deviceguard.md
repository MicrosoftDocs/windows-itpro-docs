---
title: ADMX_DeviceGuard Policy CSP
description: Learn more about the ADMX_DeviceGuard Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DeviceGuard-Begin -->
# Policy CSP - ADMX_DeviceGuard

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

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
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigCIPolicy-Applicability-End -->

<!-- ConfigCIPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceGuard/ConfigCIPolicy
```
<!-- ConfigCIPolicy-OmaUri-End -->

<!-- ConfigCIPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Deploy App Control for Business.

This policy setting lets you deploy a Code Integrity Policy to a machine to control what's allowed to run on that machine.

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
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigCIPolicy-DFProperties-End -->

<!-- ConfigCIPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigCIPolicy |
| Friendly Name | Deploy App Control for Business |
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
