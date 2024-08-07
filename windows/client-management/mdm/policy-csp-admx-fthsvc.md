---
title: ADMX_fthsvc Policy CSP
description: Learn more about the ADMX_fthsvc Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_fthsvc-Begin -->
# Policy CSP - ADMX_fthsvc

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_fthsvc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_fthsvc-Editable-End -->

<!-- WdiScenarioExecutionPolicy-Begin -->
## WdiScenarioExecutionPolicy

<!-- WdiScenarioExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy-Applicability-End -->

<!-- WdiScenarioExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_fthsvc/WdiScenarioExecutionPolicy
```
<!-- WdiScenarioExecutionPolicy-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting permits or prohibits the Diagnostic Policy Service (DPS) from automatically resolving any heap corruption problems.

- If you enable this policy setting, the DPS detects, troubleshoots, and attempts to resolve automatically any heap corruption problems.

- If you disable this policy setting, Windows can't detect, troubleshoot, and attempt to resolve automatically any heap corruption problems that are handled by the DPS.

- If you don't configure this policy setting, the DPS enables Fault Tolerant Heap for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

This policy setting takes effect only when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios aren't executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.

No system restart or service restart is required for this policy setting to take effect: changes take effect immediately.
<!-- WdiScenarioExecutionPolicy-Description-End -->

<!-- WdiScenarioExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy-Editable-End -->

<!-- WdiScenarioExecutionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiScenarioExecutionPolicy-DFProperties-End -->

<!-- WdiScenarioExecutionPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiScenarioExecutionPolicy |
| Friendly Name | Configure Scenario Execution Level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Fault Tolerant Heap |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{dc42ff48-e40d-4a60-8675-e71f7e64aa9a} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | fthsvc.admx |
<!-- WdiScenarioExecutionPolicy-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy-Examples-End -->

<!-- WdiScenarioExecutionPolicy-End -->

<!-- ADMX_fthsvc-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_fthsvc-CspMoreInfo-End -->

<!-- ADMX_fthsvc-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
