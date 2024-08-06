---
title: ADMX_WinInit Policy CSP
description: Learn more about the ADMX_WinInit Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WinInit-Begin -->
# Policy CSP - ADMX_WinInit

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WinInit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinInit-Editable-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Begin -->
## DisableNamedPipeShutdownPolicyDescription

<!-- DisableNamedPipeShutdownPolicyDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableNamedPipeShutdownPolicyDescription-Applicability-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinInit/DisableNamedPipeShutdownPolicyDescription
```
<!-- DisableNamedPipeShutdownPolicyDescription-OmaUri-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the legacy remote shutdown interface (named pipe). The named pipe remote shutdown interface is needed in order to shutdown this system from a remote Windows XP or Windows Server 2003 system.

- If you enable this policy setting, the system doesn't create the named pipe remote shutdown interface.

- If you disable or don't configure this policy setting, the system creates the named pipe remote shutdown interface.
<!-- DisableNamedPipeShutdownPolicyDescription-Description-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableNamedPipeShutdownPolicyDescription-Editable-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableNamedPipeShutdownPolicyDescription-DFProperties-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableNamedPipeShutdownPolicyDescription |
| Friendly Name | Turn off legacy remote shutdown interface |
| Location | Computer Configuration |
| Path | Windows Components > Shutdown Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableShutdownNamedPipe |
| ADMX File Name | WinInit.admx |
<!-- DisableNamedPipeShutdownPolicyDescription-AdmxBacked-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableNamedPipeShutdownPolicyDescription-Examples-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-End -->

<!-- Hiberboot-Begin -->
## Hiberboot

<!-- Hiberboot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Hiberboot-Applicability-End -->

<!-- Hiberboot-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinInit/Hiberboot
```
<!-- Hiberboot-OmaUri-End -->

<!-- Hiberboot-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the use of fast startup.

- If you enable this policy setting, the system requires hibernate to be enabled.

- If you disable or don't configure this policy setting, the local setting is used.
<!-- Hiberboot-Description-End -->

<!-- Hiberboot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Hiberboot-Editable-End -->

<!-- Hiberboot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Hiberboot-DFProperties-End -->

<!-- Hiberboot-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Hiberboot |
| Friendly Name | Require use of fast startup |
| Location | Computer Configuration |
| Path | System > Shutdown |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | HiberbootEnabled |
| ADMX File Name | WinInit.admx |
<!-- Hiberboot-AdmxBacked-End -->

<!-- Hiberboot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Hiberboot-Examples-End -->

<!-- Hiberboot-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Begin -->
## ShutdownTimeoutHungSessionsDescription

<!-- ShutdownTimeoutHungSessionsDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShutdownTimeoutHungSessionsDescription-Applicability-End -->

<!-- ShutdownTimeoutHungSessionsDescription-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinInit/ShutdownTimeoutHungSessionsDescription
```
<!-- ShutdownTimeoutHungSessionsDescription-OmaUri-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the number of minutes the system waits for the hung logon sessions before proceeding with the system shutdown.

- If you enable this policy setting, the system waits for the hung logon sessions for the number of minutes specified.

- If you disable or don't configure this policy setting, the default timeout value is 3 minutes for workstations and 15 minutes for servers.
<!-- ShutdownTimeoutHungSessionsDescription-Description-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShutdownTimeoutHungSessionsDescription-Editable-End -->

<!-- ShutdownTimeoutHungSessionsDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShutdownTimeoutHungSessionsDescription-DFProperties-End -->

<!-- ShutdownTimeoutHungSessionsDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShutdownTimeoutHungSessionsDescription |
| Friendly Name | Timeout for hung logon sessions during shutdown |
| Location | Computer Configuration |
| Path | Windows Components > Shutdown Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | WinInit.admx |
<!-- ShutdownTimeoutHungSessionsDescription-AdmxBacked-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShutdownTimeoutHungSessionsDescription-Examples-End -->

<!-- ShutdownTimeoutHungSessionsDescription-End -->

<!-- ADMX_WinInit-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinInit-CspMoreInfo-End -->

<!-- ADMX_WinInit-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
