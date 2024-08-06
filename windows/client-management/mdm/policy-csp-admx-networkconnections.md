---
title: ADMX_NetworkConnections Policy CSP
description: Learn more about the ADMX_NetworkConnections Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_NetworkConnections-Begin -->
# Policy CSP - ADMX_NetworkConnections

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_NetworkConnections-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_NetworkConnections-Editable-End -->

<!-- NC_AddRemoveComponents-Begin -->
## NC_AddRemoveComponents

<!-- NC_AddRemoveComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_AddRemoveComponents-Applicability-End -->

<!-- NC_AddRemoveComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_AddRemoveComponents
```
<!-- NC_AddRemoveComponents-OmaUri-End -->

<!-- NC_AddRemoveComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether administrators can add and remove network components for a LAN or remote access connection. This setting has no effect on nonadministrators.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Install and Uninstall buttons for components of connections are disabled, and administrators aren't permitted to access network components in the Windows Components Wizard.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Install and Uninstall buttons for components of connections in the Network Connections folder are enabled. Also, administrators can gain access to network components in the Windows Components Wizard.

The Install button opens the dialog boxes used to add network components. Clicking the Uninstall button removes the selected component in the components list (above the button).

The Install and Uninstall buttons appear in the properties dialog box for connections. These buttons are on the General tab for LAN connections and on the Networking tab for remote access connections.

> [!NOTE]
> When the "Prohibit access to properties of a LAN connection", "Ability to change properties of an all user remote access connection", or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the connection properties dialog box, the Install and Uninstall buttons for connections are blocked.

> [!NOTE]
> Nonadministrators are already prohibited from adding and removing connection components, regardless of this setting.
<!-- NC_AddRemoveComponents-Description-End -->

<!-- NC_AddRemoveComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_AddRemoveComponents-Editable-End -->

<!-- NC_AddRemoveComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_AddRemoveComponents-DFProperties-End -->

<!-- NC_AddRemoveComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_AddRemoveComponents |
| Friendly Name | Prohibit adding and removing components for a LAN or remote access connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_AddRemoveComponents |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_AddRemoveComponents-AdmxBacked-End -->

<!-- NC_AddRemoveComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_AddRemoveComponents-Examples-End -->

<!-- NC_AddRemoveComponents-End -->

<!-- NC_AdvancedSettings-Begin -->
## NC_AdvancedSettings

<!-- NC_AdvancedSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_AdvancedSettings-Applicability-End -->

<!-- NC_AdvancedSettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_AdvancedSettings
```
<!-- NC_AdvancedSettings-OmaUri-End -->

<!-- NC_AdvancedSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the Advanced Settings item on the Advanced menu in Network Connections is enabled for administrators.

The Advanced Settings item lets users view and change bindings and view and change the order in which the computer accesses connections, network providers, and print providers.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced Settings item is disabled for administrators.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Advanced Settings item is enabled for administrators.

> [!NOTE]
> Nonadministrators are already prohibited from accessing the Advanced Settings dialog box, regardless of this setting.
<!-- NC_AdvancedSettings-Description-End -->

<!-- NC_AdvancedSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_AdvancedSettings-Editable-End -->

<!-- NC_AdvancedSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_AdvancedSettings-DFProperties-End -->

<!-- NC_AdvancedSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_AdvancedSettings |
| Friendly Name | Prohibit access to the Advanced Settings item on the Advanced menu |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_AdvancedSettings |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_AdvancedSettings-AdmxBacked-End -->

<!-- NC_AdvancedSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_AdvancedSettings-Examples-End -->

<!-- NC_AdvancedSettings-End -->

<!-- NC_AllowAdvancedTCPIPConfig-Begin -->
## NC_AllowAdvancedTCPIPConfig

<!-- NC_AllowAdvancedTCPIPConfig-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_AllowAdvancedTCPIPConfig-Applicability-End -->

<!-- NC_AllowAdvancedTCPIPConfig-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_AllowAdvancedTCPIPConfig
```
<!-- NC_AllowAdvancedTCPIPConfig-OmaUri-End -->

<!-- NC_AllowAdvancedTCPIPConfig-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can configure advanced TCP/IP settings.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced button on the Internet Protocol (TCP/IP) Properties dialog box is disabled for all users (including administrators). As a result, users can't open the Advanced TCP/IP Settings Properties page and modify IP settings, such as DNS and WINS server information.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting, the Advanced button is enabled, and all users can open the Advanced TCP/IP Setting dialog box.

> [!NOTE]
> This setting is superseded by settings that prohibit access to properties of connections or connection components. When these policies are set to deny access to the connection properties dialog box or Properties button for connection components, users can't gain access to the Advanced button for TCP/IP configuration.

> [!NOTE]
> Nonadministrators (excluding Network Configuration Operators) don't have permission to access TCP/IP advanced configuration for a LAN connection, regardless of this setting.

> [!TIP]
> To open the Advanced TCP/IP Setting dialog box, in the Network Connections folder, right-click a connection icon, and click Properties. For remote access connections, click the Networking tab. In the "Components checked are used by this connection" box, click Internet Protocol (TCP/IP), click the Properties button, and then click the Advanced button.

> [!NOTE]
> Changing this setting from Enabled to Not Configured doesn't enable the Advanced button until the user logs off.
<!-- NC_AllowAdvancedTCPIPConfig-Description-End -->

<!-- NC_AllowAdvancedTCPIPConfig-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_AllowAdvancedTCPIPConfig-Editable-End -->

<!-- NC_AllowAdvancedTCPIPConfig-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_AllowAdvancedTCPIPConfig-DFProperties-End -->

<!-- NC_AllowAdvancedTCPIPConfig-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_AllowAdvancedTCPIPConfig |
| Friendly Name | Prohibit TCP/IP advanced configuration |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_AllowAdvancedTCPIPConfig |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_AllowAdvancedTCPIPConfig-AdmxBacked-End -->

<!-- NC_AllowAdvancedTCPIPConfig-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_AllowAdvancedTCPIPConfig-Examples-End -->

<!-- NC_AllowAdvancedTCPIPConfig-End -->

<!-- NC_ChangeBindState-Begin -->
## NC_ChangeBindState

<!-- NC_ChangeBindState-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_ChangeBindState-Applicability-End -->

<!-- NC_ChangeBindState-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_ChangeBindState
```
<!-- NC_ChangeBindState-OmaUri-End -->

<!-- NC_ChangeBindState-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether administrators can enable and disable the components used by LAN connections.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the check boxes for enabling and disabling components are disabled. As a result, administrators can't enable or disable the components that a connection uses.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Properties dialog box for a connection includes a check box beside the name of each component that the connection uses. Selecting the check box enables the component, and clearing the check box disables the component.

> [!NOTE]
> When the "Prohibit access to properties of a LAN connection" setting is enabled, users are blocked from accessing the check boxes for enabling and disabling the components of a LAN connection.

> [!NOTE]
> Nonadministrators are already prohibited from enabling or disabling components for a LAN connection, regardless of this setting.
<!-- NC_ChangeBindState-Description-End -->

<!-- NC_ChangeBindState-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_ChangeBindState-Editable-End -->

<!-- NC_ChangeBindState-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_ChangeBindState-DFProperties-End -->

<!-- NC_ChangeBindState-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_ChangeBindState |
| Friendly Name | Prohibit Enabling/Disabling components of a LAN connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_ChangeBindState |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_ChangeBindState-AdmxBacked-End -->

<!-- NC_ChangeBindState-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_ChangeBindState-Examples-End -->

<!-- NC_ChangeBindState-End -->

<!-- NC_DeleteAllUserConnection-Begin -->
## NC_DeleteAllUserConnection

<!-- NC_DeleteAllUserConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_DeleteAllUserConnection-Applicability-End -->

<!-- NC_DeleteAllUserConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_DeleteAllUserConnection
```
<!-- NC_DeleteAllUserConnection-OmaUri-End -->

<!-- NC_DeleteAllUserConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can delete all user remote access connections.

To create an all-user remote access connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.

- If you enable this setting, all users can delete shared remote access connections. In addition, if your file system is NTFS, users need to have Write access to Documents and Settings\All Users\Application Data\Microsoft\Network\Connections\Pbk to delete a shared remote access connection.

- If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) can't delete all-user remote access connections. (By default, users can still delete their private connections, but you can change the default by using the "Prohibit deletion of remote access connections" setting).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you don't configure this setting, only Administrators and Network Configuration Operators can delete all user remote access connections.

> [!IMPORTANT]
> When enabled, the "Prohibit deletion of remote access connections" setting takes precedence over this setting. Users (including administrators) can't delete any remote access connections, and this setting is ignored.

> [!NOTE]
> LAN connections are created and deleted automatically by the system when a LAN adapter is installed or removed. You can't use the Network Connections folder to create or delete a LAN connection.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_DeleteAllUserConnection-Description-End -->

<!-- NC_DeleteAllUserConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_DeleteAllUserConnection-Editable-End -->

<!-- NC_DeleteAllUserConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_DeleteAllUserConnection-DFProperties-End -->

<!-- NC_DeleteAllUserConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_DeleteAllUserConnection |
| Friendly Name | Ability to delete all user remote access connections |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_DeleteAllUserConnection |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_DeleteAllUserConnection-AdmxBacked-End -->

<!-- NC_DeleteAllUserConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_DeleteAllUserConnection-Examples-End -->

<!-- NC_DeleteAllUserConnection-End -->

<!-- NC_DeleteConnection-Begin -->
## NC_DeleteConnection

<!-- NC_DeleteConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_DeleteConnection-Applicability-End -->

<!-- NC_DeleteConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_DeleteConnection
```
<!-- NC_DeleteConnection-OmaUri-End -->

<!-- NC_DeleteConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can delete remote access connections.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) can't delete any remote access connections. This setting also disables the Delete option on the context menu for a remote access connection and on the File menu in the Network Connections folder.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, all users can delete their private remote access connections. Private connections are those that are available only to one user. (By default, only Administrators and Network Configuration Operators can delete connections available to all users, but you can change the default by using the "Ability to delete all user remote access connections" setting).

> [!IMPORTANT]
> When enabled, this setting takes precedence over the "Ability to delete all user remote access connections" setting. Users can't delete any remote access connections, and the "Ability to delete all user remote access connections" setting is ignored.

> [!NOTE]
> LAN connections are created and deleted automatically when a LAN adapter is installed or removed. You can't use the Network Connections folder to create or delete a LAN connection.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_DeleteConnection-Description-End -->

<!-- NC_DeleteConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_DeleteConnection-Editable-End -->

<!-- NC_DeleteConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_DeleteConnection-DFProperties-End -->

<!-- NC_DeleteConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_DeleteConnection |
| Friendly Name | Prohibit deletion of remote access connections |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_DeleteConnection |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_DeleteConnection-AdmxBacked-End -->

<!-- NC_DeleteConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_DeleteConnection-Examples-End -->

<!-- NC_DeleteConnection-End -->

<!-- NC_DialupPrefs-Begin -->
## NC_DialupPrefs

<!-- NC_DialupPrefs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_DialupPrefs-Applicability-End -->

<!-- NC_DialupPrefs-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_DialupPrefs
```
<!-- NC_DialupPrefs-OmaUri-End -->

<!-- NC_DialupPrefs-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether the Remote Acccess Preferences item on the Advanced menu in Network Connections folder is enabled.

The Remote Access Preferences item lets users create and change connections before logon and configure automatic dialing and callback features.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Remote Access Preferences item is disabled for all users (including administrators).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Remote Access Preferences item is enabled for all users.
<!-- NC_DialupPrefs-Description-End -->

<!-- NC_DialupPrefs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_DialupPrefs-Editable-End -->

<!-- NC_DialupPrefs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_DialupPrefs-DFProperties-End -->

<!-- NC_DialupPrefs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_DialupPrefs |
| Friendly Name | Prohibit access to the Remote Access Preferences item on the Advanced menu |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_DialupPrefs |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_DialupPrefs-AdmxBacked-End -->

<!-- NC_DialupPrefs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_DialupPrefs-Examples-End -->

<!-- NC_DialupPrefs-End -->

<!-- NC_DoNotShowLocalOnlyIcon-Begin -->
## NC_DoNotShowLocalOnlyIcon

<!-- NC_DoNotShowLocalOnlyIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_DoNotShowLocalOnlyIcon-Applicability-End -->

<!-- NC_DoNotShowLocalOnlyIcon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_DoNotShowLocalOnlyIcon
```
<!-- NC_DoNotShowLocalOnlyIcon-OmaUri-End -->

<!-- NC_DoNotShowLocalOnlyIcon-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether or not the "local access only" network icon will be shown.

When enabled, the icon for Internet access will be shown in the system tray even when a user is connected to a network with local access only.

If you disable this setting or don't configure it, the "local access only" icon will be used when a user is connected to a network with local access only.
<!-- NC_DoNotShowLocalOnlyIcon-Description-End -->

<!-- NC_DoNotShowLocalOnlyIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_DoNotShowLocalOnlyIcon-Editable-End -->

<!-- NC_DoNotShowLocalOnlyIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_DoNotShowLocalOnlyIcon-DFProperties-End -->

<!-- NC_DoNotShowLocalOnlyIcon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_DoNotShowLocalOnlyIcon |
| Friendly Name | Do not show the "local access only" network icon |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_DoNotShowLocalOnlyIcon |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_DoNotShowLocalOnlyIcon-AdmxBacked-End -->

<!-- NC_DoNotShowLocalOnlyIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_DoNotShowLocalOnlyIcon-Examples-End -->

<!-- NC_DoNotShowLocalOnlyIcon-End -->

<!-- NC_EnableAdminProhibits-Begin -->
## NC_EnableAdminProhibits

<!-- NC_EnableAdminProhibits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_EnableAdminProhibits-Applicability-End -->

<!-- NC_EnableAdminProhibits-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_EnableAdminProhibits
```
<!-- NC_EnableAdminProhibits-OmaUri-End -->

<!-- NC_EnableAdminProhibits-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether settings that existed in Windows 2000 Server family will apply to Administrators.

The set of Network Connections group settings that existed in Windows 2000 Professional also exists in Windows XP Professional. In Windows 2000 Professional, all of these settings had the ability to prohibit the use of certain features from Administrators.

By default, Network Connections group settings in Windows XP Professional don't have the ability to prohibit the use of features from Administrators.

- If you enable this setting, the Windows XP settings that existed in Windows 2000 Professional will have the ability to prohibit Administrators from using certain features. These settings are "Ability to rename LAN connections or remote access connections available to all users", "Prohibit access to properties of components of a LAN connection", "Prohibit access to properties of components of a remote access connection", "Ability to access TCP/IP advanced configuration", "Prohibit access to the Advanced Settings Item on the Advanced Menu", "Prohibit adding and removing components for a LAN or remote access connection", "Prohibit access to properties of a LAN connection", "Prohibit Enabling/Disabling components of a LAN connection", "Ability to change properties of an all user remote access connection", "Prohibit changing properties of a private remote access connection", "Prohibit deletion of remote access connections", "Ability to delete all user remote access connections", "Prohibit connecting and disconnecting a remote access connection", "Ability to Enable/Disable a LAN connection", "Prohibit access to the New Connection Wizard", "Prohibit renaming private remote access connections", "Prohibit access to the Remote Access Preferences item on the Advanced menu", "Prohibit viewing of status for an active connection". When this setting is enabled, settings that exist in both Windows 2000 Professional and Windows XP Professional behave the same for administrators.

- If you disable this setting or don't configure it, Windows XP settings that existed in Windows 2000 won't apply to administrators.

> [!NOTE]
> This setting is intended to be used in a situation in which the Group Policy object that these settings are being applied to contains both Windows 2000 Professional and Windows XP Professional computers, and identical Network Connections policy behavior is required between all Windows 2000 Professional and Windows XP Professional computers.
<!-- NC_EnableAdminProhibits-Description-End -->

<!-- NC_EnableAdminProhibits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_EnableAdminProhibits-Editable-End -->

<!-- NC_EnableAdminProhibits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_EnableAdminProhibits-DFProperties-End -->

<!-- NC_EnableAdminProhibits-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_EnableAdminProhibits |
| Friendly Name | Enable Windows 2000 Network Connections settings for Administrators |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_EnableAdminProhibits |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_EnableAdminProhibits-AdmxBacked-End -->

<!-- NC_EnableAdminProhibits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_EnableAdminProhibits-Examples-End -->

<!-- NC_EnableAdminProhibits-End -->

<!-- NC_ForceTunneling-Begin -->
## NC_ForceTunneling

<!-- NC_ForceTunneling-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_ForceTunneling-Applicability-End -->

<!-- NC_ForceTunneling-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_ForceTunneling
```
<!-- NC_ForceTunneling-OmaUri-End -->

<!-- NC_ForceTunneling-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether a remote client computer routes Internet traffic through the internal network or whether the client accesses the Internet directly.

When a remote client computer connects to an internal network using DirectAccess, it can access the Internet in two ways: through the secure tunnel that DirectAccess establishes between the computer and the internal network, or directly through the local default gateway.

- If you enable this policy setting, all traffic between a remote client computer running DirectAccess and the Internet is routed through the internal network.

- If you disable this policy setting, traffic between remote client computers running DirectAccess and the Internet isn't routed through the internal network.

- If you don't configure this policy setting, traffic between remote client computers running DirectAccess and the Internet isn't routed through the internal network.
<!-- NC_ForceTunneling-Description-End -->

<!-- NC_ForceTunneling-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_ForceTunneling-Editable-End -->

<!-- NC_ForceTunneling-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_ForceTunneling-DFProperties-End -->

<!-- NC_ForceTunneling-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_ForceTunneling |
| Friendly Name | Route all traffic through the internal network |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\TCPIP\v6Transition |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_ForceTunneling-AdmxBacked-End -->

<!-- NC_ForceTunneling-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_ForceTunneling-Examples-End -->

<!-- NC_ForceTunneling-End -->

<!-- NC_IpStateChecking-Begin -->
## NC_IpStateChecking

<!-- NC_IpStateChecking-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_IpStateChecking-Applicability-End -->

<!-- NC_IpStateChecking-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_IpStateChecking
```
<!-- NC_IpStateChecking-OmaUri-End -->

<!-- NC_IpStateChecking-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether notifications are shown to the user when a DHCP-configured connection is unable to retrieve an IP address from a DHCP server. This is often signified by the assignment of an automatic private IP address"(i.e. an IP address in the range 169.254.*.*). This indicates that a DHCP server couldn't be reached or the DHCP server was reached but unable to respond to the request with a valid IP address. By default, a notification is displayed providing the user with information on how the problem can be resolved.

- If you enable this policy setting, this condition won't be reported as an error to the user.

- If you disable or don't configure this policy setting, a DHCP-configured connection that hasn't been assigned an IP address will be reported via a notification, providing the user with information as to how the problem can be resolved.
<!-- NC_IpStateChecking-Description-End -->

<!-- NC_IpStateChecking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_IpStateChecking-Editable-End -->

<!-- NC_IpStateChecking-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_IpStateChecking-DFProperties-End -->

<!-- NC_IpStateChecking-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_IpStateChecking |
| Friendly Name | Turn off notifications when a connection has only limited or no connectivity |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_IpStateChecking |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_IpStateChecking-AdmxBacked-End -->

<!-- NC_IpStateChecking-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_IpStateChecking-Examples-End -->

<!-- NC_IpStateChecking-End -->

<!-- NC_LanChangeProperties-Begin -->
## NC_LanChangeProperties

<!-- NC_LanChangeProperties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_LanChangeProperties-Applicability-End -->

<!-- NC_LanChangeProperties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_LanChangeProperties
```
<!-- NC_LanChangeProperties-OmaUri-End -->

<!-- NC_LanChangeProperties-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether Administrators and Network Configuration Operators can change the properties of components used by a LAN connection.

This setting determines whether the Properties button for components of a LAN connection is enabled.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties button is disabled for Administrators. Network Configuration Operators are prohibited from accessing connection components, regardless of the "Enable Network Connections settings for Administrators" setting.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting doesn't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Properties button is enabled for administrators and Network Configuration Operators.

The Local Area Connection Properties dialog box includes a list of the network components that the connection uses. To view or change the properties of a component, click the name of the component, and then click the Properties button beneath the component list.

> [!NOTE]
> Not all network components have configurable properties. For components that aren't configurable, the Properties button is always disabled.

> [!NOTE]
> When the "Prohibit access to properties of a LAN connection" setting is enabled, users are blocked from accessing the Properties button for LAN connection components.

> [!NOTE]
> Network Configuration Operators only have permission to change TCP/IP properties. Properties for all other components are unavailable to these users.

> [!NOTE]
> Nonadministrators are already prohibited from accessing properties of components for a LAN connection, regardless of this setting.
<!-- NC_LanChangeProperties-Description-End -->

<!-- NC_LanChangeProperties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_LanChangeProperties-Editable-End -->

<!-- NC_LanChangeProperties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_LanChangeProperties-DFProperties-End -->

<!-- NC_LanChangeProperties-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_LanChangeProperties |
| Friendly Name | Prohibit access to properties of components of a LAN connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_LanChangeProperties |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_LanChangeProperties-AdmxBacked-End -->

<!-- NC_LanChangeProperties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_LanChangeProperties-Examples-End -->

<!-- NC_LanChangeProperties-End -->

<!-- NC_LanConnect-Begin -->
## NC_LanConnect

<!-- NC_LanConnect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_LanConnect-Applicability-End -->

<!-- NC_LanConnect-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_LanConnect
```
<!-- NC_LanConnect-OmaUri-End -->

<!-- NC_LanConnect-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can enable/disable LAN connections.

- If you enable this setting, the Enable and Disable options for LAN connections are available to users (including nonadministrators). Users can enable/disable a LAN connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.

- If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Enable and Disable menu items are disabled for all users (including administrators).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you don't configure this setting, only Administrators and Network Configuration Operators can enable/disable LAN connections.

> [!NOTE]
> Administrators can still enable/disable LAN connections from Device Manager when this setting is disabled.
<!-- NC_LanConnect-Description-End -->

<!-- NC_LanConnect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_LanConnect-Editable-End -->

<!-- NC_LanConnect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_LanConnect-DFProperties-End -->

<!-- NC_LanConnect-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_LanConnect |
| Friendly Name | Ability to Enable/Disable a LAN connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_LanConnect |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_LanConnect-AdmxBacked-End -->

<!-- NC_LanConnect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_LanConnect-Examples-End -->

<!-- NC_LanConnect-End -->

<!-- NC_LanProperties-Begin -->
## NC_LanProperties

<!-- NC_LanProperties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_LanProperties-Applicability-End -->

<!-- NC_LanProperties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_LanProperties
```
<!-- NC_LanProperties-OmaUri-End -->

<!-- NC_LanProperties-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can change the properties of a LAN connection.

This setting determines whether the Properties menu item is enabled, and thus, whether the Local Area Connection Properties dialog box is available to users.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled for all users, and users can't open the Local Area Connection Properties dialog box.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, a Properties menu item appears when users right-click the icon representing a LAN connection. Also, when users select the connection, Properties is enabled on the File menu.

> [!NOTE]
> This setting takes precedence over settings that manipulate the availability of features inside the Local Area Connection Properties dialog box.

- If this setting is enabled, nothing within the properties dialog box for a LAN connection is available to users.

> [!NOTE]
> Nonadministrators have the right to view the properties dialog box for a connection but not to make changes, regardless of this setting.
<!-- NC_LanProperties-Description-End -->

<!-- NC_LanProperties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_LanProperties-Editable-End -->

<!-- NC_LanProperties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_LanProperties-DFProperties-End -->

<!-- NC_LanProperties-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_LanProperties |
| Friendly Name | Prohibit access to properties of a LAN connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_LanProperties |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_LanProperties-AdmxBacked-End -->

<!-- NC_LanProperties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_LanProperties-Examples-End -->

<!-- NC_LanProperties-End -->

<!-- NC_NewConnectionWizard-Begin -->
## NC_NewConnectionWizard

<!-- NC_NewConnectionWizard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_NewConnectionWizard-Applicability-End -->

<!-- NC_NewConnectionWizard-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_NewConnectionWizard
```
<!-- NC_NewConnectionWizard-OmaUri-End -->

<!-- NC_NewConnectionWizard-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can use the New Connection Wizard, which creates new network connections.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Make New Connection icon doesn't appear in the Start Menu on in the Network Connections folder. As a result, users (including administrators) can't start the New Connection Wizard.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Make New Connection icon appears in the Start menu and in the Network Connections folder for all users. Clicking the Make New Connection icon starts the New Connection Wizard.

> [!NOTE]
> Changing this setting from Enabled to Not Configured doesn't restore the Make New Connection icon until the user logs off or on. When other changes to this setting are applied, the icon doesn't appear or disappear in the Network Connections folder until the folder is refreshed.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_NewConnectionWizard-Description-End -->

<!-- NC_NewConnectionWizard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_NewConnectionWizard-Editable-End -->

<!-- NC_NewConnectionWizard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_NewConnectionWizard-DFProperties-End -->

<!-- NC_NewConnectionWizard-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_NewConnectionWizard |
| Friendly Name | Prohibit access to the New Connection Wizard |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_NewConnectionWizard |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_NewConnectionWizard-AdmxBacked-End -->

<!-- NC_NewConnectionWizard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_NewConnectionWizard-Examples-End -->

<!-- NC_NewConnectionWizard-End -->

<!-- NC_PersonalFirewallConfig-Begin -->
## NC_PersonalFirewallConfig

<!-- NC_PersonalFirewallConfig-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_PersonalFirewallConfig-Applicability-End -->

<!-- NC_PersonalFirewallConfig-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_PersonalFirewallConfig
```
<!-- NC_PersonalFirewallConfig-OmaUri-End -->

<!-- NC_PersonalFirewallConfig-Description-Begin -->
<!-- Description-Source-ADMX -->
Prohibits use of Internet Connection Firewall on your DNS domain network.

Determines whether users can enable the Internet Connection Firewall feature on a connection, and if the Internet Connection Firewall service can run on a computer.

> [!IMPORTANT]
> This setting is location aware. It only applies when a computer is connected to the same DNS domain network it was connected to when the setting was refreshed on that computer. If a computer is connected to a DNS domain network other than the one it was connected to when the setting was refreshed, this setting doesn't apply.

The Internet Connection Firewall is a stateful packet filter for home and small office users to protect them from Internet network security threats.

- If you enable this setting, Internet Connection Firewall can't be enabled or configured by users (including administrators), and the Internet Connection Firewall service can't run on the computer. The option to enable the Internet Connection Firewall through the Advanced tab is removed. In addition, the Internet Connection Firewall isn't enabled for remote access connections created through the Make New Connection Wizard. The Network Setup Wizard is disabled.

> [!NOTE]
> If you enable the "Windows Firewall: Protect all network connections" policy setting, the "Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting has no effect on computers that are running Windows Firewall, which replaces Internet Connection Firewall when you install Windows XP Service Pack 2.

- If you disable this setting or don't configure it, the Internet Connection Firewall is disabled when a LAN Connection or VPN connection is created, but users can use the Advanced tab in the connection properties to enable it. The Internet Connection Firewall is enabled by default on the connection for which Internet Connection Sharing is enabled. In addition, remote access connections created through the Make New Connection Wizard have the Internet Connection Firewall enabled.
<!-- NC_PersonalFirewallConfig-Description-End -->

<!-- NC_PersonalFirewallConfig-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_PersonalFirewallConfig-Editable-End -->

<!-- NC_PersonalFirewallConfig-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_PersonalFirewallConfig-DFProperties-End -->

<!-- NC_PersonalFirewallConfig-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_PersonalFirewallConfig |
| Friendly Name | Prohibit use of Internet Connection Firewall on your DNS domain network |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_PersonalFirewallConfig |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_PersonalFirewallConfig-AdmxBacked-End -->

<!-- NC_PersonalFirewallConfig-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_PersonalFirewallConfig-Examples-End -->

<!-- NC_PersonalFirewallConfig-End -->

<!-- NC_RasAllUserProperties-Begin -->
## NC_RasAllUserProperties

<!-- NC_RasAllUserProperties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RasAllUserProperties-Applicability-End -->

<!-- NC_RasAllUserProperties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RasAllUserProperties
```
<!-- NC_RasAllUserProperties-OmaUri-End -->

<!-- NC_RasAllUserProperties-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether a user can view and change the properties of remote access connections that are available to all users of the computer.

To create an all-user remote access connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.

This setting determines whether the Properties menu item is enabled, and thus, whether the Remote Access Connection Properties dialog box is available to users.

- If you enable this setting, a Properties menu item appears when any user right-clicks the icon for a remote access connection. Also, when any user selects the connection, Properties appears on the File menu.

- If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled, and users (including administrators) can't open the remote access connection properties dialog box.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you don't configure this setting, only Administrators and Network Configuration Operators can change properties of all-user remote access connections.

> [!NOTE]
> This setting takes precedence over settings that manipulate the availability of features inside the Remote Access Connection Properties dialog box.

- If this setting is disabled, nothing within the properties dialog box for a remote access connection will be available to users.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_RasAllUserProperties-Description-End -->

<!-- NC_RasAllUserProperties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RasAllUserProperties-Editable-End -->

<!-- NC_RasAllUserProperties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RasAllUserProperties-DFProperties-End -->

<!-- NC_RasAllUserProperties-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RasAllUserProperties |
| Friendly Name | Ability to change properties of an all user remote access connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RasAllUserProperties |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RasAllUserProperties-AdmxBacked-End -->

<!-- NC_RasAllUserProperties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RasAllUserProperties-Examples-End -->

<!-- NC_RasAllUserProperties-End -->

<!-- NC_RasChangeProperties-Begin -->
## NC_RasChangeProperties

<!-- NC_RasChangeProperties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RasChangeProperties-Applicability-End -->

<!-- NC_RasChangeProperties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RasChangeProperties
```
<!-- NC_RasChangeProperties-OmaUri-End -->

<!-- NC_RasChangeProperties-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can view and change the properties of components used by a private or all-user remote access connection.

This setting determines whether the Properties button for components used by a private or all-user remote access connection is enabled.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties button is disabled for all users (including administrators).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting doesn't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Properties button is enabled for all users.

The Networking tab of the Remote Access Connection Properties dialog box includes a list of the network components that the connection uses. To view or change the properties of a component, click the name of the component, and then click the Properties button beneath the component list.

> [!NOTE]
> Not all network components have configurable properties. For components that aren't configurable, the Properties button is always disabled.

> [!NOTE]
> When the "Ability to change properties of an all user remote access connection" or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the Remote Access Connection Properties dialog box, the Properties button for remote access connection components is blocked.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_RasChangeProperties-Description-End -->

<!-- NC_RasChangeProperties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RasChangeProperties-Editable-End -->

<!-- NC_RasChangeProperties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RasChangeProperties-DFProperties-End -->

<!-- NC_RasChangeProperties-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RasChangeProperties |
| Friendly Name | Prohibit access to properties of components of a remote access connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RasChangeProperties |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RasChangeProperties-AdmxBacked-End -->

<!-- NC_RasChangeProperties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RasChangeProperties-Examples-End -->

<!-- NC_RasChangeProperties-End -->

<!-- NC_RasConnect-Begin -->
## NC_RasConnect

<!-- NC_RasConnect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RasConnect-Applicability-End -->

<!-- NC_RasConnect-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RasConnect
```
<!-- NC_RasConnect-OmaUri-End -->

<!-- NC_RasConnect-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can connect and disconnect remote access connections.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Connect and Disconnect menu items are disabled for all users (including administrators).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Connect and Disconnect options for remote access connections are available to all users. Users can connect or disconnect a remote access connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.
<!-- NC_RasConnect-Description-End -->

<!-- NC_RasConnect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RasConnect-Editable-End -->

<!-- NC_RasConnect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RasConnect-DFProperties-End -->

<!-- NC_RasConnect-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RasConnect |
| Friendly Name | Prohibit connecting and disconnecting a remote access connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RasConnect |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RasConnect-AdmxBacked-End -->

<!-- NC_RasConnect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RasConnect-Examples-End -->

<!-- NC_RasConnect-End -->

<!-- NC_RasMyProperties-Begin -->
## NC_RasMyProperties

<!-- NC_RasMyProperties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RasMyProperties-Applicability-End -->

<!-- NC_RasMyProperties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RasMyProperties
```
<!-- NC_RasMyProperties-OmaUri-End -->

<!-- NC_RasMyProperties-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can view and change the properties of their private remote access connections.

Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.

This setting determines whether the Properties menu item is enabled, and thus, whether the Remote Access Connection Properties dialog box for a private connection is available to users.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled, and no users (including administrators) can open the Remote Access Connection Properties dialog box for a private connection.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, a Properties menu item appears when any user right-clicks the icon representing a private remote access connection. Also, when any user selects the connection, Properties appears on the File menu.

> [!NOTE]
> This setting takes precedence over settings that manipulate the availability of features in the Remote Access Connection Properties dialog box.

- If this setting is enabled, nothing within the properties dialog box for a remote access connection will be available to users.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_RasMyProperties-Description-End -->

<!-- NC_RasMyProperties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RasMyProperties-Editable-End -->

<!-- NC_RasMyProperties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RasMyProperties-DFProperties-End -->

<!-- NC_RasMyProperties-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RasMyProperties |
| Friendly Name | Prohibit changing properties of a private remote access connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RasMyProperties |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RasMyProperties-AdmxBacked-End -->

<!-- NC_RasMyProperties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RasMyProperties-Examples-End -->

<!-- NC_RasMyProperties-End -->

<!-- NC_RenameAllUserRasConnection-Begin -->
## NC_RenameAllUserRasConnection

<!-- NC_RenameAllUserRasConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RenameAllUserRasConnection-Applicability-End -->

<!-- NC_RenameAllUserRasConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RenameAllUserRasConnection
```
<!-- NC_RenameAllUserRasConnection-OmaUri-End -->

<!-- NC_RenameAllUserRasConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether nonadministrators can rename all-user remote access connections.

To create an all-user connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.

- If you enable this setting, the Rename option is enabled for all-user remote access connections. Any user can rename all-user connections by clicking an icon representing the connection or by using the File menu.

- If you disable this setting, the Rename option is disabled for nonadministrators only.

- If you don't configure the setting, only Administrators and Network Configuration Operators can rename all-user remote access connections.

> [!NOTE]
> This setting doesn't apply to Administrators.

> [!NOTE]
> When the "Ability to rename LAN connections or remote access connections available to all users" setting is configured (set to either Enabled or Disabled), this setting doesn't apply.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_RenameAllUserRasConnection-Description-End -->

<!-- NC_RenameAllUserRasConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RenameAllUserRasConnection-Editable-End -->

<!-- NC_RenameAllUserRasConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RenameAllUserRasConnection-DFProperties-End -->

<!-- NC_RenameAllUserRasConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RenameAllUserRasConnection |
| Friendly Name | Ability to rename all user remote access connections |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RenameAllUserRasConnection |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RenameAllUserRasConnection-AdmxBacked-End -->

<!-- NC_RenameAllUserRasConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RenameAllUserRasConnection-Examples-End -->

<!-- NC_RenameAllUserRasConnection-End -->

<!-- NC_RenameConnection-Begin -->
## NC_RenameConnection

<!-- NC_RenameConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RenameConnection-Applicability-End -->

<!-- NC_RenameConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RenameConnection
```
<!-- NC_RenameConnection-OmaUri-End -->

<!-- NC_RenameConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can rename LAN or all user remote access connections.

- If you enable this setting, the Rename option is enabled for all users. Users can rename connections by clicking the icon representing a connection or by using the File menu.

- If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option for LAN and all user remote access connections is disabled for all users (including Administrators and Network Configuration Operators).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

If this setting isn't configured, only Administrators and Network Configuration Operators have the right to rename LAN or all user remote access connections.

> [!NOTE]
> When configured, this setting always takes precedence over the "Ability to rename LAN connections" and "Ability to rename all user remote access connections" settings.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to rename remote access connections.
<!-- NC_RenameConnection-Description-End -->

<!-- NC_RenameConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RenameConnection-Editable-End -->

<!-- NC_RenameConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RenameConnection-DFProperties-End -->

<!-- NC_RenameConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RenameConnection |
| Friendly Name | Ability to rename LAN connections or remote access connections available to all users |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RenameConnection |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RenameConnection-AdmxBacked-End -->

<!-- NC_RenameConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RenameConnection-Examples-End -->

<!-- NC_RenameConnection-End -->

<!-- NC_RenameLanConnection-Begin -->
## NC_RenameLanConnection

<!-- NC_RenameLanConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RenameLanConnection-Applicability-End -->

<!-- NC_RenameLanConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RenameLanConnection
```
<!-- NC_RenameLanConnection-OmaUri-End -->

<!-- NC_RenameLanConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether nonadministrators can rename a LAN connection.

- If you enable this setting, the Rename option is enabled for LAN connections. Nonadministrators can rename LAN connections by clicking an icon representing the connection or by using the File menu.

- If you disable this setting, the Rename option is disabled for nonadministrators only.

- If you don't configure this setting, only Administrators and Network Configuration Operators can rename LAN connections.

> [!NOTE]
> This setting doesn't apply to Administrators.

> [!NOTE]
> When the "Ability to rename LAN connections or remote access connections available to all users" setting is configured (set to either enabled or disabled), this setting doesn't apply.
<!-- NC_RenameLanConnection-Description-End -->

<!-- NC_RenameLanConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RenameLanConnection-Editable-End -->

<!-- NC_RenameLanConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RenameLanConnection-DFProperties-End -->

<!-- NC_RenameLanConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RenameLanConnection |
| Friendly Name | Ability to rename LAN connections |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RenameLanConnection |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RenameLanConnection-AdmxBacked-End -->

<!-- NC_RenameLanConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RenameLanConnection-Examples-End -->

<!-- NC_RenameLanConnection-End -->

<!-- NC_RenameMyRasConnection-Begin -->
## NC_RenameMyRasConnection

<!-- NC_RenameMyRasConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_RenameMyRasConnection-Applicability-End -->

<!-- NC_RenameMyRasConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_RenameMyRasConnection
```
<!-- NC_RenameMyRasConnection-OmaUri-End -->

<!-- NC_RenameMyRasConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can rename their private remote access connections.

Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.

- If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option is disabled for all users (including administrators).

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the Rename option is enabled for all users' private remote access connections. Users can rename their private connection by clicking an icon representing the connection or by using the File menu.

> [!NOTE]
> This setting doesn't prevent users from using other programs, such as Internet Explorer, to bypass this setting.
<!-- NC_RenameMyRasConnection-Description-End -->

<!-- NC_RenameMyRasConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_RenameMyRasConnection-Editable-End -->

<!-- NC_RenameMyRasConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_RenameMyRasConnection-DFProperties-End -->

<!-- NC_RenameMyRasConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_RenameMyRasConnection |
| Friendly Name | Prohibit renaming private remote access connections |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_RenameMyRasConnection |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_RenameMyRasConnection-AdmxBacked-End -->

<!-- NC_RenameMyRasConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_RenameMyRasConnection-Examples-End -->

<!-- NC_RenameMyRasConnection-End -->

<!-- NC_ShowSharedAccessUI-Begin -->
## NC_ShowSharedAccessUI

<!-- NC_ShowSharedAccessUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_ShowSharedAccessUI-Applicability-End -->

<!-- NC_ShowSharedAccessUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_ShowSharedAccessUI
```
<!-- NC_ShowSharedAccessUI-OmaUri-End -->

<!-- NC_ShowSharedAccessUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether administrators can enable and configure the Internet Connection Sharing (ICS) feature of an Internet connection and if the ICS service can run on the computer.

ICS lets administrators configure their system as an Internet gateway for a small network and provides network services, such as name resolution and addressing through DHCP, to the local private network.

- If you enable this setting, ICS can't be enabled or configured by administrators, and the ICS service can't run on the computer. The Advanced tab in the Properties dialog box for a LAN or remote access connection is removed. The Internet Connection Sharing page is removed from the New Connection Wizard. The Network Setup Wizard is disabled.

- If you disable this setting or don't configure it and have two or more connections, administrators can enable ICS. The Advanced tab in the properties dialog box for a LAN or remote access connection is available. In addition, the user is presented with the option to enable Internet Connection Sharing in the Network Setup Wizard and Make New Connection Wizard. (The Network Setup Wizard is available only in Windows XP Professional).

By default, ICS is disabled when you create a remote access connection, but administrators can use the Advanced tab to enable it. When running the New Connection Wizard or Network Setup Wizard, administrators can choose to enable ICS.

> [!NOTE]
> Internet Connection Sharing is only available when two or more network connections are present.

> [!NOTE]
> When the "Prohibit access to properties of a LAN connection," "Ability to change properties of an all user remote access connection," or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the Connection Properties dialog box, the Advanced tab for the connection is blocked.

> [!NOTE]
> Nonadministrators are already prohibited from configuring Internet Connection Sharing, regardless of this setting.

> [!NOTE]
> Disabling this setting doesn't prevent Wireless Hosted Networking from using the ICS service for DHCP services. To prevent the ICS service from running, on the Network Permissions tab in the network's policy properties, select the "Do not use hosted networks" check box.
<!-- NC_ShowSharedAccessUI-Description-End -->

<!-- NC_ShowSharedAccessUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_ShowSharedAccessUI-Editable-End -->

<!-- NC_ShowSharedAccessUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_ShowSharedAccessUI-DFProperties-End -->

<!-- NC_ShowSharedAccessUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_ShowSharedAccessUI |
| Friendly Name | Prohibit use of Internet Connection Sharing on your DNS domain network |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_ShowSharedAccessUI |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_ShowSharedAccessUI-AdmxBacked-End -->

<!-- NC_ShowSharedAccessUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_ShowSharedAccessUI-Examples-End -->

<!-- NC_ShowSharedAccessUI-End -->

<!-- NC_Statistics-Begin -->
## NC_Statistics

<!-- NC_Statistics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_Statistics-Applicability-End -->

<!-- NC_Statistics-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_Statistics
```
<!-- NC_Statistics-OmaUri-End -->

<!-- NC_Statistics-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether users can view the status for an active connection.

Connection status is available from the connection status taskbar icon or from the Status dialog box. The Status dialog box displays information about the connection and its activity. It also provides buttons to disconnect and to configure the properties of the connection.

- If you enable this setting, the connection status taskbar icon and Status dialog box aren't available to users (including administrators). The Status option is disabled in the context menu for the connection and on the File menu in the Network Connections folder. Users can't choose to show the connection icon in the taskbar from the Connection Properties dialog box.

> [!IMPORTANT]
> If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting won't apply to administrators on post-Windows 2000 computers.

- If you disable this setting or don't configure it, the connection status taskbar icon and Status dialog box are available to all users.
<!-- NC_Statistics-Description-End -->

<!-- NC_Statistics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_Statistics-Editable-End -->

<!-- NC_Statistics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_Statistics-DFProperties-End -->

<!-- NC_Statistics-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_Statistics |
| Friendly Name | Prohibit viewing of status for an active connection |
| Location | User Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_Statistics |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_Statistics-AdmxBacked-End -->

<!-- NC_Statistics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_Statistics-Examples-End -->

<!-- NC_Statistics-End -->

<!-- NC_StdDomainUserSetLocation-Begin -->
## NC_StdDomainUserSetLocation

<!-- NC_StdDomainUserSetLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NC_StdDomainUserSetLocation-Applicability-End -->

<!-- NC_StdDomainUserSetLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_NetworkConnections/NC_StdDomainUserSetLocation
```
<!-- NC_StdDomainUserSetLocation-OmaUri-End -->

<!-- NC_StdDomainUserSetLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether to require domain users to elevate when setting a network's location.

- If you enable this policy setting, domain users must elevate when setting a network's location.

- If you disable or don't configure this policy setting, domain users can set a network's location without elevating.
<!-- NC_StdDomainUserSetLocation-Description-End -->

<!-- NC_StdDomainUserSetLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NC_StdDomainUserSetLocation-Editable-End -->

<!-- NC_StdDomainUserSetLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NC_StdDomainUserSetLocation-DFProperties-End -->

<!-- NC_StdDomainUserSetLocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NC_StdDomainUserSetLocation |
| Friendly Name | Require domain users to elevate when setting a network's location |
| Location | Computer Configuration |
| Path | Network > Network Connections |
| Registry Key Name | Software\Policies\Microsoft\Windows\Network Connections |
| Registry Value Name | NC_StdDomainUserSetLocation |
| ADMX File Name | NetworkConnections.admx |
<!-- NC_StdDomainUserSetLocation-AdmxBacked-End -->

<!-- NC_StdDomainUserSetLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NC_StdDomainUserSetLocation-Examples-End -->

<!-- NC_StdDomainUserSetLocation-End -->

<!-- ADMX_NetworkConnections-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_NetworkConnections-CspMoreInfo-End -->

<!-- ADMX_NetworkConnections-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
