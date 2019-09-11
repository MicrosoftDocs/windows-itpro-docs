---
title: Configuring UE-V 2.x with Group Policy Objects
description: Configuring UE-V 2.x with Group Policy Objects
author: dansimp
ms.assetid: 2bb55834-26ee-4f19-9860-dfdf3c797143
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring UE-V 2.x with Group Policy Objects


Some Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, and 2.1 SP1 Group Policy settings can be defined for computers, and other Group Policy settings can be defined for users. For information about how to install UE-V Group Policy ADMX files, see [Installing the UE-V 2 Group Policy ADMX Templates](https://technet.microsoft.com/library/dn458891.aspx#admx).

The following policy settings can be configured for UE-V.

**Group Policy settings**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Policy setting name</th>
<th align="left">Target</th>
<th align="left">Group Policy setting description</th>
<th align="left">Configuration options</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Contact IT Link Text</p></td>
<td align="left"><p>Computers Only</p></td>
<td align="left"><p>This Group Policy setting specifies the text of the Contact IT URL hyperlink in the Company Settings Center.</p></td>
<td align="left"><p>If you enable this Group Policy setting, the Company Settings Center displays the specified text in the link to the Contact IT URL.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Contact IT URL</p></td>
<td align="left"><p>Computers Only</p></td>
<td align="left"><p>This Group Policy setting specifies the URL for the Contact IT link in the Company Settings Center.</p></td>
<td align="left"><p>If you enable this setting, the Company Settings Center Contact IT text links to the specified URL. The link can be of any standard protocol, such as HTTP or mailto.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Do not use the sync provider</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>By using this Group Policy setting, you can configure whether UE-V uses the sync provider feature. This policy setting also lets you enable notification to appear when the import of user settings is delayed.</p></td>
<td align="left"><p>Enable this setting to configure the UE-V Agent not to use the sync provider.</p></td>
</tr>
<tr class="even">
<td align="left"><p>First Use Notification</p></td>
<td align="left"><p>Computers Only</p></td>
<td align="left"><p>This Group Policy setting enables a notification in the notification area that appears when the UE-V</p>
<p>agent runs for the first time.</p></td>
<td align="left"><p>The default is enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Roam Windows settings</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting configures the synchronization of Windows settings.</p></td>
<td align="left"><p>Select which Windows settings synchronize between computers.</p>
<p>By default, Windows themes, desktop settings, and Ease of Access settings synchronize settings between computers of the same operating system version.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Settings package size warning threshold</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting lets you configure the UE-V Agent to report when a settings package file size reaches a defined threshold.</p></td>
<td align="left"><p>Specify the preferred threshold for settings package sizes in kilobytes (KB).</p>
<p>By default, the UE-V Agent does not have a package file size threshold.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Settings storage path</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting configures where the user settings are to be stored.</p></td>
<td align="left"><p>Enter a Universal Naming Convention (UNC) path and variables such as \Server\SettingsShare%username%.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Settings template catalog path</p></td>
<td align="left"><p>Computers Only</p></td>
<td align="left"><p>This Group Policy setting configures where custom settings location templates are stored. This policy setting also configures whether the catalog is to be used to replace the default Microsoft templates that are installed with the UE-V Agent.</p></td>
<td align="left"><p>Enter a Universal Naming Convention (UNC) path such as \Server\TemplateShare or a folder location on the computer.</p>
<p>Select the check box to replace the default Microsoft templates.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Sync settings over metered connections</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting defines whether UE-V synchronizes settings over metered connections.</p></td>
<td align="left"><p>By default, the UE-V Agent does not synchronize settings over a metered connection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Sync settings over metered connections even when roaming</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting defines whether UE-V synchronizes settings over metered connections outside of the home provider network, for example, when the data connection is in roaming mode.</p></td>
<td align="left"><p>By default, UE-V does not synchronize settings over a metered connection when it is in roaming mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Synchronization timeout</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting configures the number of milliseconds that the computer waits before a time-out when it retrieves user settings from the remote settings location. If the remote storage location is unavailable, and the user does not use the sync provider, the application start is delayed by this many milliseconds.</p></td>
<td align="left"><p>Specify the preferred synchronization time-out in milliseconds. The default value is 2000 milliseconds.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Tray Icon</p></td>
<td align="left"><p>Computers Only</p></td>
<td align="left"><p>This Group Policy setting enables the User Experience Virtualization (UE-V) tray icon.</p></td>
<td align="left"><p>The default is enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Use User Experience Virtualization (UE-V)</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting lets you enable or disable User Experience Virtualization (UE-V).</p></td>
<td align="left"><p>Enable or disable this Group Policy setting.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
In addition, Group Policy settings are available for many desktop applications and Windows apps. You can use these settings to enable or disable settings synchronization for specific applications.

 

**Windows App Group Policy settings**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Policy setting name</th>
<th align="left">Target</th>
<th align="left">Group Policy setting description</th>
<th align="left">Configuration options</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Do not synchronize Windows Apps</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This Group Policy setting defines whether the UE-V Agent synchronizes settings for Windows apps.</p></td>
<td align="left"><p>The default is to synchronize Windows apps.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows App List</p></td>
<td align="left"><p>Computer and User</p></td>
<td align="left"><p>This setting lists the family package names of the Windows apps and states expressly whether UE-V synchronizes that app’s settings.</p></td>
<td align="left"><p>You can use this setting to specify that settings of an app are never synchronized by UE-V, even if the settings of all other Windows apps are synchronized.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Sync Unlisted Windows Apps</p></td>
<td align="left"><p>Computer and User</p></td>
<td align="left"><p>This Group Policy setting defines the default settings sync behavior of the UE-V Agent for Windows apps that are not explicitly listed in the Windows app list.</p></td>
<td align="left"><p>By default, the UE-V Agent only synchronizes settings of those Windows apps that are included in the Windows app list.</p></td>
</tr>
</tbody>
</table>

 

For more information about synchronizing Windows apps, see [Windows App List](https://technet.microsoft.com/library/dn458925.aspx#win8applist).

**To configure computer-targeted Group Policy settings**

1.  Use the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) on the computer that acts as a domain controller to manage Group Policy settings for UE-V computers. Navigate to **Computer configuration**, select **Policies**, select **Administrative Templates**, click **Windows Components**, and then select **Microsoft User Experience Virtualization**.

2.  Select the Group Policy setting to be edited.

**To configure user-targeted Group Policy settings**

1.  Use the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) tool in Microsoft Desktop Optimization Pack (MDOP) on the domain controller computer to manage Group Policy settings for UE-V. Navigate to **User configuration**, select **Policies**, select **Administrative Templates**, click **Windows Components**, and then select **Microsoft User Experience Virtualization**.

2.  Select the edited Group Policy setting.

The UE-V Agent uses the following order of precedence to determine synchronization.

**Order of precedence for UE-V settings**

1.  User-targeted settings that are managed by Group Policy settings - These configuration settings are stored in the registry key by Group Policy under `HKEY_CURRENT_USER\Software\Policies\Microsoft\Uev\Agent\Configuration`.

2.  Computer-targeted settings that are managed by Group Policy settings - These configuration settings are stored in the registry key by Group Policy under `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Uev\Agent\Configuration`.

3.  Configuration settings that are defined by the current user by using Windows PowerShell or Windows management Instrumentation (WMI) - These configuration settings are stored by the UE-V Agent under this registry location: `HKEY_CURRENT_USER\Software\Microsoft\Uev\Agent\Configuration`.

4.  Configuration settings that are defined for the computer by using Windows PowerShell or WMI. These configuration settings are stored by the UE-V Agent under this registry location: `HKEY_LOCAL_MACHINE\Software\Microsoft\Uev\Agent\Configuration`.

    **Got a suggestion for UE-V**? Add or vote on suggestions [here](http://uev.uservoice.com/forums/280428-microsoft-user-experience-virtualization). **Got a UE-V issue**? Use the [UE-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopuev).

## Related topics


[Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

[Manage Configurations for UE-V 2.x](manage-configurations-for-ue-v-2x-new-uevv2.md)

 

 





