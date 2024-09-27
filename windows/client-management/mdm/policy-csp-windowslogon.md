---
title: WindowsLogon Policy CSP
description: Learn more about the WindowsLogon Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsLogon-Begin -->
# Policy CSP - WindowsLogon

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- WindowsLogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsLogon-Editable-End -->

<!-- AllowAutomaticRestartSignOn-Begin -->
## AllowAutomaticRestartSignOn

<!-- AllowAutomaticRestartSignOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowAutomaticRestartSignOn-Applicability-End -->

<!-- AllowAutomaticRestartSignOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/AllowAutomaticRestartSignOn
```
<!-- AllowAutomaticRestartSignOn-OmaUri-End -->

<!-- AllowAutomaticRestartSignOn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether a device will automatically sign in and lock the last interactive user after the system restarts or after a shutdown and cold boot.

This only occurs if the last interactive user didn't sign out before the restart or shutdown. 

If the device is joined to Active Directory or Microsoft Entra ID, this policy only applies to Windows Update restarts. Otherwise, this will apply to both Windows Update restarts and user-initiated restarts and shutdowns.

- If you don't configure this policy setting, it's enabled by default. When the policy is enabled, the user is automatically signed in and the session is automatically locked with all lock screen apps configured for that user after the device boots. 

After enabling this policy, you can configure its settings through the ConfigAutomaticRestartSignOn policy, which configures the mode of automatically signing in and locking the last interactive user after a restart or cold boot .

- If you disable this policy setting, the device doesn't configure automatic sign in. The user's lock screen apps aren't restarted after the system restarts.
<!-- AllowAutomaticRestartSignOn-Description-End -->

<!-- AllowAutomaticRestartSignOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAutomaticRestartSignOn-Editable-End -->

<!-- AllowAutomaticRestartSignOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowAutomaticRestartSignOn-DFProperties-End -->

<!-- AllowAutomaticRestartSignOn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AutomaticRestartSignOn |
| Friendly Name | Sign-in and lock last interactive user automatically after a restart |
| Location | Computer Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableAutomaticRestartSignOn |
| ADMX File Name | WinLogon.admx |
<!-- AllowAutomaticRestartSignOn-AdmxBacked-End -->

<!-- AllowAutomaticRestartSignOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutomaticRestartSignOn-Examples-End -->

<!-- AllowAutomaticRestartSignOn-End -->

<!-- ConfigAutomaticRestartSignOn-Begin -->
## ConfigAutomaticRestartSignOn

<!-- ConfigAutomaticRestartSignOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigAutomaticRestartSignOn-Applicability-End -->

<!-- ConfigAutomaticRestartSignOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/ConfigAutomaticRestartSignOn
```
<!-- ConfigAutomaticRestartSignOn-OmaUri-End -->

<!-- ConfigAutomaticRestartSignOn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the configuration under which an automatic restart and sign-on and lock occurs after a restart or cold boot. If you chose "Disabled" in the "Sign-in and lock last interactive user automatically after a restart" policy, then automatic sign-on won't occur and this policy doesn't need to be configured.

- If you enable this policy setting, you can choose one of the following two options:

1. "Enabled if BitLocker is on and not suspended" specifies that automatic sign-on and lock will only occur if BitLocker is active and not suspended during the reboot or shutdown. Personal data can be accessed on the device's hard drive at this time if BitLocker isn't on or suspended during an update. BitLocker suspension temporarily removes protection for system components and data but may be needed in certain circumstances to successfully update boot-critical components.

BitLocker is suspended during updates if:

- The device doesn't have TPM 2.0 and PCR7, or
- The device doesn't use a TPM-only protector.

2. "Always Enabled" specifies that automatic sign-on will happen even if BitLocker is off or suspended during reboot or shutdown. When BitLocker isn't enabled, personal data is accessible on the hard drive. Automatic restart and sign-on should only be run under this condition if you are confident that the configured device is in a secure physical location.

- If you disable or don't configure this setting, automatic sign-on will default to the "Enabled if BitLocker is on and not suspended" behavior.
<!-- ConfigAutomaticRestartSignOn-Description-End -->

<!-- ConfigAutomaticRestartSignOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigAutomaticRestartSignOn-Editable-End -->

<!-- ConfigAutomaticRestartSignOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigAutomaticRestartSignOn-DFProperties-End -->

<!-- ConfigAutomaticRestartSignOn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigAutomaticRestartSignOn |
| Friendly Name | Configure the mode of automatically signing in and locking last interactive user after a restart or cold boot |
| Location | Computer Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | WinLogon.admx |
<!-- ConfigAutomaticRestartSignOn-AdmxBacked-End -->

<!-- ConfigAutomaticRestartSignOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigAutomaticRestartSignOn-Examples-End -->

<!-- ConfigAutomaticRestartSignOn-End -->

<!-- DisableLockScreenAppNotifications-Begin -->
## DisableLockScreenAppNotifications

<!-- DisableLockScreenAppNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableLockScreenAppNotifications-Applicability-End -->

<!-- DisableLockScreenAppNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/DisableLockScreenAppNotifications
```
<!-- DisableLockScreenAppNotifications-OmaUri-End -->

<!-- DisableLockScreenAppNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent app notifications from appearing on the lock screen.

- If you enable this policy setting, no app notifications are displayed on the lock screen.

- If you disable or don't configure this policy setting, users can choose which apps display notifications on the lock screen.
<!-- DisableLockScreenAppNotifications-Description-End -->

<!-- DisableLockScreenAppNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLockScreenAppNotifications-Editable-End -->

<!-- DisableLockScreenAppNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLockScreenAppNotifications-DFProperties-End -->

<!-- DisableLockScreenAppNotifications-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLockScreenAppNotifications |
| Friendly Name | Turn off app notifications on the lock screen |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DisableLockScreenAppNotifications |
| ADMX File Name | Logon.admx |
<!-- DisableLockScreenAppNotifications-AdmxBacked-End -->

<!-- DisableLockScreenAppNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLockScreenAppNotifications-Examples-End -->

<!-- DisableLockScreenAppNotifications-End -->

<!-- DontDisplayNetworkSelectionUI-Begin -->
## DontDisplayNetworkSelectionUI

<!-- DontDisplayNetworkSelectionUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DontDisplayNetworkSelectionUI-Applicability-End -->

<!-- DontDisplayNetworkSelectionUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/DontDisplayNetworkSelectionUI
```
<!-- DontDisplayNetworkSelectionUI-OmaUri-End -->

<!-- DontDisplayNetworkSelectionUI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether anyone can interact with available networks UI on the logon screen.

- If you enable this policy setting, the PC's network connectivity state can't be changed without signing into Windows.

- If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.
<!-- DontDisplayNetworkSelectionUI-Description-End -->

<!-- DontDisplayNetworkSelectionUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DontDisplayNetworkSelectionUI-Editable-End -->

<!-- DontDisplayNetworkSelectionUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DontDisplayNetworkSelectionUI-DFProperties-End -->

<!-- DontDisplayNetworkSelectionUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DontDisplayNetworkSelectionUI |
| Friendly Name | Do not display network selection UI |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DontDisplayNetworkSelectionUI |
| ADMX File Name | Logon.admx |
<!-- DontDisplayNetworkSelectionUI-AdmxBacked-End -->

<!-- DontDisplayNetworkSelectionUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

Here's an example to enable this policy:

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Atomic>
      <CmdID>300</CmdID>
      <Replace>
        <CmdID>301</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/Policy/Config/WindowsLogon/DontDisplayNetworkSelectionUI</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta>
          <Data><![CDATA[<enabled/>]]></Data>
        </Item>
      </Replace>
    </Atomic>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- DontDisplayNetworkSelectionUI-Examples-End -->

<!-- DontDisplayNetworkSelectionUI-End -->

<!-- EnableFirstLogonAnimation-Begin -->
## EnableFirstLogonAnimation

<!-- EnableFirstLogonAnimation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- EnableFirstLogonAnimation-Applicability-End -->

<!-- EnableFirstLogonAnimation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/EnableFirstLogonAnimation
```
<!-- EnableFirstLogonAnimation-OmaUri-End -->

<!-- EnableFirstLogonAnimation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether users see the first sign-in animation when signing in to the computer for the first time. This applies to both the first user of the computer who completes the initial setup and users who are added to the computer later. It also controls if Microsoft account users will be offered the opt-in prompt for services during their first sign-in.

- If you enable this policy setting, Microsoft account users will see the opt-in prompt for services, and users with other accounts will see the sign-in animation.

- If you disable this policy setting, users won't see the animation and Microsoft account users won't see the opt-in prompt for services.

- If you don't configure this policy setting, the user who completes the initial Windows setup will see the animation during their first sign-in. If the first user had already completed the initial setup and this policy setting isn't configured, users new to this computer won't see the animation.

> [!NOTE]
> The first sign-in animation won't be shown on Server, so this policy will have no effect.
<!-- EnableFirstLogonAnimation-Description-End -->

<!-- EnableFirstLogonAnimation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableFirstLogonAnimation-Editable-End -->

<!-- EnableFirstLogonAnimation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- EnableFirstLogonAnimation-DFProperties-End -->

<!-- EnableFirstLogonAnimation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- EnableFirstLogonAnimation-AllowedValues-End -->

<!-- EnableFirstLogonAnimation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableFirstLogonAnimation |
| Friendly Name | Show first sign-in animation  |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | EnableFirstLogonAnimation |
| ADMX File Name | Logon.admx |
<!-- EnableFirstLogonAnimation-GpMapping-End -->

<!-- EnableFirstLogonAnimation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableFirstLogonAnimation-Examples-End -->

<!-- EnableFirstLogonAnimation-End -->

<!-- EnableMPRNotifications-Begin -->
## EnableMPRNotifications

<!-- EnableMPRNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableMPRNotifications-Applicability-End -->

<!-- EnableMPRNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/EnableMPRNotifications
```
<!-- EnableMPRNotifications-OmaUri-End -->

<!-- EnableMPRNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the user's password is included in the content of MPR notifications sent by winlogon in the system.

- If you disable this setting or don't configure it, winlogon sends MPR notifications with empty password fields of the user's authentication info.

- If you enable this setting, winlogon sends MPR notifications containing the user's password in the authentication info.
<!-- EnableMPRNotifications-Description-End -->

<!-- EnableMPRNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Starting in Windows Insiders build 25216, the behavior of EnableMPRNotifications policy was changed, and the Group Policy was updated with the following text:
>
> - **Friendly name**: Configure the transmission of the user's password in the content of MPR notifications sent by winlogon
> - **Description**: This policy controls whether the user's password is included in the content of MPR notifications sent by winlogon in the system.
>    - If you disable this setting or do not configure it, winlogon sends MPR notifications with empty password fields of the user's authentication info.
>    - If you enable this setting, winlogon sends MPR notifications containing the user's password in the authentication info.
<!-- EnableMPRNotifications-Editable-End -->

<!-- EnableMPRNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableMPRNotifications-DFProperties-End -->

<!-- EnableMPRNotifications-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableMPRNotifications |
| Friendly Name | Configure the transmission of the user's password in the content of MPR notifications sent by winlogon. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | EnableMPR |
| ADMX File Name | WinLogon.admx |
<!-- EnableMPRNotifications-AdmxBacked-End -->

<!-- EnableMPRNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableMPRNotifications-Examples-End -->

<!-- EnableMPRNotifications-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-Begin -->
## EnumerateLocalUsersOnDomainJoinedComputers

<!-- EnumerateLocalUsersOnDomainJoinedComputers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnumerateLocalUsersOnDomainJoinedComputers-Applicability-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/EnumerateLocalUsersOnDomainJoinedComputers
```
<!-- EnumerateLocalUsersOnDomainJoinedComputers-OmaUri-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows local users to be enumerated on domain-joined computers.

- If you enable this policy setting, Logon UI will enumerate all local users on domain-joined computers.

- If you disable or don't configure this policy setting, the Logon UI won't enumerate local users on domain-joined computers.
<!-- EnumerateLocalUsersOnDomainJoinedComputers-Description-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnumerateLocalUsersOnDomainJoinedComputers-Editable-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnumerateLocalUsersOnDomainJoinedComputers-DFProperties-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnumerateLocalUsers |
| Friendly Name | Enumerate local users on domain-joined computers |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnumerateLocalUsers |
| ADMX File Name | Logon.admx |
<!-- EnumerateLocalUsersOnDomainJoinedComputers-AdmxBacked-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnumerateLocalUsersOnDomainJoinedComputers-Examples-End -->

<!-- EnumerateLocalUsersOnDomainJoinedComputers-End -->

<!-- HideFastUserSwitching-Begin -->
## HideFastUserSwitching

<!-- HideFastUserSwitching-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- HideFastUserSwitching-Applicability-End -->

<!-- HideFastUserSwitching-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/HideFastUserSwitching
```
<!-- HideFastUserSwitching-OmaUri-End -->

<!-- HideFastUserSwitching-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to hide the Switch User interface in the Logon UI, the Start menu and the Task Manager.

- If you enable this policy setting, the Switch User interface is hidden from the user who is attempting to log on or is logged-on to the computer that has this policy applied.

The locations that Switch User interface appear are in the Logon UI, the Start menu and the Task Manager.

- If you disable or don't configure this policy setting, the Switch User interface is accessible to the user in the three locations.
<!-- HideFastUserSwitching-Description-End -->

<!-- HideFastUserSwitching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideFastUserSwitching-Editable-End -->

<!-- HideFastUserSwitching-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HideFastUserSwitching-DFProperties-End -->

<!-- HideFastUserSwitching-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled (visible). |
| 1 | Enabled (hidden). |
<!-- HideFastUserSwitching-AllowedValues-End -->

<!-- HideFastUserSwitching-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | HideFastUserSwitching |
| Friendly Name | Hide entry points for Fast User Switching |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | HideFastUserSwitching |
| ADMX File Name | Logon.admx |
<!-- HideFastUserSwitching-GpMapping-End -->

<!-- HideFastUserSwitching-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideFastUserSwitching-Examples-End -->

<!-- HideFastUserSwitching-End -->

<!-- OverrideShellProgram-Begin -->
## OverrideShellProgram

<!-- OverrideShellProgram-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621.2338] and later |
<!-- OverrideShellProgram-Applicability-End -->

<!-- OverrideShellProgram-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsLogon/OverrideShellProgram
```
<!-- OverrideShellProgram-OmaUri-End -->

<!-- OverrideShellProgram-Description-Begin -->
<!-- Description-Source-DDF -->
OverrideShellProgram policy allows IT admin to configure the shell program for Windows OS on a device. This policy has the highest precedence over other ways of configuring the shell program. The policy currently supports below options: 1. Not Configured: Default shell will be launched. 2. Apply Lightweight Shell: Lightweight shell doesn't have a user interface and helps the device to achieve better performance as the shell consumes limited resources over default shell. Lightweight shell contains a limited set of features which could be consumed by applications. This configuration can be useful if the device needs to have a continuous running user interface application which would consume features offered by Lightweight shell. If you disable or don't configure this policy setting, then the default shell will be launched.
<!-- OverrideShellProgram-Description-End -->

<!-- OverrideShellProgram-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OverrideShellProgram-Editable-End -->

<!-- OverrideShellProgram-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- OverrideShellProgram-DFProperties-End -->

<!-- OverrideShellProgram-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not Configured. |
| 1 | Apply Lightweight shell. |
<!-- OverrideShellProgram-AllowedValues-End -->

<!-- OverrideShellProgram-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OverrideShellProgram-Examples-End -->

<!-- OverrideShellProgram-End -->

<!-- WindowsLogon-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsLogon-CspMoreInfo-End -->

<!-- WindowsLogon-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
