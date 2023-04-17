---
title: ADMX_ServerManager Policy CSP
description: Learn more about the ADMX_ServerManager Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ServerManager-Begin -->
# Policy CSP - ADMX_ServerManager

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_ServerManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ServerManager-Editable-End -->

<!-- Do_not_display_Manage_Your_Server_page-Begin -->
## Do_not_display_Manage_Your_Server_page

<!-- Do_not_display_Manage_Your_Server_page-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- Do_not_display_Manage_Your_Server_page-Applicability-End -->

<!-- Do_not_display_Manage_Your_Server_page-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ServerManager/Do_not_display_Manage_Your_Server_page
```
<!-- Do_not_display_Manage_Your_Server_page-OmaUri-End -->

<!-- Do_not_display_Manage_Your_Server_page-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the automatic display of the Manage Your Server page.

- If you enable this policy setting, the Manage Your Server page is not displayed each time an administrator logs on to the server.

- If you disable or do not configure this policy setting, the Manage Your Server page is displayed each time an administrator logs on to the server. However, if the administrator has selected the "Don't display this page at logon" option at the bottom of the Manage Your Server page, the page is not displayed.
<!-- Do_not_display_Manage_Your_Server_page-Description-End -->

<!-- Do_not_display_Manage_Your_Server_page-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Regardless of the status of this policy setting, Server Manager is available from the Start menu or the Windows taskbar.
<!-- Do_not_display_Manage_Your_Server_page-Editable-End -->

<!-- Do_not_display_Manage_Your_Server_page-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Do_not_display_Manage_Your_Server_page-DFProperties-End -->

<!-- Do_not_display_Manage_Your_Server_page-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Do_not_display_Manage_Your_Server_page |
| Friendly Name | Do not display Manage Your Server page at logon |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\CurrentVersion\MYS |
| Registry Value Name | DisableShowAtLogon |
| ADMX File Name | ServerManager.admx |
<!-- Do_not_display_Manage_Your_Server_page-AdmxBacked-End -->

<!-- Do_not_display_Manage_Your_Server_page-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Do_not_display_Manage_Your_Server_page-Examples-End -->

<!-- Do_not_display_Manage_Your_Server_page-End -->

<!-- DoNotLaunchInitialConfigurationTasks-Begin -->
## DoNotLaunchInitialConfigurationTasks

<!-- DoNotLaunchInitialConfigurationTasks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DoNotLaunchInitialConfigurationTasks-Applicability-End -->

<!-- DoNotLaunchInitialConfigurationTasks-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ServerManager/DoNotLaunchInitialConfigurationTasks
```
<!-- DoNotLaunchInitialConfigurationTasks-OmaUri-End -->

<!-- DoNotLaunchInitialConfigurationTasks-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the automatic display of the Initial Configuration Tasks window at logon on Windows Server 2008 and Windows Server 2008 R2.

- If you enable this policy setting, the Initial Configuration Tasks window is not displayed when an administrator logs on to the server.

- If you disable this policy setting, the Initial Configuration Tasks window is displayed when an administrator logs on to the server.

- If you do not configure this policy setting, the Initial Configuration Tasks window is displayed when an administrator logs on to the server. However, if an administrator selects the "Do not show this window at logon" option, the window is not displayed on subsequent logons.
<!-- DoNotLaunchInitialConfigurationTasks-Description-End -->

<!-- DoNotLaunchInitialConfigurationTasks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotLaunchInitialConfigurationTasks-Editable-End -->

<!-- DoNotLaunchInitialConfigurationTasks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotLaunchInitialConfigurationTasks-DFProperties-End -->

<!-- DoNotLaunchInitialConfigurationTasks-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DoNotLaunchInitialConfigurationTasks |
| Friendly Name | Do not display Initial Configuration Tasks window automatically at logon |
| Location | Computer Configuration |
| Path | System > Server Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\Server\InitialConfigurationTasks |
| Registry Value Name | DoNotOpenAtLogon |
| ADMX File Name | ServerManager.admx |
<!-- DoNotLaunchInitialConfigurationTasks-AdmxBacked-End -->

<!-- DoNotLaunchInitialConfigurationTasks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotLaunchInitialConfigurationTasks-Examples-End -->

<!-- DoNotLaunchInitialConfigurationTasks-End -->

<!-- DoNotLaunchServerManager-Begin -->
## DoNotLaunchServerManager

<!-- DoNotLaunchServerManager-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DoNotLaunchServerManager-Applicability-End -->

<!-- DoNotLaunchServerManager-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ServerManager/DoNotLaunchServerManager
```
<!-- DoNotLaunchServerManager-OmaUri-End -->

<!-- DoNotLaunchServerManager-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the automatic display of Server Manager at logon.

- If you enable this policy setting, Server Manager is not displayed automatically when a user logs on to the server.

- If you disable this policy setting, Server Manager is displayed automatically when a user logs on to the server.

- If you do not configure this policy setting, Server Manager is displayed when a user logs on to the server. However, if the "Do not show me this console at logon" (Windows Server 2008 and Windows Server 2008 R2) or "Do not start Server Manager automatically at logon" (Windows Server 2012) option is selected, the console is not displayed automatically at logon.

> [!NOTE]
> Regardless of the status of this policy setting, Server Manager is available from the Start menu or the Windows taskbar.
<!-- DoNotLaunchServerManager-Description-End -->

<!-- DoNotLaunchServerManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotLaunchServerManager-Editable-End -->

<!-- DoNotLaunchServerManager-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotLaunchServerManager-DFProperties-End -->

<!-- DoNotLaunchServerManager-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DoNotLaunchServerManager |
| Friendly Name | Do not display Server Manager automatically at logon |
| Location | Computer Configuration |
| Path | System > Server Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\Server\ServerManager |
| Registry Value Name | DoNotOpenAtLogon |
| ADMX File Name | ServerManager.admx |
<!-- DoNotLaunchServerManager-AdmxBacked-End -->

<!-- DoNotLaunchServerManager-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotLaunchServerManager-Examples-End -->

<!-- DoNotLaunchServerManager-End -->

<!-- ServerManagerAutoRefreshRate-Begin -->
## ServerManagerAutoRefreshRate

<!-- ServerManagerAutoRefreshRate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ServerManagerAutoRefreshRate-Applicability-End -->

<!-- ServerManagerAutoRefreshRate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ServerManager/ServerManagerAutoRefreshRate
```
<!-- ServerManagerAutoRefreshRate-OmaUri-End -->

<!-- ServerManagerAutoRefreshRate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to set the refresh interval for Server Manager. Each refresh provides Server Manager with updated information about which roles and features are installed on servers that you are managing by using Server Manager. Server Manager also monitors the status of roles and features installed on managed servers.

- If you enable this policy setting, Server Manager uses the refresh interval specified in the policy setting instead of the "Configure Refresh Interval" setting (in Windows Server 2008 and Windows Server 2008 R2), or the "Refresh the data shown in Server Manager every [x] [minutes/hours/days]" setting (in Windows Server 2012) that is configured in the Server Manager console.

- If you disable this policy setting, Server Manager does not refresh automatically.
- If you do not configure this policy setting, Server Manager uses the refresh interval settings that are specified in the Server Manager console.

> [!NOTE]
> The default refresh interval for Server Manager is two minutes in Windows Server 2008 and Windows Server 2008 R2, or 10 minutes in Windows Server 2012.
<!-- ServerManagerAutoRefreshRate-Description-End -->

<!-- ServerManagerAutoRefreshRate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ServerManagerAutoRefreshRate-Editable-End -->

<!-- ServerManagerAutoRefreshRate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ServerManagerAutoRefreshRate-DFProperties-End -->

<!-- ServerManagerAutoRefreshRate-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ServerManagerAutoRefreshRate |
| Friendly Name | Configure the refresh interval for Server Manager |
| Location | Computer Configuration |
| Path | System > Server Manager |
| Registry Key Name | Software\Policies\Microsoft\Windows\Server\ServerManager |
| Registry Value Name | RefreshIntervalEnabled |
| ADMX File Name | ServerManager.admx |
<!-- ServerManagerAutoRefreshRate-AdmxBacked-End -->

<!-- ServerManagerAutoRefreshRate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ServerManagerAutoRefreshRate-Examples-End -->

<!-- ServerManagerAutoRefreshRate-End -->

<!-- ADMX_ServerManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ServerManager-CspMoreInfo-End -->

<!-- ADMX_ServerManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
