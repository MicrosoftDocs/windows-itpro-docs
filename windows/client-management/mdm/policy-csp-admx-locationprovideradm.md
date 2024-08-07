---
title: ADMX_LocationProviderAdm Policy CSP
description: Learn more about the ADMX_LocationProviderAdm Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_LocationProviderAdm-Begin -->
# Policy CSP - ADMX_LocationProviderAdm

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_LocationProviderAdm-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!WARNING]
> Some information relates to pre-released products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.
<!-- ADMX_LocationProviderAdm-Editable-End -->

<!-- DisableWindowsLocationProvider_1-Begin -->
## DisableWindowsLocationProvider_1

<!-- DisableWindowsLocationProvider_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWindowsLocationProvider_1-Applicability-End -->

<!-- DisableWindowsLocationProvider_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_LocationProviderAdm/DisableWindowsLocationProvider_1
```
<!-- DisableWindowsLocationProvider_1-OmaUri-End -->

<!-- DisableWindowsLocationProvider_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the Windows Location Provider feature for this computer.

- If you enable this policy setting, the Windows Location Provider feature will be turned off, and all programs on this computer won't be able to use the Windows Location Provider feature.

- If you disable or don't configure this policy setting, all programs on this computer can use the Windows Location Provider feature.
<!-- DisableWindowsLocationProvider_1-Description-End -->

<!-- DisableWindowsLocationProvider_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWindowsLocationProvider_1-Editable-End -->

<!-- DisableWindowsLocationProvider_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWindowsLocationProvider_1-DFProperties-End -->

<!-- DisableWindowsLocationProvider_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsLocationProvider_1 |
| Friendly Name | Turn off Windows Location Provider |
| Location | Computer Configuration |
| Path | Windows Components > Location and Sensors > Windows Location Provider |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableWindowsLocationProvider |
| ADMX File Name | LocationProviderAdm.admx |
<!-- DisableWindowsLocationProvider_1-AdmxBacked-End -->

<!-- DisableWindowsLocationProvider_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWindowsLocationProvider_1-Examples-End -->

<!-- DisableWindowsLocationProvider_1-End -->

<!-- ADMX_LocationProviderAdm-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_LocationProviderAdm-CspMoreInfo-End -->

<!-- ADMX_LocationProviderAdm-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
