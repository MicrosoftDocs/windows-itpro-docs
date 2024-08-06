---
title: ADMX_DistributedLinkTracking Policy CSP
description: Learn more about the ADMX_DistributedLinkTracking Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DistributedLinkTracking-Begin -->
# Policy CSP - ADMX_DistributedLinkTracking

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DistributedLinkTracking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DistributedLinkTracking-Editable-End -->

<!-- DLT_AllowDomainMode-Begin -->
## DLT_AllowDomainMode

<!-- DLT_AllowDomainMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DLT_AllowDomainMode-Applicability-End -->

<!-- DLT_AllowDomainMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DistributedLinkTracking/DLT_AllowDomainMode
```
<!-- DLT_AllowDomainMode-OmaUri-End -->

<!-- DLT_AllowDomainMode-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that Distributed Link Tracking clients in this domain may use the Distributed Link Tracking (DLT) server, which runs on domain controllers. The DLT client enables programs to track linked files that are moved within an NTFS volume, to another NTFS volume on the same computer, or to an NTFS volume on another computer. The DLT client can more reliably track links when allowed to use the DLT server. This policy shouldn't be set unless the DLT server is running on all domain controllers in the domain.
<!-- DLT_AllowDomainMode-Description-End -->

<!-- DLT_AllowDomainMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**Note** This policy setting applies to all sites in Trusted zones.
<!-- DLT_AllowDomainMode-Editable-End -->

<!-- DLT_AllowDomainMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DLT_AllowDomainMode-DFProperties-End -->

<!-- DLT_AllowDomainMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DLT_AllowDomainMode |
| Friendly Name | Allow Distributed Link Tracking clients to use domain resources |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DLT_AllowDomainMode |
| ADMX File Name | DistributedLinkTracking.admx |
<!-- DLT_AllowDomainMode-AdmxBacked-End -->

<!-- DLT_AllowDomainMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DLT_AllowDomainMode-Examples-End -->

<!-- DLT_AllowDomainMode-End -->

<!-- ADMX_DistributedLinkTracking-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DistributedLinkTracking-CspMoreInfo-End -->

<!-- ADMX_DistributedLinkTracking-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
