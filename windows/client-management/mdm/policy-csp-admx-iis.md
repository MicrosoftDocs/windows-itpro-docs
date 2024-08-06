---
title: ADMX_IIS Policy CSP
description: Learn more about the ADMX_IIS Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_IIS-Begin -->
# Policy CSP - ADMX_IIS

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_IIS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_IIS-Editable-End -->

<!-- PreventIISInstall-Begin -->
## PreventIISInstall

<!-- PreventIISInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventIISInstall-Applicability-End -->

<!-- PreventIISInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_IIS/PreventIISInstall
```
<!-- PreventIISInstall-OmaUri-End -->

<!-- PreventIISInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
"This policy setting prevents installation of Internet Information Services (IIS) on this computer.

- If you enable this policy setting, Internet Information Services (IIS) can't be installed, and you won't be able to install Windows components or applications that require IIS. Users installing Windows components or applications that require IIS might not receive a warning that IIS can't be installed because of this Group Policy setting. Enabling this setting won't have any effect on IIS if IIS is already installed on the computer.

- If you disable or don't configure this policy setting, IIS can be installed, as well as all the programs and applications that require IIS to run".
<!-- PreventIISInstall-Description-End -->

<!-- PreventIISInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventIISInstall-Editable-End -->

<!-- PreventIISInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventIISInstall-DFProperties-End -->

<!-- PreventIISInstall-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventIISInstall |
| Friendly Name | Prevent IIS installation |
| Location | Computer Configuration |
| Path | Windows Components > Internet Information Services |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\IIS |
| Registry Value Name | PreventIISInstall |
| ADMX File Name | IIS.admx |
<!-- PreventIISInstall-AdmxBacked-End -->

<!-- PreventIISInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventIISInstall-Examples-End -->

<!-- PreventIISInstall-End -->

<!-- ADMX_IIS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_IIS-CspMoreInfo-End -->

<!-- ADMX_IIS-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
