---
title: ADMX_DFS Policy CSP
description: Learn more about the ADMX_DFS Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DFS-Begin -->
# Policy CSP - ADMX_DFS

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DFS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DFS-Editable-End -->

<!-- DFSDiscoverDC-Begin -->
## DFSDiscoverDC

<!-- DFSDiscoverDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DFSDiscoverDC-Applicability-End -->

<!-- DFSDiscoverDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DFS/DFSDiscoverDC
```
<!-- DFSDiscoverDC-OmaUri-End -->

<!-- DFSDiscoverDC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure how often a Distributed File System (DFS) client attempts to discover domain controllers on a network. By default, a DFS client attempts to discover domain controllers every 15 minutes.

- If you enable this policy setting, you can configure how often a DFS client attempts to discover domain controllers. This value is specified in minutes.

- If you disable or don't configure this policy setting, the default value of 15 minutes applies.

> [!NOTE]
> The minimum value you can select is 15 minutes. If you try to set this setting to a value less than 15 minutes, the default value of 15 minutes is applied.
<!-- DFSDiscoverDC-Description-End -->

<!-- DFSDiscoverDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DFSDiscoverDC-Editable-End -->

<!-- DFSDiscoverDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DFSDiscoverDC-DFProperties-End -->

<!-- DFSDiscoverDC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DFSDiscoverDC |
| Friendly Name | Configure how often a DFS client discovers domain controllers |
| Location | Computer Configuration |
| Path | Network |
| Registry Key Name | Software\Policies\Microsoft\System\DFSClient |
| ADMX File Name | DFS.admx |
<!-- DFSDiscoverDC-AdmxBacked-End -->

<!-- DFSDiscoverDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DFSDiscoverDC-Examples-End -->

<!-- DFSDiscoverDC-End -->

<!-- ADMX_DFS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DFS-CspMoreInfo-End -->

<!-- ADMX_DFS-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
