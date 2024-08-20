---
title: ADMX_PowerShellExecutionPolicy Policy CSP
description: Learn more about the ADMX_PowerShellExecutionPolicy Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_PowerShellExecutionPolicy-Begin -->
# Policy CSP - ADMX_PowerShellExecutionPolicy

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_PowerShellExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PowerShellExecutionPolicy-Editable-End -->

<!-- EnableModuleLogging-Begin -->
## EnableModuleLogging

<!-- EnableModuleLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableModuleLogging-Applicability-End -->

<!-- EnableModuleLogging-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableModuleLogging
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableModuleLogging
```
<!-- EnableModuleLogging-OmaUri-End -->

<!-- EnableModuleLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on logging for Windows PowerShell modules.

- If you enable this policy setting, pipeline execution events for members of the specified modules are recorded in the Windows PowerShell log in Event Viewer. Enabling this policy setting for a module is equivalent to setting the LogPipelineExecutionDetails property of the module to True.

- If you disable this policy setting, logging of execution events is disabled for all Windows PowerShell modules. Disabling this policy setting for a module is equivalent to setting the LogPipelineExecutionDetails property of the module to False.

- If this policy setting isn't configured, the LogPipelineExecutionDetails property of a module or snap-in determines whether the execution events of a module or snap-in are logged. By default, the LogPipelineExecutionDetails property of all modules and snap-ins is set to False.

To add modules and snap-ins to the policy setting list, click Show, and then type the module names in the list. The modules and snap-ins in the list must be installed on the computer.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
<!-- EnableModuleLogging-Description-End -->

<!-- EnableModuleLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableModuleLogging-Editable-End -->

<!-- EnableModuleLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableModuleLogging-DFProperties-End -->

<!-- EnableModuleLogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableModuleLogging |
| Friendly Name | Turn on Module Logging |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows PowerShell |
| Registry Key Name | Software\Policies\Microsoft\Windows\PowerShell\ModuleLogging |
| Registry Value Name | EnableModuleLogging |
| ADMX File Name | PowerShellExecutionPolicy.admx |
<!-- EnableModuleLogging-AdmxBacked-End -->

<!-- EnableModuleLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableModuleLogging-Examples-End -->

<!-- EnableModuleLogging-End -->

<!-- EnableScripts-Begin -->
## EnableScripts

<!-- EnableScripts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableScripts-Applicability-End -->

<!-- EnableScripts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableScripts
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableScripts
```
<!-- EnableScripts-OmaUri-End -->

<!-- EnableScripts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure the script execution policy, controlling which scripts are allowed to run.

- If you enable this policy setting, the scripts selected in the drop-down list are allowed to run.

The "Allow only signed scripts" policy setting allows scripts to execute only if they're signed by a trusted publisher.

The "Allow local scripts and remote signed scripts" policy setting allows any local scrips to run; scripts that originate from the Internet must be signed by a trusted publisher.

The "Allow all scripts" policy setting allows all scripts to run.

- If you disable this policy setting, no scripts are allowed to run.

> [!NOTE]
> This policy setting exists under both "Computer Configuration" and "User Configuration" in the Local Group Policy Editor. The "Computer Configuration" has precedence over "User Configuration".

- If you disable or don't configure this policy setting, it reverts to a per-machine preference setting; the default if that isn't configured is "No scripts allowed".
<!-- EnableScripts-Description-End -->

<!-- EnableScripts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableScripts-Editable-End -->

<!-- EnableScripts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableScripts-DFProperties-End -->

<!-- EnableScripts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableScripts |
| Friendly Name | Turn on Script Execution |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows PowerShell |
| Registry Key Name | Software\Policies\Microsoft\Windows\PowerShell |
| Registry Value Name | EnableScripts |
| ADMX File Name | PowerShellExecutionPolicy.admx |
<!-- EnableScripts-AdmxBacked-End -->

<!-- EnableScripts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableScripts-Examples-End -->

<!-- EnableScripts-End -->

<!-- EnableTranscripting-Begin -->
## EnableTranscripting

<!-- EnableTranscripting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableTranscripting-Applicability-End -->

<!-- EnableTranscripting-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableTranscripting
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableTranscripting
```
<!-- EnableTranscripting-OmaUri-End -->

<!-- EnableTranscripting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you capture the input and output of Windows PowerShell commands into text-based transcripts.

- If you enable this policy setting, Windows PowerShell will enable transcripting for Windows PowerShell, the Windows PowerShell ISE, and any other applications that leverage the Windows PowerShell engine. By default, Windows PowerShell will record transcript output to each users' My Documents directory, with a file name that includes 'PowerShell_transcript', along with the computer name and time started. Enabling this policy is equivalent to calling the Start-Transcript cmdlet on each Windows PowerShell session.

- If you disable this policy setting, transcripting of PowerShell-based applications is disabled by default, although transcripting can still be enabled through the Start-Transcript cmdlet.

If you use the OutputDirectory setting to enable transcript logging to a shared location, be sure to limit access to that directory to prevent users from viewing the transcripts of other users or computers.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
<!-- EnableTranscripting-Description-End -->

<!-- EnableTranscripting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableTranscripting-Editable-End -->

<!-- EnableTranscripting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableTranscripting-DFProperties-End -->

<!-- EnableTranscripting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableTranscripting |
| Friendly Name | Turn on PowerShell Transcription |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows PowerShell |
| Registry Key Name | Software\Policies\Microsoft\Windows\PowerShell\Transcription |
| Registry Value Name | EnableTranscripting |
| ADMX File Name | PowerShellExecutionPolicy.admx |
<!-- EnableTranscripting-AdmxBacked-End -->

<!-- EnableTranscripting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableTranscripting-Examples-End -->

<!-- EnableTranscripting-End -->

<!-- EnableUpdateHelpDefaultSourcePath-Begin -->
## EnableUpdateHelpDefaultSourcePath

<!-- EnableUpdateHelpDefaultSourcePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableUpdateHelpDefaultSourcePath-Applicability-End -->

<!-- EnableUpdateHelpDefaultSourcePath-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableUpdateHelpDefaultSourcePath
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PowerShellExecutionPolicy/EnableUpdateHelpDefaultSourcePath
```
<!-- EnableUpdateHelpDefaultSourcePath-OmaUri-End -->

<!-- EnableUpdateHelpDefaultSourcePath-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set the default value of the SourcePath parameter on the Update-Help cmdlet.

- If you enable this policy setting, the Update-Help cmdlet will use the specified value as the default value for the SourcePath parameter. This default value can be overridden by specifying a different value with the SourcePath parameter on the Update-Help cmdlet.

- If this policy setting is disabled or not configured, this policy setting doesn't set a default value for the SourcePath parameter of the Update-Help cmdlet.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
<!-- EnableUpdateHelpDefaultSourcePath-Description-End -->

<!-- EnableUpdateHelpDefaultSourcePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableUpdateHelpDefaultSourcePath-Editable-End -->

<!-- EnableUpdateHelpDefaultSourcePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableUpdateHelpDefaultSourcePath-DFProperties-End -->

<!-- EnableUpdateHelpDefaultSourcePath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableUpdateHelpDefaultSourcePath |
| Friendly Name | Set the default source path for Update-Help |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows PowerShell |
| Registry Key Name | Software\Policies\Microsoft\Windows\PowerShell\UpdatableHelp |
| Registry Value Name | EnableUpdateHelpDefaultSourcePath |
| ADMX File Name | PowerShellExecutionPolicy.admx |
<!-- EnableUpdateHelpDefaultSourcePath-AdmxBacked-End -->

<!-- EnableUpdateHelpDefaultSourcePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableUpdateHelpDefaultSourcePath-Examples-End -->

<!-- EnableUpdateHelpDefaultSourcePath-End -->

<!-- ADMX_PowerShellExecutionPolicy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PowerShellExecutionPolicy-CspMoreInfo-End -->

<!-- ADMX_PowerShellExecutionPolicy-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
