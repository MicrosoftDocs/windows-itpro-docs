---
title: Configuring UE-V with Group Policy Objects
description: Configuring UE-V with Group Policy Objects
author: dansimp
ms.assetid: 5c9be706-a05f-4397-9a38-e6b73ebff1e5
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring UE-V with Group Policy Objects


Some Microsoft User Experience Virtualization (UE-V) Group Policy settings can be defined for computers and others can be defined for users. UE-V agent configuration policy settings can be defined for computers or users. For information about how to install UE-V Group Policy ADMX files, see [Installing the UE-V Group Policy ADMX Templates](installing-the-ue-v-group-policy-admx-templates.md).

The following policy settings can be configured for UE-V:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Policy setting name</strong></p></td>
<td align="left"><p><strong>Target</strong></p></td>
<td align="left"><p><strong>Policy setting description</strong></p></td>
<td align="left"><p><strong>Configuration options</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>Use User Experience Virtualization (UE-V)</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This policy setting allows you to enable or disable User Experience Virtualization (UE-V).</p></td>
<td align="left"><p>Enable or disable this policy setting.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Settings storage path</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This policy setting configures where the user settings will be stored.</p></td>
<td align="left"><p>Provide a Universal Naming Convention (UNC) path and variables such as \Server\SettingsShare%username%.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Settings template catalog path</p></td>
<td align="left"><p>Computers Only</p></td>
<td align="left"><p>This policy setting configures where custom settings location templates are stored. This policy setting also configures whether the catalog will be used to replace the default Microsoft templates that are installed with the UE-V agent.</p></td>
<td align="left"><p>Provide a Universal Naming Convention (UNC) path such as \Server\TemplateShare or a folder location on the computer.</p>
<p></p>
<p>Select the check box to replace the default Microsoft templates.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Do not use Offline Files</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This policy setting allows you to configure whether UE-V will use the Windows Offline Files feature. This policy setting also allows you to enable notification to occur when the import of user settings is delayed.</p></td>
<td align="left"><p>To configure the UE-V Agent to not use offline files, enable this setting.</p>
<p></p>
<p>Specify if notifications should be given when settings import is delayed.</p>
<p></p>
<p>Specify the length of time in seconds to wait before the notification appears.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Synchronization timeout</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This policy setting configures the number of milliseconds that the computer waits before a timeout when retrieving user settings from the remote settings location. If the remote storage location is unavailable, the application launch is delayed by this many milliseconds.</p></td>
<td align="left"><p>Specify the preferred synchronization timeout in milliseconds. The default value of 2000 milliseconds.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Package size warning threshold</p></td>
<td align="left"><p>Computers and Users</p></td>
<td align="left"><p>This policy setting allows you to configure the UE-V agent to report when a settings package file size reaches a defined threshold.</p></td>
<td align="left"><p>Specified the preferred threshold for settings package sizes in kilobytes.</p>
<p>By default, the UE-V agent does not have a package file size threshold.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Roaming Application settings</p></td>
<td align="left"><p>Users Only</p></td>
<td align="left"><p>This policy setting configures the roaming of user settings of applications.</p></td>
<td align="left"><p>Select which Windows settings will roam between computers.</p>
<p>By default, the user settings of applications with settings template provided by UE-V are roamed between computers.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Roaming Windows settings</p></td>
<td align="left"><p>Users Only</p></td>
<td align="left"><p>This policy setting configures the roaming of Windows settings.</p></td>
<td align="left"><p>Select which applications will roam between computers.</p>
<p>By default, Windows themes are roamed between computers of the same operating system version. Windows desktop settings and Ease of Access settings are not roamed.</p></td>
</tr>
</tbody>
</table>

 

**To configure computer-targeted policies**

1.  Use the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) on the domain controller computer that manages Group Policy for UE-V computers. Navigate to **Computer configuration**, select **Policies**, select **Administrative Templates**, click **Windows Components**, and then select **Microsoft User Experience Virtualization**.

2.  Select the policy setting to be edited.

**To configure user-targeted policies**

1.  Use the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) tool in Microsoft Desktop Optimization Pack (MDOP) on the domain controller computer that manages Group Policy for UE-V. Navigate to **User configuration**, select **Policies**, select **Administrative Templates**, click **Windows Components**, and then select **Microsoft User Experience Virtualization**.

2.  Select the policy setting edited.

The UE-V agent uses the following order of precedence to determine synchronization.

**Order of precedence for UE-V settings**

1.  User-targeted settings managed by Group Policy - These configuration settings are stored in the registry key by Group Policy under `HKEY_CURRENT_USER\Software\Policies\Microsoft\Uev\Agent\Configuration`.

2.  Computer-targeted settings managed by Group Policy - These configuration settings are stored in the registry key by Group Policy under `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Uev\Agent\Configuration`.

3.  Configuration settings defined by the current user using PowerShell or WMI - These configuration settings are stored by the UE-V agent under this registry location: `HKEY_CURRENT_USER\Software\Microsoft\Uev\Agent\Configuration`.

4.  Configuration settings defined for the computer using PowerShell or WMI. These configuration settings are stored by the UE-V agent under the `HKEY_LOCAL_MACHINE \Software\Microsoft\Uev\Agent\Configuration`.

## Related topics


[Administering UE-V 1.0](administering-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





