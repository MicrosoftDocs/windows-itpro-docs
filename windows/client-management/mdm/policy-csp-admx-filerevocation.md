---
title: ADMX_FileRevocation Policy CSP
description: Learn more about the ADMX_FileRevocation Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_FileRevocation-Begin -->
# Policy CSP - ADMX_FileRevocation

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_FileRevocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileRevocation-Editable-End -->

<!-- DelegatedPackageFamilyNames-Begin -->
## DelegatedPackageFamilyNames

<!-- DelegatedPackageFamilyNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DelegatedPackageFamilyNames-Applicability-End -->

<!-- DelegatedPackageFamilyNames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FileRevocation/DelegatedPackageFamilyNames
```
<!-- DelegatedPackageFamilyNames-OmaUri-End -->

<!-- DelegatedPackageFamilyNames-Description-Begin -->
<!-- Description-Source-ADMX -->
Windows Runtime applications can protect content which has been associated with an enterprise identifier (EID), but can only revoke access to content it protected. To allow an application to revoke access to all content on the device that's protected by a particular enterprise, add an entry to the list on a new line that contains the enterprise identifier, separated by a comma, and the Package Family Name of the application. The EID must be an internet domain belonging to the enterprise in standard international domain name format.

Example value:

Contoso.com,ContosoIT. HumanResourcesApp_m5g0r7arhahqy.

- If you enable this policy setting, the application identified by the Package Family Name will be permitted to revoke access to all content protected using the specified EID on the device.

- If you disable or don't configure this policy setting, the only Windows Runtime applications that can revoke access to all enterprise-protected content on the device are Windows Mail and the user-selected mailto protocol handler app. Any other Windows Runtime application will only be able to revoke access to content it protected.

> [!NOTE]
> File revocation applies to all content protected under the same second level domain as the provided enterprise identifier. So, revoking an enterprise ID of mail.contoso.com will revoke the user's access to all content protected under the contoso.com hierarchy.
<!-- DelegatedPackageFamilyNames-Description-End -->

<!-- DelegatedPackageFamilyNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DelegatedPackageFamilyNames-Editable-End -->

<!-- DelegatedPackageFamilyNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DelegatedPackageFamilyNames-DFProperties-End -->

<!-- DelegatedPackageFamilyNames-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DelegatedPackageFamilyNames |
| Friendly Name | Allow Windows Runtime apps to revoke enterprise data |
| Location | User Configuration |
| Path | Windows Components > File Revocation |
| Registry Key Name | Software\Policies\Microsoft\Windows\FileRevocation |
| ADMX File Name | FileRevocation.admx |
<!-- DelegatedPackageFamilyNames-AdmxBacked-End -->

<!-- DelegatedPackageFamilyNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DelegatedPackageFamilyNames-Examples-End -->

<!-- DelegatedPackageFamilyNames-End -->

<!-- ADMX_FileRevocation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileRevocation-CspMoreInfo-End -->

<!-- ADMX_FileRevocation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
