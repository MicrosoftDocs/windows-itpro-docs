---
title: ADMX_Winsrv Policy CSP
description: Learn more about the ADMX_Winsrv Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Winsrv-Begin -->
# Policy CSP - ADMX_Winsrv

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Winsrv-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Winsrv-Editable-End -->

<!-- AllowBlockingAppsAtShutdown-Begin -->
## AllowBlockingAppsAtShutdown

<!-- AllowBlockingAppsAtShutdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowBlockingAppsAtShutdown-Applicability-End -->

<!-- AllowBlockingAppsAtShutdown-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Winsrv/AllowBlockingAppsAtShutdown
```
<!-- AllowBlockingAppsAtShutdown-OmaUri-End -->

<!-- AllowBlockingAppsAtShutdown-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- AllowBlockingAppsAtShutdown-Description-End -->

<!-- AllowBlockingAppsAtShutdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.
<!-- AllowBlockingAppsAtShutdown-Editable-End -->

<!-- AllowBlockingAppsAtShutdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowBlockingAppsAtShutdown-DFProperties-End -->

<!-- AllowBlockingAppsAtShutdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowBlockingAppsAtShutdown |
| Friendly Name | Turn off automatic termination of applications that block or cancel shutdown |
| Location | Computer Configuration |
| Path | System > Shutdown Options |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowBlockingAppsAtShutdown |
| ADMX File Name | Winsrv.admx |
<!-- AllowBlockingAppsAtShutdown-AdmxBacked-End -->

<!-- AllowBlockingAppsAtShutdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowBlockingAppsAtShutdown-Examples-End -->

<!-- AllowBlockingAppsAtShutdown-End -->

<!-- ADMX_Winsrv-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Winsrv-CspMoreInfo-End -->

<!-- ADMX_Winsrv-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
