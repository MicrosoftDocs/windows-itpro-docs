---
title: ADMX_WindowsColorSystem Policy CSP
description: Learn more about the ADMX_WindowsColorSystem Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WindowsColorSystem-Begin -->
# Policy CSP - ADMX_WindowsColorSystem

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WindowsColorSystem-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsColorSystem-Editable-End -->

<!-- ProhibitChangingInstalledProfileList_1-Begin -->
## ProhibitChangingInstalledProfileList_1

<!-- ProhibitChangingInstalledProfileList_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProhibitChangingInstalledProfileList_1-Applicability-End -->

<!-- ProhibitChangingInstalledProfileList_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsColorSystem/ProhibitChangingInstalledProfileList_1
```
<!-- ProhibitChangingInstalledProfileList_1-OmaUri-End -->

<!-- ProhibitChangingInstalledProfileList_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting affects the ability of users to install or uninstall color profiles.

- If you enable this policy setting, users can't install new color profiles or uninstall previously installed color profiles.

- If you disable or don't configure this policy setting, all users can install new color profiles. Standard users can uninstall color profiles that they previously installed. Administrators will be able to uninstall all color profiles.
<!-- ProhibitChangingInstalledProfileList_1-Description-End -->

<!-- ProhibitChangingInstalledProfileList_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProhibitChangingInstalledProfileList_1-Editable-End -->

<!-- ProhibitChangingInstalledProfileList_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProhibitChangingInstalledProfileList_1-DFProperties-End -->

<!-- ProhibitChangingInstalledProfileList_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProhibitChangingInstalledProfileList_1 |
| Friendly Name | Prohibit installing or uninstalling color profiles |
| Location | User Configuration |
| Path | Windows Components > Windows Color System |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsColorSystem |
| Registry Value Name | ProhibitInstallUninstall |
| ADMX File Name | WindowsColorSystem.admx |
<!-- ProhibitChangingInstalledProfileList_1-AdmxBacked-End -->

<!-- ProhibitChangingInstalledProfileList_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProhibitChangingInstalledProfileList_1-Examples-End -->

<!-- ProhibitChangingInstalledProfileList_1-End -->

<!-- ProhibitChangingInstalledProfileList_2-Begin -->
## ProhibitChangingInstalledProfileList_2

<!-- ProhibitChangingInstalledProfileList_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProhibitChangingInstalledProfileList_2-Applicability-End -->

<!-- ProhibitChangingInstalledProfileList_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsColorSystem/ProhibitChangingInstalledProfileList_2
```
<!-- ProhibitChangingInstalledProfileList_2-OmaUri-End -->

<!-- ProhibitChangingInstalledProfileList_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting affects the ability of users to install or uninstall color profiles.

- If you enable this policy setting, users can't install new color profiles or uninstall previously installed color profiles.

- If you disable or don't configure this policy setting, all users can install new color profiles. Standard users can uninstall color profiles that they previously installed. Administrators will be able to uninstall all color profiles.
<!-- ProhibitChangingInstalledProfileList_2-Description-End -->

<!-- ProhibitChangingInstalledProfileList_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProhibitChangingInstalledProfileList_2-Editable-End -->

<!-- ProhibitChangingInstalledProfileList_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProhibitChangingInstalledProfileList_2-DFProperties-End -->

<!-- ProhibitChangingInstalledProfileList_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProhibitChangingInstalledProfileList_2 |
| Friendly Name | Prohibit installing or uninstalling color profiles |
| Location | Computer Configuration |
| Path | Windows Components > Windows Color System |
| Registry Key Name | Software\Policies\Microsoft\Windows\WindowsColorSystem |
| Registry Value Name | ProhibitInstallUninstall |
| ADMX File Name | WindowsColorSystem.admx |
<!-- ProhibitChangingInstalledProfileList_2-AdmxBacked-End -->

<!-- ProhibitChangingInstalledProfileList_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProhibitChangingInstalledProfileList_2-Examples-End -->

<!-- ProhibitChangingInstalledProfileList_2-End -->

<!-- ADMX_WindowsColorSystem-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsColorSystem-CspMoreInfo-End -->

<!-- ADMX_WindowsColorSystem-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
