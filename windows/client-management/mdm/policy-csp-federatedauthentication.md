---
title: FederatedAuthentication Policy CSP
description: Learn more about the FederatedAuthentication Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- FederatedAuthentication-Begin -->
# Policy CSP - FederatedAuthentication

<!-- FederatedAuthentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FederatedAuthentication-Editable-End -->

<!-- EnableWebSignInForPrimaryUser-Begin -->
## EnableWebSignInForPrimaryUser

<!-- EnableWebSignInForPrimaryUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableWebSignInForPrimaryUser-Applicability-End -->

<!-- EnableWebSignInForPrimaryUser-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/FederatedAuthentication/EnableWebSignInForPrimaryUser
```
<!-- EnableWebSignInForPrimaryUser-OmaUri-End -->

<!-- EnableWebSignInForPrimaryUser-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether web-based sign-in is enabled with the Primary User experience.
<!-- EnableWebSignInForPrimaryUser-Description-End -->

<!-- EnableWebSignInForPrimaryUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Web Sign-in is only supported on Microsoft Entra joined PCs.
<!-- EnableWebSignInForPrimaryUser-Editable-End -->

<!-- EnableWebSignInForPrimaryUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableWebSignInForPrimaryUser-DFProperties-End -->

<!-- EnableWebSignInForPrimaryUser-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Feature defaults as appropriate for edition and device capabilities. As of now, all editions/devices exhibit Disabled behavior by default. However, this may change for future editions/devices. |
| 1 | Enabled. Web Sign-in Credential Provider will be enabled for device sign-in. |
| 2 | Disabled. Web Sign-in Credential Provider isn't be enabled for device sign-in. |
<!-- EnableWebSignInForPrimaryUser-AllowedValues-End -->

<!-- EnableWebSignInForPrimaryUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWebSignInForPrimaryUser-Examples-End -->

<!-- EnableWebSignInForPrimaryUser-End -->

<!-- FederatedAuthentication-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- FederatedAuthentication-CspMoreInfo-End -->

<!-- FederatedAuthentication-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
