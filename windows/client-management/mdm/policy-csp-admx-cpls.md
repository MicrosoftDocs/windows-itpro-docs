---
title: ADMX_Cpls Policy CSP
description: Learn more about the ADMX_Cpls Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Cpls-Begin -->
# Policy CSP - ADMX_Cpls

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Cpls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Cpls-Editable-End -->

<!-- UseDefaultTile-Begin -->
## UseDefaultTile

<!-- UseDefaultTile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UseDefaultTile-Applicability-End -->

<!-- UseDefaultTile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Cpls/UseDefaultTile
```
<!-- UseDefaultTile-OmaUri-End -->

<!-- UseDefaultTile-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows an administrator to standardize the account pictures for all users on a system to the default account picture. One application for this policy setting is to standardize the account pictures to a company logo.

> [!NOTE]
> The default account picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\user.jpg. The default guest picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\guest.jpg. If the default pictures don't exist, an empty frame is displayed.

- If you enable this policy setting, the default user account picture will display for all users on the system with no customization allowed.

- If you disable or don't configure this policy setting, users will be able to customize their account pictures.
<!-- UseDefaultTile-Description-End -->

<!-- UseDefaultTile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UseDefaultTile-Editable-End -->

<!-- UseDefaultTile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UseDefaultTile-DFProperties-End -->

<!-- UseDefaultTile-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UseDefaultTile |
| Friendly Name | Apply the default account picture to all users |
| Location | Computer Configuration |
| Path | Control Panel > User Accounts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | UseDefaultTile |
| ADMX File Name | Cpls.admx |
<!-- UseDefaultTile-AdmxBacked-End -->

<!-- UseDefaultTile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UseDefaultTile-Examples-End -->

<!-- UseDefaultTile-End -->

<!-- ADMX_Cpls-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Cpls-CspMoreInfo-End -->

<!-- ADMX_Cpls-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
