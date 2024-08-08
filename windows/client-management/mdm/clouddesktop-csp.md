---
title: CloudDesktop CSP
description: Learn more about the CloudDesktop CSP.
ms.date: 08/06/2024
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
  - [BootToCloudPCEnhanced](#deviceboottocloudpcenhanced)
  - [EnableBootToCloudSharedPCMode](#deviceenableboottocloudsharedpcmode)
- ./User/Vendor/MSFT/CloudDesktop
  - [EnablePhysicalDeviceAccessOnCtrlAltDel](#userenablephysicaldeviceaccessonctrlaltdel)
  - [EnablePhysicalDeviceAccessOnErrorScreens](#userenablephysicaldeviceaccessonerrorscreens)
<!-- CloudDesktop-Tree-End -->

<!-- Device-BootToCloudPCEnhanced-Begin -->
## Device/BootToCloudPCEnhanced

<!-- Device-BootToCloudPCEnhanced-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 with [KB5035942](https://support.microsoft.com/help/5035942) [10.0.22621.3374] and later |
<!-- Device-BootToCloudPCEnhanced-Applicability-End -->

<!-- Device-BootToCloudPCEnhanced-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/CloudDesktop/BootToCloudPCEnhanced
```
<!-- Device-BootToCloudPCEnhanced-OmaUri-End -->

<!-- Device-BootToCloudPCEnhanced-Description-Begin -->
<!-- Description-Source-DDF -->
This node allows to configure different kinds of Boot to Cloud mode. Boot to cloud mode enables users to seamlessly sign-in to a Cloud PC. For using this feature, Cloud Provider application must be installed on the PC and the user must have a Cloud PC provisioned. This node supports the below options: 0. Not Configured. 1. Enable Boot to Cloud Shared PC Mode: Boot to Cloud Shared PC mode allows multiple users to sign-in on the device and use for shared purpose. 2. Enable Boot to Cloud Dedicated Mode (Cloud only): Dedicated mode allows user to sign-in on the device using various authentication mechanism configured by their organization (For ex. PIN, Biometrics etc). This mode preserves user personalization, including their profile picture and username in local machine, and facilitates fast account switching.
<!-- Device-BootToCloudPCEnhanced-Description-End -->

<!-- Device-BootToCloudPCEnhanced-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> If BootToCloudPCEnhanced and EnableBootToCloudSharedPCMode are both configured, BootToCloudPCEnhanced is given priority and overrides EnableBootToCloudSharedPCMode.
<!-- Device-BootToCloudPCEnhanced-Editable-End -->

<!-- Device-BootToCloudPCEnhanced-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-BootToCloudPCEnhanced-DFProperties-End -->

<!-- Device-BootToCloudPCEnhanced-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not Configured. |
| 1 | Enable Boot to Cloud Shared PC Mode. |
| 2 | Enable Boot to Cloud Dedicated Mode (Cloud only). |
<!-- Device-BootToCloudPCEnhanced-AllowedValues-End -->

<!-- Device-BootToCloudPCEnhanced-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-BootToCloudPCEnhanced-Examples-End -->

<!-- Device-BootToCloudPCEnhanced-End -->

<!-- Device-EnableBootToCloudSharedPCMode-Begin -->
## Device/EnableBootToCloudSharedPCMode

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-EnableBootToCloudSharedPCMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
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
> [!IMPORTANT]
> If BootToCloudPCEnhanced and EnableBootToCloudSharedPCMode are both configured, BootToCloudPCEnhanced is given priority and overrides EnableBootToCloudSharedPCMode.
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

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Begin -->
## User/EnablePhysicalDeviceAccessOnCtrlAltDel

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Applicability-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/CloudDesktop/EnablePhysicalDeviceAccessOnCtrlAltDel
```
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-OmaUri-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Description-Begin -->
<!-- Description-Source-DDF -->
Configuring this node gives access to the physical devices used to boot to Cloud PCs from the Ctrl+Alt+Del page for specified users. This node supports these options: 0. Not enabled 1. Enabled.
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Description-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Editable-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-DFProperties-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Access to physical device on CtrlAltDel page disabled. |
| true | Access to physical device on CtrlAltDel page enabled. |
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-AllowedValues-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-Examples-End -->

<!-- User-EnablePhysicalDeviceAccessOnCtrlAltDel-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Begin -->
## User/EnablePhysicalDeviceAccessOnErrorScreens

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Applicability-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-OmaUri-Begin -->
```User
./User/Vendor/MSFT/CloudDesktop/EnablePhysicalDeviceAccessOnErrorScreens
```
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-OmaUri-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Description-Begin -->
<!-- Description-Source-DDF -->
Configuring this node gives access to the physical devices used to boot to Cloud PCs from the error screens for specified users. This node supports these options: 0. Not enabled 1. Enabled.
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Description-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Editable-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | false |
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-DFProperties-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | Access to physical device on error screens disabled. |
| true | Access to physical device on error screens enabled. |
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-AllowedValues-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-Examples-End -->

<!-- User-EnablePhysicalDeviceAccessOnErrorScreens-End -->

<!-- CloudDesktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## BootToCloudPCEnhanced technical reference

BootToCloudPCEnhanced is the setting used to configure **Boot to Cloud** feature either for shared mode or dedicated mode. When you enable this setting, multiple policies are applied to achieve the intended behavior. If you wish to customize the **Boot to Cloud** experience, you can utilize the [BootToCloudMode](policy-csp-clouddesktop.md#boottocloudmode) policy, which provides the flexibility to tailor the experience according to your requirements.

> [!NOTE]
> It is recommended not to set any of the policies enforced by this setting to different values, as these policies help provide a smooth UX experience for the **Boot to Cloud** feature for shared and dedicated mode.

### Boot to Cloud Shared PC Mode

When the Shared PC mode is enabled by setting BootToCloudPCEnhanced value to 1:

- Following MDM policies are applied for the Device scope (all users):

    | Setting                                                                                                                    | Value   | Value Description                                           |
    |----------------------------------------------------------------------------------------------------------------------------|---------|-------------------------------------------------------------|
    | [CloudDesktop/BootToCloudMode](policy-csp-clouddesktop.md#boottocloudmode)                                                 | 1       | Enable Boot to Cloud Desktop                                |
    | [WindowsLogon/OverrideShellProgram](policy-csp-windowslogon.md#overrideshellprogram)                                       | 1       | Apply Lightweight Shell                                     |
    | [ADMX_CredentialProviders/DefaultCredentialProvider](policy-csp-admx-credentialproviders.md#defaultcredentialprovider)     | Enabled | Configures default credential provider to password provider |
    | [ADMX_Logon/DisableExplorerRunLegacy_2](policy-csp-admx-logon.md#disableexplorerrunlegacy_2)                               | Enabled | Don't process the computer legacy run list                  |
    | [TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode](policy-csp-textinput.md#enabletouchkeyboardautoinvokeindesktopmode) | 1       | When no keyboard is attached                                |

- Following local group policies are configured for all users:

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
    | Windows Components/Windows Copilot/Turn off Windows Copilot                                                            | Enabled                               |

- Following registry changes are performed:

    | Registry setting                                                                             | Status |
    |----------------------------------------------------------------------------------------------|--------|
    | Software\Policies\Microsoft\PassportForWork\Remote\Enabled (Phone sign-in/Use phone sign-in) | 0      |
    | Software\Policies\Microsoft\PassportForWork\Enabled (Use Microsoft Passport for Work)        | 0      |

### Boot to Cloud Dedicated Mode

When the Dedicated mode is enabled by setting BootToCloudPCEnhanced value to 2:

- Following MDM policies are applied for the Device scope (all users):

    | Setting                                                                                                                    | Value   | Value Description                                           |
    |----------------------------------------------------------------------------------------------------------------------------|---------|-------------------------------------------------------------|
    | [CloudDesktop/BootToCloudMode](policy-csp-clouddesktop.md#boottocloudmode)                                                 | 1       | Enable Boot to Cloud Desktop                                |
    | [WindowsLogon/OverrideShellProgram](policy-csp-windowslogon.md#overrideshellprogram)                                       | 1       | Apply Lightweight Shell                                     |
    | [ADMX_Logon/DisableExplorerRunLegacy_2](policy-csp-admx-logon.md#disableexplorerrunlegacy_2)                               | Enabled | Don't process the computer legacy run list                  |
    | [TextInput/EnableTouchKeyboardAutoInvokeInDesktopMode](policy-csp-textinput.md#enabletouchkeyboardautoinvokeindesktopmode) | 1       | When no keyboard is attached                                |

- Following local group policies are configured for all users:

    | Policy setting                                                                                                         | Status                                |
    |------------------------------------------------------------------------------------------------------------------------|---------------------------------------|
    | System/Ctrl+Alt+Del Options/Remove Change Password                                                                     | Enabled                               |
    | Start Menu and Taskbar/Notifications/Turn off toast notifications                                                      | Enabled                               |
    | Start Menu and Taskbar/Notifications/Remove Notifications and Action Center                                            | Enabled                               |
    | System/Logon/Do not process the legacy run list                                                                        | Enabled                               |
    | Windows Components/Windows Copilot/Turn off Windows Copilot                                                            | Enabled                               |
<!-- CloudDesktop-CspMoreInfo-End -->

<!-- CloudDesktop-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
