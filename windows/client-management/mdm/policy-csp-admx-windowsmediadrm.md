---
title: ADMX_WindowsMediaDRM Policy CSP
description: Learn more about the ADMX_WindowsMediaDRM Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WindowsMediaDRM-Begin -->
# Policy CSP - ADMX_WindowsMediaDRM

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WindowsMediaDRM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsMediaDRM-Editable-End -->

<!-- DisableOnline-Begin -->
## DisableOnline

<!-- DisableOnline-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableOnline-Applicability-End -->

<!-- DisableOnline-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsMediaDRM/DisableOnline
```
<!-- DisableOnline-OmaUri-End -->

<!-- DisableOnline-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents Windows Media Digital Rights Management (DRM) from accessing the Internet (or intranet).

When enabled, Windows Media DRM is prevented from accessing the Internet (or intranet) for license acquisition and security upgrades.

When this policy is enabled, programs aren't able to acquire licenses for secure content, upgrade Windows Media DRM security components, or restore backed up content licenses. Secure content that's already licensed to the local computer will continue to play. Users are also able to protect music that they copy from a CD and play this protected content on their computer, since the license is generated locally in this scenario.

When this policy is either disabled or not configured, Windows Media DRM functions normally and will connect to the Internet (or intranet) to acquire licenses, download security upgrades, and perform license restoration.
<!-- DisableOnline-Description-End -->

<!-- DisableOnline-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableOnline-Editable-End -->

<!-- DisableOnline-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableOnline-DFProperties-End -->

<!-- DisableOnline-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableOnline |
| Friendly Name | Prevent Windows Media DRM Internet Access |
| Location | Computer Configuration |
| Path | Windows Components > Windows Media Digital Rights Management |
| Registry Key Name | Software\Policies\Microsoft\WMDRM |
| Registry Value Name | DisableOnline |
| ADMX File Name | windowsmediadrm.admx |
<!-- DisableOnline-AdmxBacked-End -->

<!-- DisableOnline-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableOnline-Examples-End -->

<!-- DisableOnline-End -->

<!-- ADMX_WindowsMediaDRM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsMediaDRM-CspMoreInfo-End -->

<!-- ADMX_WindowsMediaDRM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
