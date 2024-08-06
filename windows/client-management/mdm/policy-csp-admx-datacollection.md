---
title: ADMX_DataCollection Policy CSP
description: Learn more about the ADMX_DataCollection Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DataCollection-Begin -->
# Policy CSP - ADMX_DataCollection

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DataCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DataCollection-Editable-End -->

<!-- CommercialIdPolicy-Begin -->
## CommercialIdPolicy

<!-- CommercialIdPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CommercialIdPolicy-Applicability-End -->

<!-- CommercialIdPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DataCollection/CommercialIdPolicy
```
<!-- CommercialIdPolicy-OmaUri-End -->

<!-- CommercialIdPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the identifier used to uniquely associate this device's diagnostic data data as belonging to a given organization. If your organization is participating in a program that requires this device to be identified as belonging to your organization then use this setting to provide that identification. The value for this setting will be provided by Microsoft as part of the onboarding process for the program.

If you disable or don't configure this policy setting, then Microsoft won't be able to use this identifier to associate this machine and its diagnostic data data with your organization.
<!-- CommercialIdPolicy-Description-End -->

<!-- CommercialIdPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Starting with the January 2023 preview cumulative update, this policy is no longer supported to configure the processor option. For more information, see [Enable Windows diagnostic data processor configuration](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#enable-windows-diagnostic-data-processor-configuration).
<!-- CommercialIdPolicy-Editable-End -->

<!-- CommercialIdPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CommercialIdPolicy-DFProperties-End -->

<!-- CommercialIdPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CommercialIdPolicy |
| Friendly Name | Configure the Commercial ID |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- CommercialIdPolicy-AdmxBacked-End -->

<!-- CommercialIdPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CommercialIdPolicy-Examples-End -->

<!-- CommercialIdPolicy-End -->

<!-- ADMX_DataCollection-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DataCollection-CspMoreInfo-End -->

<!-- ADMX_DataCollection-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
