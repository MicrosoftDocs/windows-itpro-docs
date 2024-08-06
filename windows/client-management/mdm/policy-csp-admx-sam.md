---
title: ADMX_sam Policy CSP
description: Learn more about the ADMX_sam Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_sam-Begin -->
# Policy CSP - ADMX_sam

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_sam-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_sam-Editable-End -->

<!-- SamNGCKeyROCAValidation-Begin -->
## SamNGCKeyROCAValidation

<!-- SamNGCKeyROCAValidation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SamNGCKeyROCAValidation-Applicability-End -->

<!-- SamNGCKeyROCAValidation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_sam/SamNGCKeyROCAValidation
```
<!-- SamNGCKeyROCAValidation-OmaUri-End -->

<!-- SamNGCKeyROCAValidation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure how domain controllers handle Windows Hello for Business (WHfB) keys that are vulnerable to the "Return of Coppersmith's attack" (ROCA) vulnerability.

For more information on the ROCA vulnerability, please see:

<https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-15361>

<https://en.wikipedia.org/wiki/ROCA_vulnerability>

If you enable this policy setting the following options are supported:

Ignore: during authentication the domain controller won't probe any WHfB keys for the ROCA vulnerability.

Audit: during authentication the domain controller will emit audit events for WHfB keys that are subject to the ROCA vulnerability (authentications will still succeed).

Block: during authentication the domain controller will block the use of WHfB keys that are subject to the ROCA vulnerability (authentications will fail).

This setting only takes effect on domain controllers.

If not configured, domain controllers will default to using their local configuration. The default local configuration is Audit.

A reboot isn't required for changes to this setting to take effect.

Note to avoid unexpected disruptions this setting shouldn't be set to Block until appropriate mitigations have been performed, for example patching of vulnerable TPMs.

More information is available at< https://go.microsoft.com/fwlink/?linkid=2116430>.
<!-- SamNGCKeyROCAValidation-Description-End -->

<!-- SamNGCKeyROCAValidation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SamNGCKeyROCAValidation-Editable-End -->

<!-- SamNGCKeyROCAValidation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SamNGCKeyROCAValidation-DFProperties-End -->

<!-- SamNGCKeyROCAValidation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SamNGCKeyROCAValidation |
| Friendly Name | Configure validation of ROCA-vulnerable WHfB keys during authentication |
| Location | Computer Configuration |
| Path | System > Security Account Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\SAM |
| ADMX File Name | sam.admx |
<!-- SamNGCKeyROCAValidation-AdmxBacked-End -->

<!-- SamNGCKeyROCAValidation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SamNGCKeyROCAValidation-Examples-End -->

<!-- SamNGCKeyROCAValidation-End -->

<!-- ADMX_sam-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_sam-CspMoreInfo-End -->

<!-- ADMX_sam-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
