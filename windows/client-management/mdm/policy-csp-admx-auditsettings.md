---
title: ADMX_AuditSettings Policy CSP
description: Learn more about the ADMX_AuditSettings Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_AuditSettings-Begin -->
# Policy CSP - ADMX_AuditSettings

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_AuditSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AuditSettings-Editable-End -->

<!-- IncludeCmdLine-Begin -->
## IncludeCmdLine

<!-- IncludeCmdLine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IncludeCmdLine-Applicability-End -->

<!-- IncludeCmdLine-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AuditSettings/IncludeCmdLine
```
<!-- IncludeCmdLine-OmaUri-End -->

<!-- IncludeCmdLine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines what information is logged in security audit events when a new process has been created.

This setting only applies when the Audit Process Creation policy is enabled.

- If you enable this policy setting the command line information for every process will be logged in plain text in the security event log as part of the Audit Process Creation event 4688, "a new process has been created," on the workstations and servers on which this policy setting is applied.

- If you disable or don't configure this policy setting, the process's command line information won't be included in Audit Process Creation events.

Default: Not configured.

> [!NOTE]
> When this policy setting is enabled, any user with access to read the security events will be able to read the command line arguments for any successfully created process. Command line arguments can contain sensitive or private information such as passwords or user data.
<!-- IncludeCmdLine-Description-End -->

<!-- IncludeCmdLine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IncludeCmdLine-Editable-End -->

<!-- IncludeCmdLine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IncludeCmdLine-DFProperties-End -->

<!-- IncludeCmdLine-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IncludeCmdLine |
| Friendly Name | Include command line in process creation events |
| Location | Computer Configuration |
| Path | System > Audit Process Creation |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System\Audit |
| Registry Value Name | ProcessCreationIncludeCmdLine_Enabled |
| ADMX File Name | AuditSettings.admx |
<!-- IncludeCmdLine-AdmxBacked-End -->

<!-- IncludeCmdLine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IncludeCmdLine-Examples-End -->

<!-- IncludeCmdLine-End -->

<!-- ADMX_AuditSettings-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AuditSettings-CspMoreInfo-End -->

<!-- ADMX_AuditSettings-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
