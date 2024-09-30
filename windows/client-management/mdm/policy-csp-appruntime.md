---
title: AppRuntime Policy CSP
description: Learn more about the AppRuntime Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- AppRuntime-Begin -->
# Policy CSP - AppRuntime

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- AppRuntime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppRuntime-Editable-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Begin -->
## AllowMicrosoftAccountsToBeOptional

<!-- AllowMicrosoftAccountsToBeOptional-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowMicrosoftAccountsToBeOptional-Applicability-End -->

<!-- AllowMicrosoftAccountsToBeOptional-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppRuntime/AllowMicrosoftAccountsToBeOptional
```
<!-- AllowMicrosoftAccountsToBeOptional-OmaUri-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you control whether Microsoft accounts are optional for packaged Microsoft Store apps that require an account to sign in. This policy only affects packaged Microsoft Store apps that support it.

- If you enable this policy setting, packaged Microsoft Store apps that typically require a Microsoft account to sign in will allow users to sign in with an enterprise account instead.

- If you disable or don't configure this policy setting, users will need to sign in with a Microsoft account.
<!-- AllowMicrosoftAccountsToBeOptional-Description-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountsToBeOptional-Editable-End -->

<!-- AllowMicrosoftAccountsToBeOptional-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowMicrosoftAccountsToBeOptional-DFProperties-End -->

<!-- AllowMicrosoftAccountsToBeOptional-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppxRuntimeMicrosoftAccountsOptional |
| Friendly Name | Allow Microsoft accounts to be optional |
| Location | Computer Configuration |
| Path | Windows Components > App runtime |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | MSAOptional |
| ADMX File Name | AppXRuntime.admx |
<!-- AllowMicrosoftAccountsToBeOptional-AdmxBacked-End -->

<!-- AllowMicrosoftAccountsToBeOptional-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountsToBeOptional-Examples-End -->

<!-- AllowMicrosoftAccountsToBeOptional-End -->

<!-- AppRuntime-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- AppRuntime-CspMoreInfo-End -->

<!-- AppRuntime-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
