---
title: ADMX_CredUI Policy CSP
description: Learn more about the ADMX_CredUI Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_CredUI-Begin -->
# Policy CSP - ADMX_CredUI

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_CredUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredUI-Editable-End -->

<!-- EnableSecureCredentialPrompting-Begin -->
## EnableSecureCredentialPrompting

<!-- EnableSecureCredentialPrompting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableSecureCredentialPrompting-Applicability-End -->

<!-- EnableSecureCredentialPrompting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredUI/EnableSecureCredentialPrompting
```
<!-- EnableSecureCredentialPrompting-OmaUri-End -->

<!-- EnableSecureCredentialPrompting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting requires the user to enter Microsoft Windows credentials using a trusted path, to prevent a Trojan horse or other types of malicious code from stealing the user's Windows credentials.

> [!NOTE]
> This policy affects nonlogon authentication tasks only. As a security best practice, this policy should be enabled.

- If you enable this policy setting, users will be required to enter Windows credentials on the Secure Desktop by means of the trusted path mechanism.

- If you disable or don't configure this policy setting, users will enter Windows credentials within the user's desktop session, potentially allowing malicious code access to the user's Windows credentials.
<!-- EnableSecureCredentialPrompting-Description-End -->

<!-- EnableSecureCredentialPrompting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableSecureCredentialPrompting-Editable-End -->

<!-- EnableSecureCredentialPrompting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableSecureCredentialPrompting-DFProperties-End -->

<!-- EnableSecureCredentialPrompting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSecureCredentialPrompting |
| Friendly Name | Require trusted path for credential entry |
| Location | Computer Configuration |
| Path | Windows Components > Credential User Interface |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\CredUI |
| Registry Value Name | EnableSecureCredentialPrompting |
| ADMX File Name | CredUI.admx |
<!-- EnableSecureCredentialPrompting-AdmxBacked-End -->

<!-- EnableSecureCredentialPrompting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSecureCredentialPrompting-Examples-End -->

<!-- EnableSecureCredentialPrompting-End -->

<!-- NoLocalPasswordResetQuestions-Begin -->
## NoLocalPasswordResetQuestions

<!-- NoLocalPasswordResetQuestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoLocalPasswordResetQuestions-Applicability-End -->

<!-- NoLocalPasswordResetQuestions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredUI/NoLocalPasswordResetQuestions
```
<!-- NoLocalPasswordResetQuestions-OmaUri-End -->

<!-- NoLocalPasswordResetQuestions-Description-Begin -->
<!-- Description-Source-ADMX -->
If you turn this policy setting on, local users won't be able to set up and use security questions to reset their passwords.
<!-- NoLocalPasswordResetQuestions-Description-End -->

<!-- NoLocalPasswordResetQuestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoLocalPasswordResetQuestions-Editable-End -->

<!-- NoLocalPasswordResetQuestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoLocalPasswordResetQuestions-DFProperties-End -->

<!-- NoLocalPasswordResetQuestions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoLocalPasswordResetQuestions |
| Friendly Name | Prevent the use of security questions for local accounts |
| Location | Computer Configuration |
| Path | Windows Components > Credential User Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | NoLocalPasswordResetQuestions |
| ADMX File Name | CredUI.admx |
<!-- NoLocalPasswordResetQuestions-AdmxBacked-End -->

<!-- NoLocalPasswordResetQuestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoLocalPasswordResetQuestions-Examples-End -->

<!-- NoLocalPasswordResetQuestions-End -->

<!-- ADMX_CredUI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredUI-CspMoreInfo-End -->

<!-- ADMX_CredUI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
