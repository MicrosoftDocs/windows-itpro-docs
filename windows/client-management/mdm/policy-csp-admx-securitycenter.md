---
title: ADMX_Securitycenter Policy CSP
description: Learn more about the ADMX_Securitycenter Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Securitycenter-Begin -->
# Policy CSP - ADMX_Securitycenter

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Securitycenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Securitycenter-Editable-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Begin -->
## SecurityCenter_SecurityCenterInDomain

<!-- SecurityCenter_SecurityCenterInDomain-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SecurityCenter_SecurityCenterInDomain-Applicability-End -->

<!-- SecurityCenter_SecurityCenterInDomain-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain
```
<!-- SecurityCenter_SecurityCenterInDomain-OmaUri-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Security Center is turned on or off for computers that are joined to an Active Directory domain. When Security Center is turned on, it monitors essential security settings and notifies the user when the computer might be at risk. The Security Center Control Panel category view also contains a status section, where the user can get recommendations to help increase the computer's security. When Security Center isn't enabled on the domain, neither the notifications nor the Security Center status section are displayed.

Note that Security Center can only be turned off for computers that are joined to a Windows domain. When a computer isn't joined to a Windows domain, the policy setting will have no effect.

- If you don't configure this policy setting, the Security Center is turned off for domain members.

- If you enable this policy setting, Security Center is turned on for all users.

- If you disable this policy setting, Security Center is turned off for domain members.
<!-- SecurityCenter_SecurityCenterInDomain-Description-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SecurityCenter_SecurityCenterInDomain-Editable-End -->

<!-- SecurityCenter_SecurityCenterInDomain-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SecurityCenter_SecurityCenterInDomain-DFProperties-End -->

<!-- SecurityCenter_SecurityCenterInDomain-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SecurityCenter_SecurityCenterInDomain |
| Friendly Name | Turn on Security Center (Domain PCs only) |
| Location | Computer Configuration |
| Path | Windows Components > Security Center |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Security Center |
| Registry Value Name | SecurityCenterInDomain |
| ADMX File Name | Securitycenter.admx |
<!-- SecurityCenter_SecurityCenterInDomain-AdmxBacked-End -->

<!-- SecurityCenter_SecurityCenterInDomain-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SecurityCenter_SecurityCenterInDomain-Examples-End -->

<!-- SecurityCenter_SecurityCenterInDomain-End -->

<!-- ADMX_Securitycenter-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Securitycenter-CspMoreInfo-End -->

<!-- ADMX_Securitycenter-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
