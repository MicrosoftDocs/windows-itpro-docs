---
title: ADMX_AppxPackageManager Policy CSP
description: Learn more about the ADMX_AppxPackageManager Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_AppxPackageManager-Begin -->
# Policy CSP - ADMX_AppxPackageManager

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_AppxPackageManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppxPackageManager-Editable-End -->

<!-- AllowDeploymentInSpecialProfiles-Begin -->
## AllowDeploymentInSpecialProfiles

<!-- AllowDeploymentInSpecialProfiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowDeploymentInSpecialProfiles-Applicability-End -->

<!-- AllowDeploymentInSpecialProfiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppxPackageManager/AllowDeploymentInSpecialProfiles
```
<!-- AllowDeploymentInSpecialProfiles-OmaUri-End -->

<!-- AllowDeploymentInSpecialProfiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the deployment of Windows Store apps when the user is signed in using a special profile. Special profiles are the following user profiles, where changes are discarded after the user signs off:

Roaming user profiles to which the "Delete cached copies of roaming profiles" Group Policy setting applies.

Mandatory user profiles and super-mandatory profiles, which are created by an administrator.

Temporary user profiles, which are created when an error prevents the correct profile from loading.

User profiles for the Guest account and members of the Guests group.

- If you enable this policy setting, Group Policy allows deployment operations (adding, registering, staging, updating, or removing an app package) of Windows Store apps when using a special profile.

- If you disable or don't configure this policy setting, Group Policy blocks deployment operations of Windows Store apps when using a special profile.
<!-- AllowDeploymentInSpecialProfiles-Description-End -->

<!-- AllowDeploymentInSpecialProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeploymentInSpecialProfiles-Editable-End -->

<!-- AllowDeploymentInSpecialProfiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDeploymentInSpecialProfiles-DFProperties-End -->

<!-- AllowDeploymentInSpecialProfiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDeploymentInSpecialProfiles |
| Friendly Name | Allow deployment operations in special profiles |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | AllowDeploymentInSpecialProfiles |
| ADMX File Name | AppxPackageManager.admx |
<!-- AllowDeploymentInSpecialProfiles-AdmxBacked-End -->

<!-- AllowDeploymentInSpecialProfiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeploymentInSpecialProfiles-Examples-End -->

<!-- AllowDeploymentInSpecialProfiles-End -->

<!-- ADMX_AppxPackageManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppxPackageManager-CspMoreInfo-End -->

<!-- ADMX_AppxPackageManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
