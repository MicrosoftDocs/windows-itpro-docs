---
title: ADMX_Help Policy CSP
description: Learn more about the ADMX_Help Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Help-Begin -->
# Policy CSP - ADMX_Help

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Help-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Help-Editable-End -->

<!-- DisableHHDEP-Begin -->
## DisableHHDEP

<!-- DisableHHDEP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableHHDEP-Applicability-End -->

<!-- DisableHHDEP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Help/DisableHHDEP
```
<!-- DisableHHDEP-OmaUri-End -->

<!-- DisableHHDEP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to exclude HTML Help Executable from being monitored by software-enforced Data Execution Prevention.

Data Execution Prevention (DEP) is designed to block malicious code that takes advantage of exception-handling mechanisms in Windows by monitoring your programs to make sure that they use system memory safely.

- If you enable this policy setting, DEP for HTML Help Executable is turned off. This will allow certain legacy ActiveX controls to function without DEP shutting down HTML Help Executable.

- If you disable or don't configure this policy setting, DEP is turned on for HTML Help Executable. This provides an additional security benefit, but HTLM Help stops if DEP detects system memory abnormalities.
<!-- DisableHHDEP-Description-End -->

<!-- DisableHHDEP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHHDEP-Editable-End -->

<!-- DisableHHDEP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableHHDEP-DFProperties-End -->

<!-- DisableHHDEP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableHHDEP |
| Friendly Name | Turn off Data Execution Prevention for HTML Help Executible |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DisableHHDEP |
| ADMX File Name | Help.admx |
<!-- DisableHHDEP-AdmxBacked-End -->

<!-- DisableHHDEP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHHDEP-Examples-End -->

<!-- DisableHHDEP-End -->

<!-- HelpQualifiedRootDir_Comp-Begin -->
## HelpQualifiedRootDir_Comp

<!-- HelpQualifiedRootDir_Comp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HelpQualifiedRootDir_Comp-Applicability-End -->

<!-- HelpQualifiedRootDir_Comp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Help/HelpQualifiedRootDir_Comp
```
<!-- HelpQualifiedRootDir_Comp-OmaUri-End -->

<!-- HelpQualifiedRootDir_Comp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to restrict certain HTML Help commands to function only in HTML Help (.chm) files within specified folders and their subfolders. Alternatively, you can disable these commands on the entire system. It's strongly recommended that only folders requiring administrative privileges be added to this policy setting.

- If you enable this policy setting, the commands function only for .chm files in the specified folders and their subfolders.

To restrict the commands to one or more folders, enable the policy setting and enter the desired folders in the text box on the Settings tab of the Policy Properties dialog box. Use a semicolon to separate folders. For example, to restrict the commands to only .chm files in the %windir%\help folder and D:\somefolder, add the following string to the edit box: "%windir%\help;D:\somefolder".

> [!NOTE]
> An environment variable may be used, (for example, %windir%), as long as it's defined on the system. For example, %programfiles% isn't defined on some early versions of Windows.

The "Shortcut" command is used to add a link to a Help topic, and runs executables that are external to the Help file. The "WinHelp" command is used to add a link to a Help topic, and runs a WinHLP32.exe Help (.hlp) file.

To disallow the "Shortcut" and "WinHelp" commands on the entire local system, enable the policy setting and leave the text box on the Settings tab of the Policy Properties dialog box blank.

- If you disable or don't configure this policy setting, these commands are fully functional for all Help files.

> [!NOTE]
> Only folders on the local computer can be specified in this policy setting. You can't use this policy setting to enable the "Shortcut" and "WinHelp" commands for .chm files that are stored on mapped drives or accessed using UNC paths.

For additional options, see the "Restrict these programs from being launched from Help" policy.
<!-- HelpQualifiedRootDir_Comp-Description-End -->

<!-- HelpQualifiedRootDir_Comp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HelpQualifiedRootDir_Comp-Editable-End -->

<!-- HelpQualifiedRootDir_Comp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HelpQualifiedRootDir_Comp-DFProperties-End -->

<!-- HelpQualifiedRootDir_Comp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HelpQualifiedRootDir_Comp |
| Friendly Name | Restrict potentially unsafe HTML Help functions to specified folders |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | Help.admx |
<!-- HelpQualifiedRootDir_Comp-AdmxBacked-End -->

<!-- HelpQualifiedRootDir_Comp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HelpQualifiedRootDir_Comp-Examples-End -->

<!-- HelpQualifiedRootDir_Comp-End -->

<!-- RestrictRunFromHelp-Begin -->
## RestrictRunFromHelp

<!-- RestrictRunFromHelp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictRunFromHelp-Applicability-End -->

<!-- RestrictRunFromHelp-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Help/RestrictRunFromHelp
```
<!-- RestrictRunFromHelp-OmaUri-End -->

<!-- RestrictRunFromHelp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to restrict programs from being run from online Help.

- If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names names of the programs you want to restrict, separated by commas.

- If you disable or don't configure this policy setting, users can run all applications from online Help.

> [!NOTE]
> You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.

> [!NOTE]
> This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations can't launched from Help.
<!-- RestrictRunFromHelp-Description-End -->

<!-- RestrictRunFromHelp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictRunFromHelp-Editable-End -->

<!-- RestrictRunFromHelp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictRunFromHelp-DFProperties-End -->

<!-- RestrictRunFromHelp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictRunFromHelp |
| Friendly Name | Restrict these programs from being launched from Help |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | Help.admx |
<!-- RestrictRunFromHelp-AdmxBacked-End -->

<!-- RestrictRunFromHelp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictRunFromHelp-Examples-End -->

<!-- RestrictRunFromHelp-End -->

<!-- RestrictRunFromHelp_Comp-Begin -->
## RestrictRunFromHelp_Comp

<!-- RestrictRunFromHelp_Comp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictRunFromHelp_Comp-Applicability-End -->

<!-- RestrictRunFromHelp_Comp-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Help/RestrictRunFromHelp_Comp
```
<!-- RestrictRunFromHelp_Comp-OmaUri-End -->

<!-- RestrictRunFromHelp_Comp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to restrict programs from being run from online Help.

- If you enable this policy setting, you can prevent specified programs from being run from Help. When you enable this policy setting, enter the file names names of the programs you want to restrict, separated by commas.

- If you disable or don't configure this policy setting, users can run all applications from online Help.

> [!NOTE]
> You can also restrict users from running applications by using the Software Restriction Policy settings available in Computer Configuration\Security Settings.

> [!NOTE]
> This policy setting is available under Computer Configuration and User Configuration. If both are settings are used, any programs listed in either of these locations can't launched from Help.
<!-- RestrictRunFromHelp_Comp-Description-End -->

<!-- RestrictRunFromHelp_Comp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictRunFromHelp_Comp-Editable-End -->

<!-- RestrictRunFromHelp_Comp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictRunFromHelp_Comp-DFProperties-End -->

<!-- RestrictRunFromHelp_Comp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictRunFromHelp_Comp |
| Friendly Name | Restrict these programs from being launched from Help |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | Help.admx |
<!-- RestrictRunFromHelp_Comp-AdmxBacked-End -->

<!-- RestrictRunFromHelp_Comp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictRunFromHelp_Comp-Examples-End -->

<!-- RestrictRunFromHelp_Comp-End -->

<!-- ADMX_Help-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Help-CspMoreInfo-End -->

<!-- ADMX_Help-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
