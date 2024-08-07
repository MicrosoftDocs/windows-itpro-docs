---
title: ADMX_Scripts Policy CSP
description: Learn more about the ADMX_Scripts Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Scripts-Begin -->
# Policy CSP - ADMX_Scripts

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Scripts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Scripts-Editable-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-Begin -->
## Allow_Logon_Script_NetbiosDisabled

<!-- Allow_Logon_Script_NetbiosDisabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Allow_Logon_Script_NetbiosDisabled-Applicability-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Allow_Logon_Script_NetbiosDisabled
```
<!-- Allow_Logon_Script_NetbiosDisabled-OmaUri-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows user logon scripts to run when the logon cross-forest, DNS suffixes aren't configured, and NetBIOS or WINS is disabled. This policy setting affects all user accounts interactively logging on to the computer.

- If you enable this policy setting, user logon scripts run if NetBIOS or WINS is disabled during cross-forest logons without the DNS suffixes being configured.

- If you disable or don't configure this policy setting, user account cross-forest, interactive logging can't run logon scripts if NetBIOS or WINS is disabled, and the DNS suffixes aren't configured.
<!-- Allow_Logon_Script_NetbiosDisabled-Description-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Allow_Logon_Script_NetbiosDisabled-Editable-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Allow_Logon_Script_NetbiosDisabled-DFProperties-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Allow_Logon_Script_NetbiosDisabled |
| Friendly Name | Allow logon scripts when NetBIOS or WINS is disabled |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | Allow-LogonScript-NetbiosDisabled |
| ADMX File Name | Scripts.admx |
<!-- Allow_Logon_Script_NetbiosDisabled-AdmxBacked-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Allow_Logon_Script_NetbiosDisabled-Examples-End -->

<!-- Allow_Logon_Script_NetbiosDisabled-End -->

<!-- MaxGPOScriptWaitPolicy-Begin -->
## MaxGPOScriptWaitPolicy

<!-- MaxGPOScriptWaitPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MaxGPOScriptWaitPolicy-Applicability-End -->

<!-- MaxGPOScriptWaitPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/MaxGPOScriptWaitPolicy
```
<!-- MaxGPOScriptWaitPolicy-OmaUri-End -->

<!-- MaxGPOScriptWaitPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines how long the system waits for scripts applied by Group Policy to run.

This setting limits the total time allowed for all logon, logoff, startup, and shutdown scripts applied by Group Policy to finish running. If the scripts haven't finished running when the specified time expires, the system stops script processing and records an error event.

- If you enable this setting, then, in the Seconds box, you can type a number from 1 to 32,000 for the number of seconds you want the system to wait for the set of scripts to finish. To direct the system to wait until the scripts have finished, no matter how long they take, type 0.

This interval is particularly important when other system tasks must wait while the scripts complete. By default, each startup script must complete before the next one runs. Also, you can use the "Run logon scripts synchronously" setting to direct the system to wait for the logon scripts to complete before loading the desktop.

An excessively long interval can delay the system and inconvenience users. However, if the interval is too short, prerequisite tasks might not be done, and the system can appear to be ready prematurely.

- If you disable or don't configure this setting the system lets the combined set of scripts run for up to 600 seconds (10 minutes). This is the default.
<!-- MaxGPOScriptWaitPolicy-Description-End -->

<!-- MaxGPOScriptWaitPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaxGPOScriptWaitPolicy-Editable-End -->

<!-- MaxGPOScriptWaitPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MaxGPOScriptWaitPolicy-DFProperties-End -->

<!-- MaxGPOScriptWaitPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxGPOScriptWaitPolicy |
| Friendly Name | Specify maximum wait time for Group Policy scripts |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | Scripts.admx |
<!-- MaxGPOScriptWaitPolicy-AdmxBacked-End -->

<!-- MaxGPOScriptWaitPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxGPOScriptWaitPolicy-Examples-End -->

<!-- MaxGPOScriptWaitPolicy-End -->

<!-- Run_Computer_PS_Scripts_First-Begin -->
## Run_Computer_PS_Scripts_First

<!-- Run_Computer_PS_Scripts_First-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Computer_PS_Scripts_First-Applicability-End -->

<!-- Run_Computer_PS_Scripts_First-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Computer_PS_Scripts_First
```
<!-- Run_Computer_PS_Scripts_First-OmaUri-End -->

<!-- Run_Computer_PS_Scripts_First-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- Run_Computer_PS_Scripts_First-Description-End -->

<!-- Run_Computer_PS_Scripts_First-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting determines whether Windows PowerShell scripts are run before non-Windows PowerShell scripts during computer startup and shutdown. By default, Windows PowerShell scripts run after non-Windows PowerShell scripts. If you enable this policy setting, within each applicable Group Policy Object (GPO), Windows PowerShell scripts are run before non-Windows PowerShell scripts during computer startup and shutdown.

For example, assume the following scenario:

There are three GPOs (GPO A, GPO B, and GPO C). This policy setting is enabled in GPO A. GPO B and GPO C include the following computer startup scripts:

- GPO B: B.cmd, B.ps1
- GPO C: C.cmd, C.ps1

Assume also that there are two computers, DesktopIT and DesktopSales. For DesktopIT, GPOs A, B, and C are applied. Therefore, the scripts for GPOs B and C run in the following order for DesktopIT:

- Within GPO B: B.ps1, B.cmd
- Within GPO C: C.ps1, C.cmd

For DesktopSales, GPOs B and C are applied, but not GPO A. Therefore, the scripts for GPOs B and C run in the following order for DesktopSales:

- Within GPO B: B.cmd, B.ps1
- Within GPO C: C.cmd, C.ps1

> [!NOTE]
> This policy setting determines the order in which computer startup and shutdown scripts are run within all applicable GPOs. You can override this policy setting for specific script types within a specific GPO by configuring the following policy settings for the GPO:
>
> - Computer Configuration\Policies\Windows Settings\Scripts (Startup/Shutdown)\Startup
> - Computer Configuration\Policies\Windows Settings\Scripts (Startup/Shutdown)\Shutdown
<!-- Run_Computer_PS_Scripts_First-Editable-End -->

<!-- Run_Computer_PS_Scripts_First-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Computer_PS_Scripts_First-DFProperties-End -->

<!-- Run_Computer_PS_Scripts_First-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Computer_PS_Scripts_First |
| Friendly Name | Run Windows PowerShell scripts first at computer startup, shutdown |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | RunComputerPSScriptsFirst |
| ADMX File Name | Scripts.admx |
<!-- Run_Computer_PS_Scripts_First-AdmxBacked-End -->

<!-- Run_Computer_PS_Scripts_First-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Computer_PS_Scripts_First-Examples-End -->

<!-- Run_Computer_PS_Scripts_First-End -->

<!-- Run_Legacy_Logon_Script_Hidden-Begin -->
## Run_Legacy_Logon_Script_Hidden

<!-- Run_Legacy_Logon_Script_Hidden-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Legacy_Logon_Script_Hidden-Applicability-End -->

<!-- Run_Legacy_Logon_Script_Hidden-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Legacy_Logon_Script_Hidden
```
<!-- Run_Legacy_Logon_Script_Hidden-OmaUri-End -->

<!-- Run_Legacy_Logon_Script_Hidden-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting hides the instructions in logon scripts written for Windows NT 4.0 and earlier.

Logon scripts are batch files of instructions that run when the user logs on. By default, Windows 2000 displays the instructions in logon scripts written for Windows NT 4.0 and earlier in a command window as they run, although it doesn't display logon scripts written for Windows 2000.

- If you enable this setting, Windows 2000 doesn't display logon scripts written for Windows NT 4.0 and earlier.

- If you disable or don't configure this policy setting, Windows 2000 displays login scripts written for Windows NT 4.0 and earlier.

Also, see the "Run Logon Scripts Visible" setting.
<!-- Run_Legacy_Logon_Script_Hidden-Description-End -->

<!-- Run_Legacy_Logon_Script_Hidden-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Legacy_Logon_Script_Hidden-Editable-End -->

<!-- Run_Legacy_Logon_Script_Hidden-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Legacy_Logon_Script_Hidden-DFProperties-End -->

<!-- Run_Legacy_Logon_Script_Hidden-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Legacy_Logon_Script_Hidden |
| Friendly Name | Run legacy logon scripts hidden |
| Location | User Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideLegacyLogonScripts |
| ADMX File Name | Scripts.admx |
<!-- Run_Legacy_Logon_Script_Hidden-AdmxBacked-End -->

<!-- Run_Legacy_Logon_Script_Hidden-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Legacy_Logon_Script_Hidden-Examples-End -->

<!-- Run_Legacy_Logon_Script_Hidden-End -->

<!-- Run_Logoff_Script_Visible-Begin -->
## Run_Logoff_Script_Visible

<!-- Run_Logoff_Script_Visible-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Logoff_Script_Visible-Applicability-End -->

<!-- Run_Logoff_Script_Visible-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Logoff_Script_Visible
```
<!-- Run_Logoff_Script_Visible-OmaUri-End -->

<!-- Run_Logoff_Script_Visible-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting displays the instructions in logoff scripts as they run.

Logoff scripts are batch files of instructions that run when the user logs off. By default, the system doesn't display the instructions in the logoff script.

- If you enable this policy setting, the system displays each instruction in the logoff script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.

- If you disable or don't configure this policy setting, the instructions are suppressed.
<!-- Run_Logoff_Script_Visible-Description-End -->

<!-- Run_Logoff_Script_Visible-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Logoff_Script_Visible-Editable-End -->

<!-- Run_Logoff_Script_Visible-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Logoff_Script_Visible-DFProperties-End -->

<!-- Run_Logoff_Script_Visible-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Logoff_Script_Visible |
| Friendly Name | Display instructions in logoff scripts as they run |
| Location | User Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideLogoffScripts |
| ADMX File Name | Scripts.admx |
<!-- Run_Logoff_Script_Visible-AdmxBacked-End -->

<!-- Run_Logoff_Script_Visible-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Logoff_Script_Visible-Examples-End -->

<!-- Run_Logoff_Script_Visible-End -->

<!-- Run_Logon_Script_Sync_1-Begin -->
## Run_Logon_Script_Sync_1

<!-- Run_Logon_Script_Sync_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Logon_Script_Sync_1-Applicability-End -->

<!-- Run_Logon_Script_Sync_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Logon_Script_Sync_1
```
<!-- Run_Logon_Script_Sync_1-OmaUri-End -->

<!-- Run_Logon_Script_Sync_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting directs the system to wait for logon scripts to finish running before it starts the File Explorer interface program and creates the desktop.

- If you enable this policy setting, File Explorer doesn't start until the logon scripts have finished running. This policy setting ensures that logon script processing is complete before the user starts working, but it can delay the appearance of the desktop.

- If you disable or don't configure this policy setting, the logon scripts and File Explorer aren't synchronized and can run simultaneously.

This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the policy setting set in User Configuration.
<!-- Run_Logon_Script_Sync_1-Description-End -->

<!-- Run_Logon_Script_Sync_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Logon_Script_Sync_1-Editable-End -->

<!-- Run_Logon_Script_Sync_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Logon_Script_Sync_1-DFProperties-End -->

<!-- Run_Logon_Script_Sync_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Logon_Script_Sync_1 |
| Friendly Name | Run logon scripts synchronously |
| Location | User Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | RunLogonScriptSync |
| ADMX File Name | Scripts.admx |
<!-- Run_Logon_Script_Sync_1-AdmxBacked-End -->

<!-- Run_Logon_Script_Sync_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Logon_Script_Sync_1-Examples-End -->

<!-- Run_Logon_Script_Sync_1-End -->

<!-- Run_Logon_Script_Sync_2-Begin -->
## Run_Logon_Script_Sync_2

<!-- Run_Logon_Script_Sync_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Logon_Script_Sync_2-Applicability-End -->

<!-- Run_Logon_Script_Sync_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Logon_Script_Sync_2
```
<!-- Run_Logon_Script_Sync_2-OmaUri-End -->

<!-- Run_Logon_Script_Sync_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting directs the system to wait for logon scripts to finish running before it starts the File Explorer interface program and creates the desktop.

- If you enable this policy setting, File Explorer doesn't start until the logon scripts have finished running. This policy setting ensures that logon script processing is complete before the user starts working, but it can delay the appearance of the desktop.

- If you disable or don't configure this policy setting, the logon scripts and File Explorer aren't synchronized and can run simultaneously.

This policy setting appears in the Computer Configuration and User Configuration folders. The policy setting set in Computer Configuration takes precedence over the policy setting set in User Configuration.
<!-- Run_Logon_Script_Sync_2-Description-End -->

<!-- Run_Logon_Script_Sync_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Logon_Script_Sync_2-Editable-End -->

<!-- Run_Logon_Script_Sync_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Logon_Script_Sync_2-DFProperties-End -->

<!-- Run_Logon_Script_Sync_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Logon_Script_Sync_2 |
| Friendly Name | Run logon scripts synchronously |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | RunLogonScriptSync |
| ADMX File Name | Scripts.admx |
<!-- Run_Logon_Script_Sync_2-AdmxBacked-End -->

<!-- Run_Logon_Script_Sync_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Logon_Script_Sync_2-Examples-End -->

<!-- Run_Logon_Script_Sync_2-End -->

<!-- Run_Logon_Script_Visible-Begin -->
## Run_Logon_Script_Visible

<!-- Run_Logon_Script_Visible-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Logon_Script_Visible-Applicability-End -->

<!-- Run_Logon_Script_Visible-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Logon_Script_Visible
```
<!-- Run_Logon_Script_Visible-OmaUri-End -->

<!-- Run_Logon_Script_Visible-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting displays the instructions in logon scripts as they run.

Logon scripts are batch files of instructions that run when the user logs on. By default, the system doesn't display the instructions in logon scripts.

- If you enable this policy setting, the system displays each instruction in the logon script as it runs. The instructions appear in a command window. This policy setting is designed for advanced users.

- If you disable or don't configure this policy setting, the instructions are suppressed.
<!-- Run_Logon_Script_Visible-Description-End -->

<!-- Run_Logon_Script_Visible-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Logon_Script_Visible-Editable-End -->

<!-- Run_Logon_Script_Visible-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Logon_Script_Visible-DFProperties-End -->

<!-- Run_Logon_Script_Visible-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Logon_Script_Visible |
| Friendly Name | Display instructions in logon scripts as they run |
| Location | User Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideLogonScripts |
| ADMX File Name | Scripts.admx |
<!-- Run_Logon_Script_Visible-AdmxBacked-End -->

<!-- Run_Logon_Script_Visible-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Logon_Script_Visible-Examples-End -->

<!-- Run_Logon_Script_Visible-End -->

<!-- Run_Shutdown_Script_Visible-Begin -->
## Run_Shutdown_Script_Visible

<!-- Run_Shutdown_Script_Visible-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Shutdown_Script_Visible-Applicability-End -->

<!-- Run_Shutdown_Script_Visible-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Shutdown_Script_Visible
```
<!-- Run_Shutdown_Script_Visible-OmaUri-End -->

<!-- Run_Shutdown_Script_Visible-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting displays the instructions in shutdown scripts as they run.

Shutdown scripts are batch files of instructions that run when the user restarts the system or shuts it down. By default, the system doesn't display the instructions in the shutdown script.

- If you enable this policy setting, the system displays each instruction in the shutdown script as it runs. The instructions appear in a command window.

- If you disable or don't configure this policy setting, the instructions are suppressed.
<!-- Run_Shutdown_Script_Visible-Description-End -->

<!-- Run_Shutdown_Script_Visible-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Shutdown_Script_Visible-Editable-End -->

<!-- Run_Shutdown_Script_Visible-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Shutdown_Script_Visible-DFProperties-End -->

<!-- Run_Shutdown_Script_Visible-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Shutdown_Script_Visible |
| Friendly Name | Display instructions in shutdown scripts as they run |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideShutdownScripts |
| ADMX File Name | Scripts.admx |
<!-- Run_Shutdown_Script_Visible-AdmxBacked-End -->

<!-- Run_Shutdown_Script_Visible-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Shutdown_Script_Visible-Examples-End -->

<!-- Run_Shutdown_Script_Visible-End -->

<!-- Run_Startup_Script_Sync-Begin -->
## Run_Startup_Script_Sync

<!-- Run_Startup_Script_Sync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Startup_Script_Sync-Applicability-End -->

<!-- Run_Startup_Script_Sync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Startup_Script_Sync
```
<!-- Run_Startup_Script_Sync-OmaUri-End -->

<!-- Run_Startup_Script_Sync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets the system run startup scripts simultaneously.

Startup scripts are batch files that run before the user is invited to log on. By default, the system waits for each startup script to complete before it runs the next startup script.

- If you enable this policy setting, the system doesn't coordinate the running of startup scripts. As a result, startup scripts can run simultaneously.

- If you disable or don't configure this policy setting, a startup can't run until the previous script is complete.

> [!NOTE]
> Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether the "Run startup scripts visible" policy setting is enabled or not.
<!-- Run_Startup_Script_Sync-Description-End -->

<!-- Run_Startup_Script_Sync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Startup_Script_Sync-Editable-End -->

<!-- Run_Startup_Script_Sync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Startup_Script_Sync-DFProperties-End -->

<!-- Run_Startup_Script_Sync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Startup_Script_Sync |
| Friendly Name | Run startup scripts asynchronously |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | RunStartupScriptSync |
| ADMX File Name | Scripts.admx |
<!-- Run_Startup_Script_Sync-AdmxBacked-End -->

<!-- Run_Startup_Script_Sync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Startup_Script_Sync-Examples-End -->

<!-- Run_Startup_Script_Sync-End -->

<!-- Run_Startup_Script_Visible-Begin -->
## Run_Startup_Script_Visible

<!-- Run_Startup_Script_Visible-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_Startup_Script_Visible-Applicability-End -->

<!-- Run_Startup_Script_Visible-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_Startup_Script_Visible
```
<!-- Run_Startup_Script_Visible-OmaUri-End -->

<!-- Run_Startup_Script_Visible-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting displays the instructions in startup scripts as they run.

Startup scripts are batch files of instructions that run before the user is invited to log on. By default, the system doesn't display the instructions in the startup script.

- If you enable this policy setting, the system displays each instruction in the startup script as it runs. Instructions appear in a command window. This policy setting is designed for advanced users.

- If you disable or don't configure this policy setting, the instructions are suppressed.

> [!NOTE]
> Starting with Windows Vista operating system, scripts that are configured to run asynchronously are no longer visible on startup, whether this policy setting is enabled or not.
<!-- Run_Startup_Script_Visible-Description-End -->

<!-- Run_Startup_Script_Visible-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Run_Startup_Script_Visible-Editable-End -->

<!-- Run_Startup_Script_Visible-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_Startup_Script_Visible-DFProperties-End -->

<!-- Run_Startup_Script_Visible-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_Startup_Script_Visible |
| Friendly Name | Display instructions in startup scripts as they run |
| Location | Computer Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideStartupScripts |
| ADMX File Name | Scripts.admx |
<!-- Run_Startup_Script_Visible-AdmxBacked-End -->

<!-- Run_Startup_Script_Visible-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_Startup_Script_Visible-Examples-End -->

<!-- Run_Startup_Script_Visible-End -->

<!-- Run_User_PS_Scripts_First-Begin -->
## Run_User_PS_Scripts_First

<!-- Run_User_PS_Scripts_First-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Run_User_PS_Scripts_First-Applicability-End -->

<!-- Run_User_PS_Scripts_First-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_User_PS_Scripts_First
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Scripts/Run_User_PS_Scripts_First
```
<!-- Run_User_PS_Scripts_First-OmaUri-End -->

<!-- Run_User_PS_Scripts_First-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- Run_User_PS_Scripts_First-Description-End -->

<!-- Run_User_PS_Scripts_First-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting determines whether Windows PowerShell scripts are run before non-Windows PowerShell scripts during user logon and logoff. By default, Windows PowerShell scripts run after non-Windows PowerShell scripts. If you enable this policy setting, within each applicable Group Policy Object (GPO), PowerShell scripts are run before non-PowerShell scripts during user logon and logoff.

For example, assume the following scenario:

There are three GPOs (GPO A, GPO B, and GPO C). This policy setting is enabled in GPO A. GPO B and GPO C include the following user logon scripts:

- GPO B: B.cmd, B.ps1
- GPO C: C.cmd, C.ps1

Assume also that there are two users, Qin Hong and Tamara Johnston. For Qin, GPOs A, B, and C are applied. Therefore, the scripts for GPOs B and C run in the following order for Qin:

- Within GPO B: B.ps1, B.cmd
- Within GPO C: C.ps1, C.cmd

For Tamara, GPOs B and C are applied, but not GPO A. Therefore, the scripts for GPOs B and C run in the following order for Tamara:

- Within GPO B: B.cmd, B.ps1
- Within GPO C: C.cmd, C.ps1

> [!NOTE]
> This policy setting determines the order in which user logon and logoff scripts are run within all applicable GPOs. You can override this policy setting for specific script types within a specific GPO by configuring the following policy settings for the GPO:
>
> - User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)\Logon
> - User Configuration\Policies\Windows Settings\Scripts (Logon/Logoff)\Logoff
<!-- Run_User_PS_Scripts_First-Editable-End -->

<!-- Run_User_PS_Scripts_First-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Run_User_PS_Scripts_First-DFProperties-End -->

<!-- Run_User_PS_Scripts_First-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Run_User_PS_Scripts_First |
| Friendly Name | Run Windows PowerShell scripts first at user logon, logoff |
| Location | Computer and User Configuration |
| Path | System > Scripts |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | RunUserPSScriptsFirst |
| ADMX File Name | Scripts.admx |
<!-- Run_User_PS_Scripts_First-AdmxBacked-End -->

<!-- Run_User_PS_Scripts_First-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Run_User_PS_Scripts_First-Examples-End -->

<!-- Run_User_PS_Scripts_First-End -->

<!-- ADMX_Scripts-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Scripts-CspMoreInfo-End -->

<!-- ADMX_Scripts-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
