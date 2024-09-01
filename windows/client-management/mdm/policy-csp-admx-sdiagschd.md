---
title: ADMX_sdiagschd Policy CSP
description: Learn more about the ADMX_sdiagschd Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_sdiagschd-Begin -->
# Policy CSP - ADMX_sdiagschd

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_sdiagschd-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_sdiagschd-Editable-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-Begin -->
## ScheduledDiagnosticsExecutionPolicy

<!-- ScheduledDiagnosticsExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ScheduledDiagnosticsExecutionPolicy-Applicability-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_sdiagschd/ScheduledDiagnosticsExecutionPolicy
```
<!-- ScheduledDiagnosticsExecutionPolicy-OmaUri-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether scheduled diagnostics will run to proactively detect and resolve system problems.

- If you enable this policy setting, you must choose an execution level. If you choose detection and troubleshooting only, Windows will periodically detect and troubleshoot problems. The user will be notified of the problem for interactive resolution.

If you choose detection, troubleshooting and resolution, Windows will resolve some of these problems silently without requiring user input.

- If you disable this policy setting, Windows won't be able to detect, troubleshoot or resolve problems on a scheduled basis.

- If you don't configure this policy setting, local troubleshooting preferences will take precedence, as configured in the control panel. If no local troubleshooting preference is configured, scheduled diagnostics are enabled for detection, troubleshooting and resolution by default.

No reboots or service restarts are required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Task Scheduler service is in the running state. When the service is stopped or disabled, scheduled diagnostics won't be executed. The Task Scheduler service can be configured with the Services snap-in to the Microsoft Management Console.
<!-- ScheduledDiagnosticsExecutionPolicy-Description-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScheduledDiagnosticsExecutionPolicy-Editable-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ScheduledDiagnosticsExecutionPolicy-DFProperties-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ScheduledDiagnosticsExecutionPolicy |
| Friendly Name | Configure Scheduled Maintenance Behavior |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Scheduled Maintenance |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics |
| Registry Value Name | EnabledExecution |
| ADMX File Name | sdiagschd.admx |
<!-- ScheduledDiagnosticsExecutionPolicy-AdmxBacked-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScheduledDiagnosticsExecutionPolicy-Examples-End -->

<!-- ScheduledDiagnosticsExecutionPolicy-End -->

<!-- ADMX_sdiagschd-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_sdiagschd-CspMoreInfo-End -->

<!-- ADMX_sdiagschd-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
