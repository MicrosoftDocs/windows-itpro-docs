---
title: ADMX_SystemRestore Policy CSP
description: Learn more about the ADMX_SystemRestore Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_SystemRestore-Begin -->
# Policy CSP - ADMX_SystemRestore

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_SystemRestore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_SystemRestore-Editable-End -->

<!-- SR_DisableConfig-Begin -->
## SR_DisableConfig

<!-- SR_DisableConfig-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SR_DisableConfig-Applicability-End -->

<!-- SR_DisableConfig-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SystemRestore/SR_DisableConfig
```
<!-- SR_DisableConfig-OmaUri-End -->

<!-- SR_DisableConfig-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to disable System Restore configuration through System Protection.

This policy setting allows you to turn off System Restore configuration through System Protection.

System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. The behavior of this policy setting depends on the "Turn off System Restore" policy setting.

- If you enable this policy setting, the option to configure System Restore through System Protection is disabled.

- If you disable or don't configure this policy setting, users can change the System Restore settings through System Protection.

Also, see the "Turn off System Restore" policy setting. If the "Turn off System Restore" policy setting is enabled, the "Turn off System Restore configuration" policy setting is overwritten.
<!-- SR_DisableConfig-Description-End -->

<!-- SR_DisableConfig-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SR_DisableConfig-Editable-End -->

<!-- SR_DisableConfig-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SR_DisableConfig-DFProperties-End -->

<!-- SR_DisableConfig-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SR_DisableConfig |
| Friendly Name | Turn off Configuration |
| Location | Computer Configuration |
| Path | System > System Restore |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SystemRestore |
| Registry Value Name | DisableConfig |
| ADMX File Name | SystemRestore.admx |
<!-- SR_DisableConfig-AdmxBacked-End -->

<!-- SR_DisableConfig-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SR_DisableConfig-Examples-End -->

<!-- SR_DisableConfig-End -->

<!-- ADMX_SystemRestore-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_SystemRestore-CspMoreInfo-End -->

<!-- ADMX_SystemRestore-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
