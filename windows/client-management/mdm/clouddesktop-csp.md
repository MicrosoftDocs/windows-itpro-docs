---
title: CloudDesktop CSP
description: Learn more about the CloudDesktop CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 10/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- CloudDesktop-Begin -->
# CloudDesktop CSP

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- CloudDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CloudDesktop-Editable-End -->

<!-- CloudDesktop-Tree-Begin -->
The following list shows the CloudDesktop configuration service provider nodes:

- ./Device/Vendor/MSFT/CloudDesktop
  - [EnableBootToCloudSharedPCMode](#enableboottocloudsharedpcmode)
<!-- CloudDesktop-Tree-End -->

<!-- Device-EnableBootToCloudSharedPCMode-Begin -->
## EnableBootToCloudSharedPCMode

<!-- Device-EnableBootToCloudSharedPCMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview [10.0.22631.2050] |
<!-- Device-EnableBootToCloudSharedPCMode-Applicability-End -->

<!-- Device-EnableBootToCloudSharedPCMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CloudDesktop/EnableBootToCloudSharedPCMode
```
<!-- Device-EnableBootToCloudSharedPCMode-OmaUri-End -->

<!-- Device-EnableBootToCloudSharedPCMode-Description-Begin -->
<!-- Description-Source-DDF -->
Setting this node to "true" configures boot to cloud for Shared PC mode. Boot to cloud mode enables users to seamlessly sign-in to a Cloud PC. Shared PC mode allows multiple users to sign-in on the device and use for shared purpose. For enabling Boot to Cloud Shared PC feature, Cloud Provider application must be installed on the PC and the user must have a Cloud PC provisioned.
<!-- Device-EnableBootToCloudSharedPCMode-Description-End -->

<!-- Device-EnableBootToCloudSharedPCMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-EnableBootToCloudSharedPCMode-Editable-End -->

<!-- Device-EnableBootToCloudSharedPCMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- Device-EnableBootToCloudSharedPCMode-DFProperties-End -->

<!-- Device-EnableBootToCloudSharedPCMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Not configured. |
| true | Boot to cloud shared pc mode enabled. |
<!-- Device-EnableBootToCloudSharedPCMode-AllowedValues-End -->

<!-- Device-EnableBootToCloudSharedPCMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-EnableBootToCloudSharedPCMode-Examples-End -->

<!-- Device-EnableBootToCloudSharedPCMode-End -->

<!-- CloudDesktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## EnableBootToCloudSharedPCMode technical reference

EnableBootToCloudSharedPCMode setting is used to configure **Boot to Cloud** feature for shared user mode. When you enable this setting, multiple policies are applied to achieve the intended behavior.

> [!NOTE]
> It is recommended not to set any of the policies enforced by this setting to different values, as these policies help provide a smooth UX experience for the **Boot to Cloud** feature for shared user mode.

### MDM Policies

When this mode is enabled, these MDM policies are applied for the Device scope (all users):

| Setting                                                                                                                    | Value   | Value Description                                           |
|----------------------------------------------------------------------------------------------------------------------------|---------|-------------------------------------------------------------|
| [CloudDesktop/BootToCloudMode](policy-csp-clouddesktop.md#boottocloudmode)                                                 | 1       | Enable Boot to Cloud Desktop                                |
| [WindowsLogon/OverrideShellProgram](policy-csp-windowslogon.md#overrideshellprogram)                                       | 1       | Apply Lightweight Shell                                     |
| [ADMX_CredentialProviders/DefaultCredentialProvider](policy-csp-admx-credentialproviders.md#defaultcredentialprovider)     | Enabled | Configures default credential provider to password provider |
| [ADMX_Logon/DisableExplorerRunLegacy_2](policy-csp-admx-logon.md#disableexplorerrunlegacy_2)                               | Enabled | Don't process the computer legacy run list                  |
| [TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode](policy-csp-textinput.md#enabletouchkeyboardautoinvokeindesktopmode) | 1       | When no keyboard is attached                                |

### Group Policies

When this mode is enabled, these local group policies are configured for all users:

| Policy setting                                                                                                         | Status                                |
|------------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| Security Settings/Local Policies/Security Options/User Account Control: Behavior of elevation prompt for standard user | Automatically deny elevation requests |
| Security Settings/Local Policies/Security Options/Interactive logon: Don't display last signed-in                      | Enabled                               |
| Control Panel/Personalization/Prevent enabling lock screen slide show                                                  | Enabled                               |
| System/Logon/Block user from showing account details on sign-in                                                        | Enabled                               |
| System/Logon/Enumerate local users on domain-joined computers                                                          | Disabled                              |
| System/Logon/Hide entry points for Fast User Switching                                                                 | Enabled                               |
| System/Logon/Show first sign-in animation                                                                              | Disabled                              |
| System/Logon/Turn off app notifications on the lock screen                                                             | Enabled                               |
| System/Logon/Turn off picture password sign-in                                                                         | Enabled                               |
| System/Logon/Turn on convenience PIN sign-in                                                                           | Disabled                              |
| Windows Components/App Package Deployment/Allow a Windows app to share application data between users                  | Enabled                               |
| Windows Components/Biometrics/Allow the use of biometrics                                                              | Disabled                              |
| Windows Components/Biometrics/Allow users to log on using biometrics                                                   | Disabled                              |
| Windows Components/Biometrics/Allow domain users to log on using biometrics                                            | Disabled                              |
| Windows Components/File Explorer/Show lock in the user tile menu                                                       | Disabled                              |
| Windows Components/File History/Turn off File History                                                                  | Enabled                               |
| Windows Components/OneDrive/Prevent the usage of OneDrive for file storage                                             | Enabled                               |
| Windows Components/Windows Hello for Business/Use biometrics                                                           | Disabled                              |
| Windows Components/Windows Hello for Business/Use Windows Hello for Business                                           | Disabled                              |
| Windows Components/Windows Logon Options/Sign-in and lock last interactive user automatically after a restart          | Disabled                              |
| Windows Components/Microsoft Passport for Work                                                                         | Disabled                              |
| System/Ctrl+Alt+Del Options/Remove Task Manager                                                                        | Enabled                               |
| System/Ctrl+Alt+Del Options/Remove Change Password                                                                     | Enabled                               |
| Start Menu and Taskbar/Notifications/Turn off toast notifications                                                      | Enabled                               |
| Start Menu and Taskbar/Notifications/Remove Notifications and Action Center                                            | Enabled                               |
| System/Logon/Do not process the legacy run list                                                                        | Enabled                               |

### Registry

When this mode is enabled, these registry changes are performed:

| Registry setting                                                                             | Status |
|----------------------------------------------------------------------------------------------|--------|
| Software\Policies\Microsoft\PassportForWork\Remote\Enabled (Phone sign-in/Use phone sign-in) | 0      |
| Software\Policies\Microsoft\PassportForWork\Enabled (Use Microsoft Passport for Work)        | 0      |
<!-- CloudDesktop-CspMoreInfo-End -->

<!-- CloudDesktop-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
