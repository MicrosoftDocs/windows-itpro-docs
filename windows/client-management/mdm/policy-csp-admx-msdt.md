---
title: ADMX_MSDT Policy CSP
description: Learn more about the ADMX_MSDT Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_MSDT-Begin -->
# Policy CSP - ADMX_MSDT

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_MSDT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSDT-Editable-End -->

<!-- MsdtSupportProvider-Begin -->
## MsdtSupportProvider

<!-- MsdtSupportProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MsdtSupportProvider-Applicability-End -->

<!-- MsdtSupportProvider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSDT/MsdtSupportProvider
```
<!-- MsdtSupportProvider-OmaUri-End -->

<!-- MsdtSupportProvider-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures Microsoft Support Diagnostic Tool (MSDT) interactive communication with the support provider. MSDT gathers diagnostic data for analysis by support professionals.

- If you enable this policy setting, users can use MSDT to collect and send diagnostic data to a support professional to resolve a problem.

By default, the support provider is set to Microsoft Corporation.

- If you disable this policy setting, MSDT can't run in support mode, and no data can be collected or sent to the support provider.

- If you don't configure this policy setting, MSDT support mode is enabled by default.

No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.
<!-- MsdtSupportProvider-Description-End -->

<!-- MsdtSupportProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MsdtSupportProvider-Editable-End -->

<!-- MsdtSupportProvider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MsdtSupportProvider-DFProperties-End -->

<!-- MsdtSupportProvider-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MsdtSupportProvider |
| Friendly Name | Microsoft Support Diagnostic Tool: Turn on MSDT interactive communication with support provider |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Microsoft Support Diagnostic Tool |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy |
| Registry Value Name | DisableQueryRemoteServer |
| ADMX File Name | MSDT.admx |
<!-- MsdtSupportProvider-AdmxBacked-End -->

<!-- MsdtSupportProvider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MsdtSupportProvider-Examples-End -->

<!-- MsdtSupportProvider-End -->

<!-- MsdtToolDownloadPolicy-Begin -->
## MsdtToolDownloadPolicy

<!-- MsdtToolDownloadPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MsdtToolDownloadPolicy-Applicability-End -->

<!-- MsdtToolDownloadPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSDT/MsdtToolDownloadPolicy
```
<!-- MsdtToolDownloadPolicy-OmaUri-End -->

<!-- MsdtToolDownloadPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts the tool download policy for Microsoft Support Diagnostic Tool.

Microsoft Support Diagnostic Tool (MSDT) gathers diagnostic data for analysis by support professionals. For some problems, MSDT may prompt the user to download additional tools for troubleshooting.

These tools are required to completely troubleshoot the problem. If tool download is restricted, it may not be possible to find the root cause of the problem.

- If you enable this policy setting for remote troubleshooting, MSDT prompts the user to download additional tools to diagnose problems on remote computers only.

- If you enable this policy setting for local and remote troubleshooting, MSDT always prompts for additional tool downloading.

- If you disable this policy setting, MSDT never downloads tools, and is unable to diagnose problems on remote computers.

- If you don't configure this policy setting, MSDT prompts the user before downloading any additional tools.

No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.

This policy setting will take effect only when MSDT is enabled.

This policy setting will only take effect when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios aren't executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- MsdtToolDownloadPolicy-Description-End -->

<!-- MsdtToolDownloadPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MsdtToolDownloadPolicy-Editable-End -->

<!-- MsdtToolDownloadPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MsdtToolDownloadPolicy-DFProperties-End -->

<!-- MsdtToolDownloadPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MsdtToolDownloadPolicy |
| Friendly Name | Microsoft Support Diagnostic Tool: Restrict tool download |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Microsoft Support Diagnostic Tool |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{C295FBBA-FD47-46ac-8BEE-B1715EC634E5} |
| Registry Value Name | DownloadToolsEnabled |
| ADMX File Name | MSDT.admx |
<!-- MsdtToolDownloadPolicy-AdmxBacked-End -->

<!-- MsdtToolDownloadPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MsdtToolDownloadPolicy-Examples-End -->

<!-- MsdtToolDownloadPolicy-End -->

<!-- WdiScenarioExecutionPolicy-Begin -->
## WdiScenarioExecutionPolicy

<!-- WdiScenarioExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy-Applicability-End -->

<!-- WdiScenarioExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSDT/WdiScenarioExecutionPolicy
```
<!-- WdiScenarioExecutionPolicy-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the execution level for Microsoft Support Diagnostic Tool.

Microsoft Support Diagnostic Tool (MSDT) gathers diagnostic data for analysis by support professionals.

- If you enable this policy setting, administrators can use MSDT to collect and send diagnostic data to a support professional to resolve a problem.

- If you disable this policy setting, MSDT can't gather diagnostic data.

- If you don't configure this policy setting, MSDT is turned on by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy isn't configured.

No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios won't be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
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
| Friendly Name | Microsoft Support Diagnostic Tool: Configure execution level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Microsoft Support Diagnostic Tool |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{C295FBBA-FD47-46ac-8BEE-B1715EC634E5} |
| ADMX File Name | MSDT.admx |
<!-- WdiScenarioExecutionPolicy-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy-Examples-End -->

<!-- WdiScenarioExecutionPolicy-End -->

<!-- ADMX_MSDT-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSDT-CspMoreInfo-End -->

<!-- ADMX_MSDT-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
