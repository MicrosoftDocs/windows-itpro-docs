---
title: ADMX_WordWheel Policy CSP
description: Learn more about the ADMX_WordWheel Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WordWheel-Begin -->
# Policy CSP - ADMX_WordWheel

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WordWheel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WordWheel-Editable-End -->

<!-- CustomSearch-Begin -->
## CustomSearch

<!-- CustomSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomSearch-Applicability-End -->

<!-- CustomSearch-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WordWheel/CustomSearch
```
<!-- CustomSearch-OmaUri-End -->

<!-- CustomSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
Set up the menu name and URL for the custom Internet search provider.

- If you enable this setting, the specified menu name and URL will be used for Internet searches.

- If you disable or not configure this setting, the default Internet search provider will be used.
<!-- CustomSearch-Description-End -->

<!-- CustomSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomSearch-Editable-End -->

<!-- CustomSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomSearch-DFProperties-End -->

<!-- CustomSearch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomSearch |
| Friendly Name | Custom Instant Search Internet search provider |
| Location | User Configuration |
| Path | Windows Components > Instant Search |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\SearchExtensions |
| ADMX File Name | WordWheel.admx |
<!-- CustomSearch-AdmxBacked-End -->

<!-- CustomSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomSearch-Examples-End -->

<!-- CustomSearch-End -->

<!-- ADMX_WordWheel-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WordWheel-CspMoreInfo-End -->

<!-- ADMX_WordWheel-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
