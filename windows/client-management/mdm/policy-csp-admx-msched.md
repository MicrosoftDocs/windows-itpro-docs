---
title: ADMX_msched Policy CSP
description: Learn more about the ADMX_msched Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_msched-Begin -->
# Policy CSP - ADMX_msched

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_msched-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_msched-Editable-End -->

<!-- ActivationBoundaryPolicy-Begin -->
## ActivationBoundaryPolicy

<!-- ActivationBoundaryPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ActivationBoundaryPolicy-Applicability-End -->

<!-- ActivationBoundaryPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_msched/ActivationBoundaryPolicy
```
<!-- ActivationBoundaryPolicy-OmaUri-End -->

<!-- ActivationBoundaryPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Automatic Maintenance activation boundary.

The maintenance activation boundary is the daily schduled time at which Automatic Maintenance starts.

- If you enable this policy setting, this will override the default daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel.

- If you disable or don't configure this policy setting, the daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
<!-- ActivationBoundaryPolicy-Description-End -->

<!-- ActivationBoundaryPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActivationBoundaryPolicy-Editable-End -->

<!-- ActivationBoundaryPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ActivationBoundaryPolicy-DFProperties-End -->

<!-- ActivationBoundaryPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ActivationBoundaryPolicy |
| Friendly Name | Automatic Maintenance Activation Boundary |
| Location | Computer Configuration |
| Path | Windows Components > Maintenance Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Task Scheduler\Maintenance |
| ADMX File Name | msched.admx |
<!-- ActivationBoundaryPolicy-AdmxBacked-End -->

<!-- ActivationBoundaryPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActivationBoundaryPolicy-Examples-End -->

<!-- ActivationBoundaryPolicy-End -->

<!-- RandomDelayPolicy-Begin -->
## RandomDelayPolicy

<!-- RandomDelayPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RandomDelayPolicy-Applicability-End -->

<!-- RandomDelayPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_msched/RandomDelayPolicy
```
<!-- RandomDelayPolicy-OmaUri-End -->

<!-- RandomDelayPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Automatic Maintenance activation random delay.

The maintenance random delay is the amount of time up to which Automatic Maintenance will delay starting from its Activation Boundary.

- If you enable this policy setting, Automatic Maintenance will delay starting from its Activation Boundary, by upto this time.

- If you don't configure this policy setting, 4 hour random delay will be applied to Automatic Maintenance.

- If you disable this policy setting, no random delay will be applied to Automatic Maintenance.
<!-- RandomDelayPolicy-Description-End -->

<!-- RandomDelayPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RandomDelayPolicy-Editable-End -->

<!-- RandomDelayPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RandomDelayPolicy-DFProperties-End -->

<!-- RandomDelayPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RandomDelayPolicy |
| Friendly Name | Automatic Maintenance Random Delay |
| Location | Computer Configuration |
| Path | Windows Components > Maintenance Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Task Scheduler\Maintenance |
| Registry Value Name | Randomized |
| ADMX File Name | msched.admx |
<!-- RandomDelayPolicy-AdmxBacked-End -->

<!-- RandomDelayPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RandomDelayPolicy-Examples-End -->

<!-- RandomDelayPolicy-End -->

<!-- ADMX_msched-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_msched-CspMoreInfo-End -->

<!-- ADMX_msched-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
