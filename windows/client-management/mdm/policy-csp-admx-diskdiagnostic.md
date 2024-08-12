---
title: ADMX_DiskDiagnostic Policy CSP
description: Learn more about the ADMX_DiskDiagnostic Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DiskDiagnostic-Begin -->
# Policy CSP - ADMX_DiskDiagnostic

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DiskDiagnostic-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DiskDiagnostic-Editable-End -->

<!-- DfdAlertPolicy-Begin -->
## DfdAlertPolicy

<!-- DfdAlertPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DfdAlertPolicy-Applicability-End -->

<!-- DfdAlertPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskDiagnostic/DfdAlertPolicy
```
<!-- DfdAlertPolicy-OmaUri-End -->

<!-- DfdAlertPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting substitutes custom alert text in the disk diagnostic message shown to users when a disk reports a S. M. A. R. T. fault.

- If you enable this policy setting, Windows displays custom alert text in the disk diagnostic message. The custom text may not exceed 512 characters.

- If you disable or don't configure this policy setting, Windows displays the default alert text in the disk diagnostic message.

No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.

This policy setting only takes effect if the Disk Diagnostic scenario policy setting is enabled or not configured and the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios aren't executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.

> [!NOTE]
> For Windows Server systems, this policy setting applies only if the Desktop Experience optional component is installed and the Remote Desktop Services role isn't installed.
<!-- DfdAlertPolicy-Description-End -->

<!-- DfdAlertPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DfdAlertPolicy-Editable-End -->

<!-- DfdAlertPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DfdAlertPolicy-DFProperties-End -->

<!-- DfdAlertPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DfdAlertPolicy |
| Friendly Name | Disk Diagnostic: Configure custom alert text |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Disk Diagnostic |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{29689E29-2CE9-4751-B4FC-8EFF5066E3FD} |
| ADMX File Name | DiskDiagnostic.admx |
<!-- DfdAlertPolicy-AdmxBacked-End -->

<!-- DfdAlertPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DfdAlertPolicy-Examples-End -->

<!-- DfdAlertPolicy-End -->

<!-- WdiScenarioExecutionPolicy-Begin -->
## WdiScenarioExecutionPolicy

<!-- WdiScenarioExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy-Applicability-End -->

<!-- WdiScenarioExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskDiagnostic/WdiScenarioExecutionPolicy
```
<!-- WdiScenarioExecutionPolicy-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the execution level for S. M. A. R. T.-based disk diagnostics.

Self-Monitoring And Reporting Technology (S. M. A. R. T). is a standard mechanism for storage devices to report faults to Windows. A disk that reports a S. M. A. R. T. fault may need to be repaired or replaced. The Diagnostic Policy Service (DPS) detects and logs S. M. A. R. T. faults to the event log when they occur.

- If you enable this policy setting, the DPS also warns users of S. M. A. R. T. faults and guides them through backup and recovery to minimize potential data loss.

- If you disable this policy, S. M. A. R. T. faults are still detected and logged, but no corrective action is taken.

- If you don't configure this policy setting, the DPS enables S. M. A. R. T. fault resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.

This policy setting takes effect only when the DPS is in the running state. When the service is stopped or disabled, diagnostic scenarios aren't executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.

> [!NOTE]
> For Windows Server systems, this policy setting applies only if the Desktop Experience optional component is installed and the Remote Desktop Services role isn't installed.
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
| Friendly Name | Disk Diagnostic: Configure execution level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Disk Diagnostic |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{29689E29-2CE9-4751-B4FC-8EFF5066E3FD} |
| ADMX File Name | DiskDiagnostic.admx |
<!-- WdiScenarioExecutionPolicy-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy-Examples-End -->

<!-- WdiScenarioExecutionPolicy-End -->

<!-- ADMX_DiskDiagnostic-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DiskDiagnostic-CspMoreInfo-End -->

<!-- ADMX_DiskDiagnostic-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
