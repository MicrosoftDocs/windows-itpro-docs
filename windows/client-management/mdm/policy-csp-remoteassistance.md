---
title: RemoteAssistance Policy CSP
description: Learn more about the RemoteAssistance Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- RemoteAssistance-Begin -->
# Policy CSP - RemoteAssistance

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- RemoteAssistance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteAssistance-Editable-End -->

<!-- CustomizeWarningMessages-Begin -->
## CustomizeWarningMessages

<!-- CustomizeWarningMessages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- CustomizeWarningMessages-Applicability-End -->

<!-- CustomizeWarningMessages-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteAssistance/CustomizeWarningMessages
```
<!-- CustomizeWarningMessages-OmaUri-End -->

<!-- CustomizeWarningMessages-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you customize warning messages.

The "Display warning message before sharing control" policy setting allows you to specify a custom message to display before a user shares control of his or her computer.

The "Display warning message before connecting" policy setting allows you to specify a custom message to display before a user allows a connection to his or her computer.

- If you enable this policy setting, the warning message you specify overrides the default message that's seen by the novice.

- If you disable this policy setting, the user sees the default warning message.

- If you don't configure this policy setting, the user sees the default warning message.
<!-- CustomizeWarningMessages-Description-End -->

<!-- CustomizeWarningMessages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomizeWarningMessages-Editable-End -->

<!-- CustomizeWarningMessages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomizeWarningMessages-DFProperties-End -->

<!-- CustomizeWarningMessages-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RA_Options |
| Friendly Name | Customize warning messages |
| Location | Computer Configuration |
| Path | System > Remote Assistance |
| Registry Key Name | Software\policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | UseCustomMessages |
| ADMX File Name | RemoteAssistance.admx |
<!-- CustomizeWarningMessages-AdmxBacked-End -->

<!-- CustomizeWarningMessages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomizeWarningMessages-Examples-End -->

<!-- CustomizeWarningMessages-End -->

<!-- SessionLogging-Begin -->
## SessionLogging

<!-- SessionLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SessionLogging-Applicability-End -->

<!-- SessionLogging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteAssistance/SessionLogging
```
<!-- SessionLogging-OmaUri-End -->

<!-- SessionLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.

- If you enable this policy setting, log files are generated.

- If you disable this policy setting, log files aren't generated.

- If you don't configure this setting, application-based settings are used.
<!-- SessionLogging-Description-End -->

<!-- SessionLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SessionLogging-Editable-End -->

<!-- SessionLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SessionLogging-DFProperties-End -->

<!-- SessionLogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RA_Logging |
| Friendly Name | Turn on session logging |
| Location | Computer Configuration |
| Path | System > Remote Assistance |
| Registry Key Name | Software\policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | LoggingEnabled |
| ADMX File Name | RemoteAssistance.admx |
<!-- SessionLogging-AdmxBacked-End -->

<!-- SessionLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SessionLogging-Examples-End -->

<!-- SessionLogging-End -->

<!-- SolicitedRemoteAssistance-Begin -->
## SolicitedRemoteAssistance

<!-- SolicitedRemoteAssistance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SolicitedRemoteAssistance-Applicability-End -->

<!-- SolicitedRemoteAssistance-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteAssistance/SolicitedRemoteAssistance
```
<!-- SolicitedRemoteAssistance-OmaUri-End -->

<!-- SolicitedRemoteAssistance-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on or turn off Solicited (Ask for) Remote Assistance on this computer.

- If you enable this policy setting, users on this computer can use email or file transfer to ask someone for help. Also, users can use instant messaging programs to allow connections to this computer, and you can configure additional Remote Assistance settings.

- If you disable this policy setting, users on this computer can't use email or file transfer to ask someone for help. Also, users can't use instant messaging programs to allow connections to this computer.

- If you don't configure this policy setting, users can turn on or turn off Solicited (Ask for) Remote Assistance themselves in System Properties in Control Panel. Users can also configure Remote Assistance settings.

- If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer".

The "Maximum ticket time" policy setting sets a limit on the amount of time that a Remote Assistance invitation created by using email or file transfer can remain open.

The "Select the method for sending email invitations" setting specifies which email standard to use to send Remote Assistance invitations. Depending on your email program, you can use either the Mailto standard (the invitation recipient connects through an Internet link) or the SMAPI (Simple MAPI) standard (the invitation is attached to your email message). This policy setting isn't available in Windows Vista since SMAPI is the only method supported.

- If you enable this policy setting you should also enable appropriate firewall exceptions to allow Remote Assistance communications.
<!-- SolicitedRemoteAssistance-Description-End -->

<!-- SolicitedRemoteAssistance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SolicitedRemoteAssistance-Editable-End -->

<!-- SolicitedRemoteAssistance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SolicitedRemoteAssistance-DFProperties-End -->

<!-- SolicitedRemoteAssistance-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RA_Solicit |
| Friendly Name | Configure Solicited Remote Assistance |
| Location | Computer Configuration |
| Path | System > Remote Assistance |
| Registry Key Name | Software\policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fAllowToGetHelp |
| ADMX File Name | RemoteAssistance.admx |
<!-- SolicitedRemoteAssistance-AdmxBacked-End -->

<!-- SolicitedRemoteAssistance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SolicitedRemoteAssistance-Examples-End -->

<!-- SolicitedRemoteAssistance-End -->

<!-- UnsolicitedRemoteAssistance-Begin -->
## UnsolicitedRemoteAssistance

<!-- UnsolicitedRemoteAssistance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- UnsolicitedRemoteAssistance-Applicability-End -->

<!-- UnsolicitedRemoteAssistance-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/RemoteAssistance/UnsolicitedRemoteAssistance
```
<!-- UnsolicitedRemoteAssistance-OmaUri-End -->

<!-- UnsolicitedRemoteAssistance-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on or turn off Offer (Unsolicited) Remote Assistance on this computer.

- If you enable this policy setting, users on this computer can get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

- If you disable this policy setting, users on this computer can't get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

- If you don't configure this policy setting, users on this computer can't get help from their corporate technical support staff using Offer (Unsolicited) Remote Assistance.

- If you enable this policy setting, you have two ways to allow helpers to provide Remote Assistance: "Allow helpers to only view the computer" or "Allow helpers to remotely control the computer". When you configure this policy setting, you also specify the list of users or user groups that are allowed to offer remote assistance.

To configure the list of helpers, click "Show". In the window that opens, you can enter the names of the helpers. Add each user or group one by one. When you enter the name of the helper user or user groups, use the following format:

`<Domain Name>`\\`<User Name>` or.

`<Domain Name>`\\`<Group Name>`

- If you enable this policy setting, you should also enable firewall exceptions to allow Remote Assistance communications. The firewall exceptions required for Offer (Unsolicited) Remote Assistance depend on the version of Windows you are running.

Windows Vista and later.

Enable the Remote Assistance exception for the domain profile. The exception must contain:

Port 135:TCP
%WINDIR%\System32\msra.exe
%WINDIR%\System32\raserver.exe.

Windows XP with Service Pack 2 (SP2) and Windows XP Professional x64 Edition with Service Pack 1 (SP1)

Port 135:TCP
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe
%WINDIR%\System32\Sessmgr.exe.

For computers running Windows Server 2003 with Service Pack 1 (SP1)

Port 135:TCP
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpsvc.exe
%WINDIR%\PCHealth\HelpCtr\Binaries\Helpctr.exe.

Allow Remote Desktop Exception.
<!-- UnsolicitedRemoteAssistance-Description-End -->

<!-- UnsolicitedRemoteAssistance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UnsolicitedRemoteAssistance-Editable-End -->

<!-- UnsolicitedRemoteAssistance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UnsolicitedRemoteAssistance-DFProperties-End -->

<!-- UnsolicitedRemoteAssistance-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RA_Unsolicit |
| Friendly Name | Configure Offer Remote Assistance |
| Location | Computer Configuration |
| Path | System > Remote Assistance |
| Registry Key Name | Software\policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fAllowUnsolicited |
| ADMX File Name | RemoteAssistance.admx |
<!-- UnsolicitedRemoteAssistance-AdmxBacked-End -->

<!-- UnsolicitedRemoteAssistance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UnsolicitedRemoteAssistance-Examples-End -->

<!-- UnsolicitedRemoteAssistance-End -->

<!-- RemoteAssistance-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- RemoteAssistance-CspMoreInfo-End -->

<!-- RemoteAssistance-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
