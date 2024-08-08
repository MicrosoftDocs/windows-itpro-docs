---
title: ADMX_EventLogging Policy CSP
description: Learn more about the ADMX_EventLogging Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_EventLogging-Begin -->
# Policy CSP - ADMX_EventLogging

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_EventLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventLogging-Editable-End -->

<!-- EnableProtectedEventLogging-Begin -->
## EnableProtectedEventLogging

<!-- EnableProtectedEventLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableProtectedEventLogging-Applicability-End -->

<!-- EnableProtectedEventLogging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_EventLogging/EnableProtectedEventLogging
```
<!-- EnableProtectedEventLogging-OmaUri-End -->

<!-- EnableProtectedEventLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure Protected Event Logging.

- If you enable this policy setting, components that support it will use the certificate you supply to encrypt potentially sensitive event log data before writing it to the event log. Data will be encrypted using the Cryptographic Message Syntax (CMS) standard and the public key you provide. You can use the Unprotect-CmsMessage PowerShell cmdlet to decrypt these encrypted messages, provided that you have access to the private key corresponding to the public key that they were encrypted with.

- If you disable or don't configure this policy setting, components won't encrypt event log messages before writing them to the event log.
<!-- EnableProtectedEventLogging-Description-End -->

<!-- EnableProtectedEventLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableProtectedEventLogging-Editable-End -->

<!-- EnableProtectedEventLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableProtectedEventLogging-DFProperties-End -->

<!-- EnableProtectedEventLogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableProtectedEventLogging |
| Friendly Name | Enable Protected Event Logging |
| Location | Computer Configuration |
| Path | Windows Components > Event Logging |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\ProtectedEventLogging |
| Registry Value Name | EnableProtectedEventLogging |
| ADMX File Name | EventLogging.admx |
<!-- EnableProtectedEventLogging-AdmxBacked-End -->

<!-- EnableProtectedEventLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableProtectedEventLogging-Examples-End -->

<!-- EnableProtectedEventLogging-End -->

<!-- ADMX_EventLogging-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_EventLogging-CspMoreInfo-End -->

<!-- ADMX_EventLogging-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
