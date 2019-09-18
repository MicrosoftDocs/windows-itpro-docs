---
title: Managing MED-V Workspace Configuration Settings
description: Managing MED-V Workspace Configuration Settings
author: dansimp
ms.assetid: 517d04de-c31f-4b50-b2b3-5f8c312ed37b
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Managing MED-V Workspace Configuration Settings


Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 stores its configuration settings in the registry. The information we include here about the registry may help you better manage your MED-V services.

MED-V uses the following search path when looking for the resultant settings values:

MED-V first looks in the machine policy.

If the value is not found, MED-V looks in the user policy.

If the value is not found, MED-V looks in the HKEY\_LOCAL\_MACHINE\\System hive.

If the value is not found, MED-V looks in the HKEY\_CURRENT USER registry hive.

If the value is still not found, MED-V uses the default.

A general best practice is to set the value in the HKEY\_LOCAL\_MACHINE\\System hive or in the machine policy. But if you want the end user to be able to configure a particular setting, then you should leave it out.

**Note**  
Before you deploy your MED-V workspaces, you can use a script editor to change the Windows PowerShell script (.ps1 file) that the MED-V workspace packager created. For more information, see [Configuring Advanced Settings by Using Windows PowerShell](configuring-advanced-settings-by-using-windows-powershell.md).

After you have deployed your MED-V workspaces, you can change certain MED-V configuration settings by editing the registry entries.



This section lists all the configurable MED-V registry keys and explains their uses.

## Diagnostics Key


The following table provides information about the registry values associated with the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Medv\\v2\\Diagnostics key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data/Default </th>
<th align="left">Description </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>EventLogLevel </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=3</p></td>
<td align="left"><p>The type of information that is logged in the event log. Levels include the following: 0 (None), 1 (Error), 2 (Warning), 3 (Information), 4 (Debug).</p></td>
</tr>
</tbody>
</table>



## Fts Key


The following table provides information about the registry values associated with the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Medv\\v2\\Fts key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Type</th>
<th align="left">Data/Default</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>AddUserToAdminGroupEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether first time setup automatically adds the end user to the administrator&#39;s group. 0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: First time setup does not automatically add the end user to the administrator&#39;s group.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: First time setup automatically adds the end user to the administrator&#39;s group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ComputerNameMask </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p>MEDV* </p></td>
<td align="left"><p>The computer name mask that is used to create the guest virtual machine&#39;s computer name.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The mask can contain a %username% tag to insert the username as part of the computer name. Likewise, the %hostname% tag inserts the name of the host computer.</p>
<p>Every &quot;#&quot; character in the mask is replaced by a random digit. An asterisk (*) character at the end of the mask is replaced by random alphanumeric characters.</p>
<p>A specific number of characters from %hostname% and %username% can be captured by using square brackets. For example, &quot;%username%[3]&quot; would use the first three characters of the username.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DeleteVMStateTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=90</p></td>
<td align="left"><p>The time-out value, in seconds, when first time setup tries to delete the virtual machine. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DetachVfdTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=120</p></td>
<td align="left"><p>The time-out value, in seconds, when first time setup tries to detach the virtual floppy disk from the virtual machine. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DialogUrl </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Customizable URL that links to internal webpage and is displayed by first time setup dialog messages. </p></td>
</tr>
<tr class="odd">
<td align="left"><p>ExplorerTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=900</p></td>
<td align="left"><p>The time-out value, in seconds, that first time setup waits for Windows Explorer. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="even">
<td align="left"><p>FailureDialogMsg </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p>Message is found in resource file </p></td>
<td align="left"><p>Customizable message that is displayed to the end user when first time setup cannot be completed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>GiveUserGroupRightsMaxRetryCount </p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=3</p></td>
<td align="left"><p>The maximum number of times that MED-V tries to give an end user group rights. Exceeding the specified retry value without being able to successfully give an end user group rights most likely causes a virtual machine preparation failure that is then subject to the MaxRetryCount value. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="even">
<td align="left"><p>GiveUserGroupRightsTimeout </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=300</p></td>
<td align="left"><p>The time-out value, in seconds, when giving a user group rights. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>LogFilePaths </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p></p></td>
<td align="left"><p>A list of the log file paths that MED-V collects during first time setup. </p></td>
</tr>
<tr class="even">
<td align="left"><p>MaxPostponeTime </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=120</p></td>
<td align="left"><p>The maximum number of hours that first time setup can be postponed by the end user. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MaxRetryCount </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=3</p></td>
<td align="left"><p>The maximum number of times that MED-V tries to prepare a virtual machine if each attempt ends in a failure other than a software error. When virtual machine preparation fails and the number of first time setup retries is exceeded, then MED-V informs the end user about the failure and does not give the option to retry. The count is re-set every time that MED-V is started. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Mode </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p>Default=Unattended</p></td>
<td align="left"><p>Configures how first time setup interacts with the user. Possible values are as follows:</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>Attended.</strong> The end user must enter information during first time setup.</p>
<div class="alert">
<strong>Note</strong><br/><p>If you created the Sysprep.inf file so that Mini-Setup requires user input to complete, then you must select <strong>Attended</strong> mode or problems might occur during first time setup.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>Unattended</strong>. The virtual machine is not shown to the end user during first time setup, but the end user is prompted before first time setup starts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>Silent</strong>. The virtual machine is not shown to the end user at all during first time setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>NonInteractiveRetryTimeoutInc </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=15</p></td>
<td align="left"><p>The time-out value, in minutes, that first time setup must be completed in first time setup interactive mode when re-attempting setup. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>NonInteractiveTimeout </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=45</p></td>
<td align="left"><p>The time-out value, in minutes, that first time setup must be completed in first time setup interactive mode. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="even">
<td align="left"><p>PostponeUtcDateTimeLimit </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p></p></td>
<td align="left"><p>The date and time, in UTC DateTime format, that first time setup can be postponed. Enter in the format &quot;yyyy-MM-dd hh:mm&quot; with hours specified by using the 24-hour clock standard.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RetryDialogMsg </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p>Message is found in resource file </p></td>
<td align="left"><p>Customizable message that is displayed to the end user when first time setup must re-attempt setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SetComputerNameEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether the ComputerName entry under the [UserData] section of the Sysprep.inf file in the guest should be updated according to the specified ComputerNameMask.   0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The ComputerName entry in the Sysprep.inf file is not updated according to the ComputerNameMask.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The ComputerName entry in the Sysprep.inf file is updated according to the ComputerNameMask.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SetJoinDomainEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether the JoinDomain setting under the [Identification] section of the Sysprep.inf file in the guest should be updated to match the settings on the host.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The JoinDomain setting in the Sysprep.inf file is not updated to match the settings on the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The JoinDomain setting in the Sysprep.inf file is updated to match the settings on the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SetMachineObjectOUEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether the MachineObjectOU setting under the [Identification] section of the Sysprep.inf file in the guest is updated to match the host.  0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The MachineObjectOU setting in the Sysprep.inf file is not updated to match the settings on the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The MachineObjectOU setting in the Sysprep.inf file is updated to match the settings on the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SetRegionalSettingsEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether the settings under the [RegionalSettings] section of the Sysprep.inf file in the guest are updated to match the host.  0 = false; 1 = true.</p>
<div class="alert">
<strong>Note</strong><br/><p>By default, the setting for TimeZone in the guest is always synchronized with the TimeZone setting in the host.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The settings under the [RegionalSettings] section of the Sysprep.inf file in the guest are not updated to match the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The settings under the [RegionalSettings] section of the Sysprep.inf file in the guest are updated to match the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SetUserDataEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether the FullName and the OrgName settings under the [UserData] section of the Sysprep.inf file in the guest are updated to match the settings on the host.  0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The FullName and OrgName settings in the Sysprep.inf file are not updated to match the settings on the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The FullName and OrgName settings in the Sysprep.inf file are updated to match the settings on the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>StartDialogMsg </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p>Message is found in resource file </p></td>
<td align="left"><p>Customizable message that is displayed to the end user when first time setup is ready to start. </p></td>
</tr>
<tr class="even">
<td align="left"><p>TaskCancelTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=30</p></td>
<td align="left"><p>The time-out value, in seconds, that first time setup waits for a response from the virtual machine for a Cancel operation. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>TaskVMTurnOffTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=60</p></td>
<td align="left"><p>The time-out value, in seconds, that first time setup waits for the virtual machine to shut down. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="even">
<td align="left"><p>UpgradeTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=600</p></td>
<td align="left"><p>The time, in seconds, before an attempted upgrade of the MED-V Guest Agent software times out. Range = 0 to 2147483647.</p></td>
</tr>
</tbody>
</table>



## UserExperience Key


The following table provides information about the registry values associated with the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Medv\\v2\\UserExperience key and the HKEY\_CURRENT\_USER\\Software\\Microsoft\\Medv\\v2\\UserExperience key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Type</th>
<th align="left">Data/Default</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>AppPublishingEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether application publication from the guest to the host is enabled.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Disables application publishing from the guest to the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Enables application publishing from the guest to the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>AudioSharingEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the sharing of the audio I/O device between the guest and the host is enabled.  0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Disables the sharing of the audio I/O device between the guest and the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Enables the sharing of the audio I/O device between the guest and the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ClipboardSharingEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the sharing of the Clipboard between the guest and the host is enabled.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Disables the sharing of the Clipboard between the guest and the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Enables the sharing of the Clipboard between the guest and the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DialogTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=300</p></td>
<td align="left"><p>The time, in seconds, before the first time setup Start Dialog times out. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>HideVmTimeout</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=30</p></td>
<td align="left"><p>The time-out value, in minutes, that the full-screen virtual machine window is hidden from the end user during a long logon attempt.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LogonStartEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the guest should be started when the end user logs on to the desktop or when the first guest application is started.  0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The guest is started when the first guest application is started.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The guest is started when the end user logs on to the desktop.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PrinterSharingEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the sharing of printers between the guest and the host is enabled.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Disables the sharing of printers between the guest and the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Enables the sharing of printers between the guest and the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>RebootAbsoluteDelayTimeout </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1440</p></td>
<td align="left"><p>The time-out value, in minutes, that first time setup waits for a restart. Range = 0 to 2147483647.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RedirectUrls </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p>Specified URL list</p></td>
<td align="left"><p>Specifies a list of URLs to be redirected from the host to the guest. </p></td>
</tr>
<tr class="even">
<td align="left"><p>SmartCardLogonEnabled</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether smart cards can be used to authenticate users to MED-V. 0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Does not let Smart Cards authenticate end users to MED-V.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Lets Smart Cards authenticate end users to MED-V.</p>
<div class="alert">
<strong>Important</strong><br/><p>If SmartCardLogonEnabled and CredentialCacheEnabled are both enabled, SmartCardLogonEnabled overrides CredentialCacheEnabled.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>SmartCardSharingEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the sharing of Smart Cards between the guest and the host is enabled.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Disables the sharing of Smart Cards between the guest and the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Enables the sharing of Smart Cards between the guest and the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>USBDeviceSharingEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the sharing of USB devices between the guest and the host is enabled.  0 = false; 1 = true.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Disables the sharing of USB devices between the guest and the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Enables the sharing of USB devices between the guest and the host.</p></td>
</tr>
</tbody>
</table>



## VM Key


The following table provides information about the registry values associated with the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Medv\\v2\\VM key and the HKEY\_CURRENT\_USER\\Software\\Microsoft\\Medv\\v2\\VM key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Type</th>
<th align="left">Data/Default</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>CloseAction </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p>Default=HIBERNATE</p></td>
<td align="left"><p>The action that the virtual machine performs after the last application that is running is closed. This setting is ignored if the LogonStartEnabled value is enabled. Possible options are as follows:</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>HIBERNATE</strong> . This option releases all physical resources that the virtual machine is using, such as memory and CPU, and saves the state of all running applications and operations.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>SHUTDOWN</strong> . This option shuts down the guest operating system safely and then releases all physical resources that the virtual machine is using, such as memory and CPU.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>TURN-OFF</strong>. This option can cause data loss because it is the same as turning off the power button or pulling out the power cord on a physical computer. Use this option only if you cannot use one of the other two options.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>GuestMemFromHostMem </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p>378, 512, 1024, 1536, 2048 </p></td>
<td align="left"><p>A list of memory (MB) values for the guest. This value is used to determine how much RAM is available to the guest. Combined with HostMemToGuestMem, a lookup table is created to determine how much RAM to allocate on the guest virtual machine. Possible values can be from 128 to 3712.</p></td>
</tr>
<tr class="even">
<td align="left"><p>GuestUpdateDuration </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=240</p></td>
<td align="left"><p>The number of minutes that MED-V should keep the guest awake for automatic updating, starting at the time specified in the GuestUpdateTime value. Range = 0 to 1440. Setting this value to zero (0) disables the guest patching functionality.</p>
<p>For more information about guest patching for automatic updating, see <a href="managing-automatic-updates-for-med-v-workspaces.md" data-raw-source="[Managing Automatic Updates for MED-V Workspaces](managing-automatic-updates-for-med-v-workspaces.md)">Managing Automatic Updates for MED-V Workspaces</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>GuestUpdateTime </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p>Default=00:00</p></td>
<td align="left"><p>The hour and minute each day when MED-V should wake up the guest for automatic updating, by using the 24-hour clock standard. Specify the time in the format HH:MM  </p>
<p>For more information about guest patching for automatic updating, see <a href="managing-automatic-updates-for-med-v-workspaces.md" data-raw-source="[Managing Automatic Updates for MED-V Workspaces](managing-automatic-updates-for-med-v-workspaces.md)">Managing Automatic Updates for MED-V Workspaces</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>HostMemToGuestMem </p></td>
<td align="left"><p>MULTI_SZ</p></td>
<td align="left"><p>1024, 2048, 4096, 8192, 16384 </p></td>
<td align="left"><p>A list of memory (MB) values for the guest, determined by the RAM available on the host. Combined with GuestMemFromHostMem, a lookup table is created to determine how much RAM to allocate on the guest virtual machine. Possible values can be from 1024 to 16384.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>HostMemToGuestMemCalcEnabled</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=1</p></td>
<td align="left"><p>Configures whether the memory allocated for the guest is calculated from the memory present on the host.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: The memory allocated for the guest is not calculated from the memory present on the host.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: The memory allocated for the guest is calculated from the memory present on the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Memory </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=512</p></td>
<td align="left"><p>The RAM (MB) that should be allocated for the guest virtual machine. This setting is ignored if the HostMemToGuestMemEnabled setting is enabled. Range=128 to 2048.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MultiUserEnabled </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0</p></td>
<td align="left"><p>Configures whether multiple users share the same MED-V workspace.  0 = false; 1 = true.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>0 = false: Multiple users do not share the same MED-V workspace.</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>1 = true: Multiple users share the same MED-V workspace.</p></td>
</tr>
<tr class="even">
<td align="left"><p>NetworkingMode </p></td>
<td align="left"><p>SZ</p></td>
<td align="left"><p>Default=NAT</p></td>
<td align="left"><p>The kind of network connection used on the guest. Possible values are as follows:</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>Bridged</strong>. MED-V has its own network address, typically obtained through DHCP.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p><strong>NAT</strong>. MED-V uses Network Address Translation (NAT) to share the host&#39;s IP for outgoing traffic.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>TaskTimeout </p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=600</p></td>
<td align="left"><p>A general time-out value, in seconds, that MED-V waits for a task to be completed, such as restarting and shutting down. Range = 0 to 2147483647.</p></td>
</tr>
</tbody>
</table>



## Guest Registry Settings


This section lists the configurable MED-V guest registry keys and explains their uses.

### v2

The following table provides information about the guest registry value associated with the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Medv\\v2\\ key.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name </th>
<th align="left">Type </th>
<th align="left">Data/Default </th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>EnableGPWorkarounds</p></td>
<td align="left"><p>DWORD </p></td>
<td align="left"><p>Default=1 </p></td>
<td align="left"><p>Configures how MED-V handles the keys BufferPolicyReads and GroupPolicyMinTransferRate.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>By default, MED-V sets these keys as follows:</p>
<p>BufferPolicyReads=1 and GroupPolicyMinTransferRate=0.</p>
<p>Create the EnableGPWorkarounds  key, if it is necessary, and set the key to zero if you do not want MED-V to change the default settings of BufferPolicyReads and GroupPolicyMinTransferRate.</p>
<div class="alert">
<strong>Note</strong><br/><p>If your MED-V workspace is running in NAT mode, EnableGPWorkarounds affects the registry keys BufferPolicyReads and GroupPolicyMinTransferRate. If your MED-V workspace is running in BRIDGED mode, EnableGPWorkarounds only affects the registry key BufferPolicyReads.</p>
</div>
<div>

</div>
<p>1=true: MED-V sets the keys BufferPolicyReads=1 and GroupPolicyMinTransferRate=0 (if running in NAT mode) or just BufferPolicyReads=1 (if running in BRIDGED mode).</p>
<p>0=false: MED-V does not make any changes to the keys BufferPolicyReads and GroupPolicyMinTransferRate.</p></td>
</tr>
</tbody>
</table>



## Related topics


[Manage MED-V Workspace Applications](manage-med-v-workspace-applications.md)

[Manage MED-V URL Redirection](manage-med-v-url-redirection.md)

[Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md)









