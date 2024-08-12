---
title: ADMX_MSAPolicy Policy CSP
description: Learn more about the ADMX_MSAPolicy Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_MSAPolicy-Begin -->
# Policy CSP - ADMX_MSAPolicy

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_MSAPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSAPolicy-Editable-End -->

<!-- MicrosoftAccount_DisableUserAuth-Begin -->
## MicrosoftAccount_DisableUserAuth

<!-- MicrosoftAccount_DisableUserAuth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MicrosoftAccount_DisableUserAuth-Applicability-End -->

<!-- MicrosoftAccount_DisableUserAuth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSAPolicy/MicrosoftAccount_DisableUserAuth
```
<!-- MicrosoftAccount_DisableUserAuth-OmaUri-End -->

<!-- MicrosoftAccount_DisableUserAuth-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting controls whether users can provide Microsoft accounts for authentication for applications or services.

- If this setting is enabled, all applications and services on the device are prevented from using Microsoft accounts for authentication.

This applies both to existing users of a device and new users who may be added. However, any application or service that has already authenticated a user won't be affected by enabling this setting until the authentication cache expires.

It's recommended to enable this setting before any user signs in to a device to prevent cached tokens from being present.

- If this setting is disabled or not configured, applications and services can use Microsoft accounts for authentication.

By default, this setting is Disabled. This setting doesn't affect whether users can sign in to devices by using Microsoft accounts, or the ability for users to provide Microsoft accounts via the browser for authentication with web-based applications.
<!-- MicrosoftAccount_DisableUserAuth-Description-End -->

<!-- MicrosoftAccount_DisableUserAuth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftAccount_DisableUserAuth-Editable-End -->

<!-- MicrosoftAccount_DisableUserAuth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MicrosoftAccount_DisableUserAuth-DFProperties-End -->

<!-- MicrosoftAccount_DisableUserAuth-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftAccount_DisableUserAuth |
| Friendly Name | Block all consumer Microsoft account user authentication |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft account |
| Registry Key Name | Software\Policies\Microsoft\MicrosoftAccount |
| Registry Value Name | DisableUserAuth |
| ADMX File Name | MSAPolicy.admx |
<!-- MicrosoftAccount_DisableUserAuth-AdmxBacked-End -->

<!-- MicrosoftAccount_DisableUserAuth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftAccount_DisableUserAuth-Examples-End -->

<!-- MicrosoftAccount_DisableUserAuth-End -->

<!-- ADMX_MSAPolicy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSAPolicy-CspMoreInfo-End -->

<!-- ADMX_MSAPolicy-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
