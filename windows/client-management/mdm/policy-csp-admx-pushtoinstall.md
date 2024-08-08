---
title: ADMX_PushToInstall Policy CSP
description: Learn more about the ADMX_PushToInstall Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_PushToInstall-Begin -->
# Policy CSP - ADMX_PushToInstall

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_PushToInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PushToInstall-Editable-End -->

<!-- DisablePushToInstall-Begin -->
## DisablePushToInstall

<!-- DisablePushToInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisablePushToInstall-Applicability-End -->

<!-- DisablePushToInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PushToInstall/DisablePushToInstall
```
<!-- DisablePushToInstall-OmaUri-End -->

<!-- DisablePushToInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
If you enable this setting, users won't be able to push Apps to this device from the Microsoft Store running on other devices or the web.
<!-- DisablePushToInstall-Description-End -->

<!-- DisablePushToInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePushToInstall-Editable-End -->

<!-- DisablePushToInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisablePushToInstall-DFProperties-End -->

<!-- DisablePushToInstall-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePushToInstall |
| Friendly Name | Turn off Push To Install service |
| Location | Computer Configuration |
| Path | Windows Components > Push To Install |
| Registry Key Name | Software\Policies\Microsoft\PushToInstall |
| Registry Value Name | DisablePushToInstall |
| ADMX File Name | PushToInstall.admx |
<!-- DisablePushToInstall-AdmxBacked-End -->

<!-- DisablePushToInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePushToInstall-Examples-End -->

<!-- DisablePushToInstall-End -->

<!-- ADMX_PushToInstall-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PushToInstall-CspMoreInfo-End -->

<!-- ADMX_PushToInstall-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
