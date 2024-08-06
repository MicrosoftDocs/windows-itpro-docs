---
title: ADMX_WDI Policy CSP
description: Learn more about the ADMX_WDI Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WDI-Begin -->
# Policy CSP - ADMX_WDI

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WDI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WDI-Editable-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-Begin -->
## WdiDpsScenarioDataSizeLimitPolicy

<!-- WdiDpsScenarioDataSizeLimitPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiDpsScenarioDataSizeLimitPolicy-Applicability-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WDI/WdiDpsScenarioDataSizeLimitPolicy
```
<!-- WdiDpsScenarioDataSizeLimitPolicy-OmaUri-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the data retention limit for Diagnostic Policy Service (DPS) scenario data.

- If you enable this policy setting, you must enter the maximum size of scenario data that should be retained in megabytes. Detailed troubleshooting data related to scenarios will be retained until this limit's reached.

- If you disable or don't configure this policy setting, the DPS deletes scenario data once it exceeds 128 megabytes in size.

No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenario data won't be deleted. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiDpsScenarioDataSizeLimitPolicy-Description-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiDpsScenarioDataSizeLimitPolicy-Editable-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiDpsScenarioDataSizeLimitPolicy-DFProperties-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiDpsScenarioDataSizeLimitPolicy |
| Friendly Name | Diagnostics: Configure scenario retention |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI |
| Registry Value Name | DataRetentionBySizeEnabled |
| ADMX File Name | WDI.admx |
<!-- WdiDpsScenarioDataSizeLimitPolicy-AdmxBacked-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiDpsScenarioDataSizeLimitPolicy-Examples-End -->

<!-- WdiDpsScenarioDataSizeLimitPolicy-End -->

<!-- WdiDpsScenarioExecutionPolicy-Begin -->
## WdiDpsScenarioExecutionPolicy

<!-- WdiDpsScenarioExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiDpsScenarioExecutionPolicy-Applicability-End -->

<!-- WdiDpsScenarioExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WDI/WdiDpsScenarioExecutionPolicy
```
<!-- WdiDpsScenarioExecutionPolicy-OmaUri-End -->

<!-- WdiDpsScenarioExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the execution level for Diagnostic Policy Service (DPS) scenarios.

- If you enable this policy setting, you must select an execution level from the drop-down menu. If you select problem detection and troubleshooting only, the DPS will detect problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will attempt to automatically fix problems it detects or indicate to the user that assisted resolution is available.

- If you disable this policy setting, Windows can't detect, troubleshoot, or resolve any problems that are handled by the DPS.

- If you don't configure this policy setting, the DPS enables all scenarios for resolution by default, unless you configure separate scenario-specific policy settings.

This policy setting takes precedence over any scenario-specific policy settings when it's enabled or disabled. Scenario-specific policy settings only take effect if this policy setting isn't configured.

No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.
<!-- WdiDpsScenarioExecutionPolicy-Description-End -->

<!-- WdiDpsScenarioExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiDpsScenarioExecutionPolicy-Editable-End -->

<!-- WdiDpsScenarioExecutionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiDpsScenarioExecutionPolicy-DFProperties-End -->

<!-- WdiDpsScenarioExecutionPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiDpsScenarioExecutionPolicy |
| Friendly Name | Diagnostics: Configure scenario execution level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | WDI.admx |
<!-- WdiDpsScenarioExecutionPolicy-AdmxBacked-End -->

<!-- WdiDpsScenarioExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiDpsScenarioExecutionPolicy-Examples-End -->

<!-- WdiDpsScenarioExecutionPolicy-End -->

<!-- ADMX_WDI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WDI-CspMoreInfo-End -->

<!-- ADMX_WDI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
