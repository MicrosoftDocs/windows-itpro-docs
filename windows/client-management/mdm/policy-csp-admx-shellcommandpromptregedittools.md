---
title: ADMX_ShellCommandPromptRegEditTools Policy CSP
description: Learn more about the ADMX_ShellCommandPromptRegEditTools Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ShellCommandPromptRegEditTools-Begin -->
# Policy CSP - ADMX_ShellCommandPromptRegEditTools

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ShellCommandPromptRegEditTools-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ShellCommandPromptRegEditTools-Editable-End -->

<!-- DisableCMD-Begin -->
## DisableCMD

<!-- DisableCMD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableCMD-Applicability-End -->

<!-- DisableCMD-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ShellCommandPromptRegEditTools/DisableCMD
```
<!-- DisableCMD-OmaUri-End -->

<!-- DisableCMD-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from running the interactive command prompt, Cmd.exe. This policy setting also determines whether batch files (.cmd and .bat) can run on the computer.

- If you enable this policy setting and the user tries to open a command window, the system displays a message explaining that a setting prevents the action.

- If you disable this policy setting or don't configure it, users can run Cmd.exe and batch files normally.

> [!NOTE]
> Don't prevent the computer from running batch files if the computer uses logon, logoff, startup, or shutdown batch file scripts, or for users that use Remote Desktop Services.
<!-- DisableCMD-Description-End -->

<!-- DisableCMD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCMD-Editable-End -->

<!-- DisableCMD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableCMD-DFProperties-End -->

<!-- DisableCMD-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableCMD |
| Friendly Name | Prevent access to the command prompt |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | Shell-CommandPrompt-RegEditTools.admx |
<!-- DisableCMD-AdmxBacked-End -->

<!-- DisableCMD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCMD-Examples-End -->

<!-- DisableCMD-End -->

<!-- DisableRegedit-Begin -->
## DisableRegedit

<!-- DisableRegedit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRegedit-Applicability-End -->

<!-- DisableRegedit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ShellCommandPromptRegEditTools/DisableRegedit
```
<!-- DisableRegedit-OmaUri-End -->

<!-- DisableRegedit-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the Windows registry editor Regedit.exe.

- If you enable this policy setting and the user tries to start Regedit.exe, a message appears explaining that a policy setting prevents the action.

- If you disable this policy setting or don't configure it, users can run Regedit.exe normally.

To prevent users from using other administrative tools, use the "Run only specified Windows applications" policy setting.
<!-- DisableRegedit-Description-End -->

<!-- DisableRegedit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRegedit-Editable-End -->

<!-- DisableRegedit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRegedit-DFProperties-End -->

<!-- DisableRegedit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRegedit |
| Friendly Name | Prevent access to registry editing tools |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | Shell-CommandPrompt-RegEditTools.admx |
<!-- DisableRegedit-AdmxBacked-End -->

<!-- DisableRegedit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRegedit-Examples-End -->

<!-- DisableRegedit-End -->

<!-- DisallowApps-Begin -->
## DisallowApps

<!-- DisallowApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowApps-Applicability-End -->

<!-- DisallowApps-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ShellCommandPromptRegEditTools/DisallowApps
```
<!-- DisallowApps-OmaUri-End -->

<!-- DisallowApps-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents Windows from running the programs you specify in this policy setting.

- If you enable this policy setting, users can't run programs that you add to the list of disallowed applications.

- If you disable this policy setting or don't configure it, users can run any programs.

This policy setting only prevents users from running programs that are started by the File Explorer process. It doesn't prevent users from running programs, such as Task Manager, which are started by the system process or by other processes. Also, if users have access to the command prompt (Cmd.exe), this policy setting doesn't prevent them from starting programs in the command window even though they would be prevented from doing so using File Explorer.

> [!NOTE]
> Non-Microsoft applications with Windows 2000 or later certification are required to comply with this policy setting.

> [!NOTE]
> To create a list of allowed applications, click Show. In the Show Contents dialog box, in the Value column, type the application executable name (e.g., Winword.exe, Poledit.exe, Powerpnt.exe).
<!-- DisallowApps-Description-End -->

<!-- DisallowApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowApps-Editable-End -->

<!-- DisallowApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowApps-DFProperties-End -->

<!-- DisallowApps-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowApps |
| Friendly Name | Don't run specified Windows applications |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisallowRun |
| ADMX File Name | Shell-CommandPrompt-RegEditTools.admx |
<!-- DisallowApps-AdmxBacked-End -->

<!-- DisallowApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowApps-Examples-End -->

<!-- DisallowApps-End -->

<!-- RestrictApps-Begin -->
## RestrictApps

<!-- RestrictApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictApps-Applicability-End -->

<!-- RestrictApps-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ShellCommandPromptRegEditTools/RestrictApps
```
<!-- RestrictApps-OmaUri-End -->

<!-- RestrictApps-Description-Begin -->
<!-- Description-Source-ADMX -->
Limits the Windows programs that users have permission to run on the computer.

- If you enable this policy setting, users can only run programs that you add to the list of allowed applications.

- If you disable this policy setting or don't configure it, users can run all applications.

This policy setting only prevents users from running programs that are started by the File Explorer process. It doesn't prevent users from running programs such as Task Manager, which are started by the system process or by other processes. Also, if users have access to the command prompt (Cmd.exe), this policy setting doesn't prevent them from starting programs in the command window even though they would be prevented from doing so using File Explorer.

> [!NOTE]
> Non-Microsoft applications with Windows 2000 or later certification are required to comply with this policy setting.

> [!NOTE]
> To create a list of allowed applications, click Show. In the Show Contents dialog box, in the Value column, type the application executable name (e.g., Winword.exe, Poledit.exe, Powerpnt.exe).
<!-- RestrictApps-Description-End -->

<!-- RestrictApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictApps-Editable-End -->

<!-- RestrictApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictApps-DFProperties-End -->

<!-- RestrictApps-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictApps |
| Friendly Name | Run only specified Windows applications |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | RestrictRun |
| ADMX File Name | Shell-CommandPrompt-RegEditTools.admx |
<!-- RestrictApps-AdmxBacked-End -->

<!-- RestrictApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictApps-Examples-End -->

<!-- RestrictApps-End -->

<!-- ADMX_ShellCommandPromptRegEditTools-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ShellCommandPromptRegEditTools-CspMoreInfo-End -->

<!-- ADMX_ShellCommandPromptRegEditTools-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
