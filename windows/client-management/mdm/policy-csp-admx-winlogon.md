---
title: ADMX_WinLogon Policy CSP
description: Learn more about the ADMX_WinLogon Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WinLogon-Begin -->
# Policy CSP - ADMX_WinLogon

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WinLogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinLogon-Editable-End -->

<!-- CustomShell-Begin -->
## CustomShell

<!-- CustomShell-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomShell-Applicability-End -->

<!-- CustomShell-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WinLogon/CustomShell
```
<!-- CustomShell-OmaUri-End -->

<!-- CustomShell-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies an alternate user interface.

The Explorer program (%windir%\explorer.exe) creates the familiar Windows interface, but you can use this setting to specify an alternate interface.

- If you enable this setting, the system starts the interface you specify instead of Explorer.exe.

To use this setting, copy your interface program to a network share or to your system drive. Then, enable this setting, and type the name of the interface program, including the file name extension, in the Shell name text box. If the interface program file isn't located in a folder specified in the Path environment variable for your system, enter the fully qualified path to the file.

- If you disable this setting or don't configure it, the setting is ignored and the system displays the Explorer interface.

> [!TIP]
> To find the folders indicated by the Path environment variable, click System Properties in Control Panel, click the Advanced tab, click the Environment Variables button, and then, in the System variables box, click Path.
<!-- CustomShell-Description-End -->

<!-- CustomShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomShell-Editable-End -->

<!-- CustomShell-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomShell-DFProperties-End -->

<!-- CustomShell-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomShell |
| Friendly Name | Custom User Interface |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | WinLogon.admx |
<!-- CustomShell-AdmxBacked-End -->

<!-- CustomShell-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomShell-Examples-End -->

<!-- CustomShell-End -->

<!-- DisplayLastLogonInfoDescription-Begin -->
## DisplayLastLogonInfoDescription

<!-- DisplayLastLogonInfoDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisplayLastLogonInfoDescription-Applicability-End -->

<!-- DisplayLastLogonInfoDescription-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinLogon/DisplayLastLogonInfoDescription
```
<!-- DisplayLastLogonInfoDescription-OmaUri-End -->

<!-- DisplayLastLogonInfoDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not the system displays information about previous logons and logon failures to the user.

For local user accounts and domain user accounts in domains of at least a Windows Server 2008 functional level, if you enable this setting, a message appears after the user logs on that displays the date and time of the last successful logon by that user, the date and time of the last unsuccessful logon attempted with that user name, and the number of unsuccessful logons since the last successful logon by that user. This message must be acknowledged by the user before the user is presented with the Microsoft Windows desktop.

For domain user accounts in Windows Server 2003, Windows 2000 native, or Windows 2000 mixed functional level domains, if you enable this setting, a warning message will appear that Windows couldn't retrieve the information and the user won't be able to log on. Therefore, you shouldn't enable this policy setting if the domain isn't at the Windows Server 2008 domain functional level.

If you disable or don't configure this setting, messages about the previous logon or logon failures aren't displayed.
<!-- DisplayLastLogonInfoDescription-Description-End -->

<!-- DisplayLastLogonInfoDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisplayLastLogonInfoDescription-Editable-End -->

<!-- DisplayLastLogonInfoDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisplayLastLogonInfoDescription-DFProperties-End -->

<!-- DisplayLastLogonInfoDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisplayLastLogonInfoDescription |
| Friendly Name | Display information about previous logons during user logon |
| Location | Computer Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisplayLastLogonInfo |
| ADMX File Name | WinLogon.admx |
<!-- DisplayLastLogonInfoDescription-AdmxBacked-End -->

<!-- DisplayLastLogonInfoDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisplayLastLogonInfoDescription-Examples-End -->

<!-- DisplayLastLogonInfoDescription-End -->

<!-- LogonHoursNotificationPolicyDescription-Begin -->
## LogonHoursNotificationPolicyDescription

<!-- LogonHoursNotificationPolicyDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LogonHoursNotificationPolicyDescription-Applicability-End -->

<!-- LogonHoursNotificationPolicyDescription-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WinLogon/LogonHoursNotificationPolicyDescription
```
<!-- LogonHoursNotificationPolicyDescription-OmaUri-End -->

<!-- LogonHoursNotificationPolicyDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the logged-on user should be notified when his logon hours are about to expire. By default, a user is notified before logon hours expire, if actions have been set to occur when the logon hours expire.

- If you enable this setting, warnings aren't displayed to the user before the logon hours expire.

- If you disable or don't configure this setting, users receive warnings before the logon hours expire, if actions have been set to occur when the logon hours expire.

> [!NOTE]
> If you configure this setting, you might want to examine and appropriately configure the "Set action to take when logon hours expire" setting. If "Set action to take when logon hours expire" is disabled or not configured, the "Remove logon hours expiration warnings" setting will have no effect, and users receive no warnings about logon hour expiration.
<!-- LogonHoursNotificationPolicyDescription-Description-End -->

<!-- LogonHoursNotificationPolicyDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LogonHoursNotificationPolicyDescription-Editable-End -->

<!-- LogonHoursNotificationPolicyDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LogonHoursNotificationPolicyDescription-DFProperties-End -->

<!-- LogonHoursNotificationPolicyDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LogonHoursNotificationPolicyDescription |
| Friendly Name | Remove logon hours expiration warnings |
| Location | User Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DontDisplayLogonHoursWarnings |
| ADMX File Name | WinLogon.admx |
<!-- LogonHoursNotificationPolicyDescription-AdmxBacked-End -->

<!-- LogonHoursNotificationPolicyDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LogonHoursNotificationPolicyDescription-Examples-End -->

<!-- LogonHoursNotificationPolicyDescription-End -->

<!-- LogonHoursPolicyDescription-Begin -->
## LogonHoursPolicyDescription

<!-- LogonHoursPolicyDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LogonHoursPolicyDescription-Applicability-End -->

<!-- LogonHoursPolicyDescription-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WinLogon/LogonHoursPolicyDescription
```
<!-- LogonHoursPolicyDescription-OmaUri-End -->

<!-- LogonHoursPolicyDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls which action will be taken when the logon hours expire for the logged-on user. The actions include lock the workstation, disconnect the user, or log the user off completely.

If you choose to lock or disconnect a session, the user can't unlock the session or reconnect except during permitted logon hours.

If you choose to log off a user, the user can't log on again except during permitted logon hours. If you choose to log off a user, the user might lose unsaved data.

- If you enable this setting, the system will perform the action you specify when the user's logon hours expire.

- If you disable or don't configure this setting, the system takes no action when the user's logon hours expire. The user can continue the existing session, but can't log on to a new session.

> [!NOTE]
> If you configure this setting, you might want to examine and appropriately configure the "Remove logon hours expiration warnings" setting.
<!-- LogonHoursPolicyDescription-Description-End -->

<!-- LogonHoursPolicyDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LogonHoursPolicyDescription-Editable-End -->

<!-- LogonHoursPolicyDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LogonHoursPolicyDescription-DFProperties-End -->

<!-- LogonHoursPolicyDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LogonHoursPolicyDescription |
| Friendly Name | Set action to take when logon hours expire |
| Location | User Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | WinLogon.admx |
<!-- LogonHoursPolicyDescription-AdmxBacked-End -->

<!-- LogonHoursPolicyDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LogonHoursPolicyDescription-Examples-End -->

<!-- LogonHoursPolicyDescription-End -->

<!-- ReportCachedLogonPolicyDescription-Begin -->
## ReportCachedLogonPolicyDescription

<!-- ReportCachedLogonPolicyDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ReportCachedLogonPolicyDescription-Applicability-End -->

<!-- ReportCachedLogonPolicyDescription-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WinLogon/ReportCachedLogonPolicyDescription
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinLogon/ReportCachedLogonPolicyDescription
```
<!-- ReportCachedLogonPolicyDescription-OmaUri-End -->

<!-- ReportCachedLogonPolicyDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls whether the logged-on user should be notified if the logon server couldn't be contacted during logon and he has been logged-on using previously stored account information.

If enabled, a notification popup will be displayed to the user when the user logs on with cached credentials.

If disabled or not configured, no popup will be displayed to the user.
<!-- ReportCachedLogonPolicyDescription-Description-End -->

<!-- ReportCachedLogonPolicyDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ReportCachedLogonPolicyDescription-Editable-End -->

<!-- ReportCachedLogonPolicyDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ReportCachedLogonPolicyDescription-DFProperties-End -->

<!-- ReportCachedLogonPolicyDescription-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ReportCachedLogonPolicyDescription |
| Friendly Name | Report when logon server was not available during user logon |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | ReportControllerMissing |
| ADMX File Name | WinLogon.admx |
<!-- ReportCachedLogonPolicyDescription-AdmxBacked-End -->

<!-- ReportCachedLogonPolicyDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ReportCachedLogonPolicyDescription-Examples-End -->

<!-- ReportCachedLogonPolicyDescription-End -->

<!-- SoftwareSASGeneration-Begin -->
## SoftwareSASGeneration

<!-- SoftwareSASGeneration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SoftwareSASGeneration-Applicability-End -->

<!-- SoftwareSASGeneration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinLogon/SoftwareSASGeneration
```
<!-- SoftwareSASGeneration-OmaUri-End -->

<!-- SoftwareSASGeneration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not software can simulate the Secure Attention Sequence (SAS).

- If you enable this policy setting, you have one of four options:

If you set this policy setting to "None," user mode software can't simulate the SAS.

If you set this policy setting to "Services," services can simulate the SAS.

If you set this policy setting to "Ease of Access applications," Ease of Access applications can simulate the SAS.

If you set this policy setting to "Services and Ease of Access applications," both services and Ease of Access applications can simulate the SAS.

- If you disable or don't configure this setting, only Ease of Access applications running on the secure desktop can simulate the SAS.
<!-- SoftwareSASGeneration-Description-End -->

<!-- SoftwareSASGeneration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SoftwareSASGeneration-Editable-End -->

<!-- SoftwareSASGeneration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SoftwareSASGeneration-DFProperties-End -->

<!-- SoftwareSASGeneration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SoftwareSASGeneration |
| Friendly Name | Disable or enable software Secure Attention Sequence |
| Location | Computer Configuration |
| Path | Windows Components > Windows Logon Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | WinLogon.admx |
<!-- SoftwareSASGeneration-AdmxBacked-End -->

<!-- SoftwareSASGeneration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SoftwareSASGeneration-Examples-End -->

<!-- SoftwareSASGeneration-End -->

<!-- ADMX_WinLogon-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinLogon-CspMoreInfo-End -->

<!-- ADMX_WinLogon-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
