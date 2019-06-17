---
title: Changing the Frequency of UE-V 2.x Scheduled Tasks
description: Changing the Frequency of UE-V 2.x Scheduled Tasks
author: levinec
ms.assetid: ee486570-c6cf-4fd9-ba48-0059ba877c10
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/29/2016
---


# Changing the Frequency of UE-V 2.x Scheduled Tasks


The Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, or 2.1 SP1 Agent installer, AgentSetup.exe, creates the following scheduled tasks during the UE-V Agent installation:

-   **Monitor Application Settings**

-   **Sync Controller Application**

-   **Synchronize Settings at Logoff**

-   **Template Auto Update**

-   **Collect CEIP data**

-   **Upload CEIP Data**

**Note**  
With the exception of Collect CEIP Data, these tasks must remain enabled as UE-V cannot function without them.

 

These scheduled tasks are not configurable with the UE-V tools. Administrators who want to change the scheduled task for these items can create a script that uses the Schtasks.exe command-line options.

For more information about Schtasks.exe, see [How to use Schtasks,exe to Schedule Tasks in Windows Server 2003](https://go.microsoft.com/fwlink/?LinkID=264854).

For more information about

## UE-V Scheduled Tasks


The following scheduled tasks are included in UE-V 2 with sample scheduled task configuration commands.

### Collect CEIP Data

If upon installation the user or administrator choses to participate in the Customer Experience Improvement Program (CEIP), UE-V collects data to help improve the product in future releases. This scheduled task only runs at logon. The **Collect CEIP Data** task runs the UevSqmSession.exe, which is located in the UE-V Agent installation directory.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default event</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Collect CEIP data</p></td>
<td align="left"><p>Logon</p></td>
</tr>
</tbody>
</table>

 

### Monitor Application Settings

The **Monitor Application Settings** task is used to synchronize settings for Windows apps. It is run at logon but is delayed by 30 seconds to not affect the logon detrimentally. The Monitor Application Status task runs the UevAppMonitor.exe file, which is located in the UE-V Agent installation directory.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default event</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Monitor Application Status</p></td>
<td align="left"><p>Logon</p></td>
</tr>
</tbody>
</table>

 

### Sync Controller Application

The **Sync Controller Application** task is used to start the Sync Controller to synchronize settings from the computer to the settings storage location. By default, the task runs every 30 minutes. At that time, local settings are synchronized to the settings storage location, and updated settings on the settings storage location are synchronized to the computer. The Sync Controller application runs the Microsoft.Uev.SyncController.exe, which is located in the UE-V Agent installation directory.
**Note:** As per the **Monitor Application Settings** task, this task is run at logon but is delayed by 30 seconds to not affect the logon detrimentally.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default event</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Sync Controller Application</p></td>
<td align="left"><p>Logon, and every 30 minutes thereafter</p></td>
</tr>
</tbody>
</table>

 

For example, the following command configures the agent to synchronize settings every 15 minutes instead of the default 30 minutes.

``` syntax
Schtasks /change /tn “Microsoft\UE-V\Sync Controller Application” /ri 15
```

### Synchronize Settings at Logoff

The **Synchronize Settings at Logoff** task is used to start an application at logon that controls the synchronization of applications at logoff for UE-V. The Synchronize Settings at Logoff task runs the Microsoft.Uev.SyncController.exe file, which is located in the UE-V Agent installation directory.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default event</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Synchronize Settings at Logoff</p></td>
<td align="left"><p>Logon</p></td>
</tr>
</tbody>
</table>

 

### Template Auto Update

The **Template Auto Update** task checks the settings template catalog for new, updated, or removed templates. This task only runs if the SettingsTemplateCatalog is configured. The **Template Auto Update** task runs the ApplySettingsCatalog.exe file, which is located in the UE-V Agent installation directory.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default event</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Template Auto Update</p></td>
<td align="left"><p>System startup and at 3:30 AM every day, at a random time within a 1-hour window</p></td>
</tr>
</tbody>
</table>

 

**Example:** The following command configures the UE-V Agent to check the settings template catalog store every hour.

``` syntax
schtasks /change /tn "Microsoft\UE-V\Template Auto Update" /ri 60
```

### Upload CEIP Data

The **Upload CEIP Data** task runs during the installation if the user or the administrator chose to participate in the Customer Experience Improvement Program (CEIP). This task uploads the data to the CEIP servers where the data is used to help improve the product for future releases of UE-V. This scheduled task runs at logon and every 4 hours afterwards. The **Upload CEIP data** task runs the UevSqmUploader.exe file, which is located in the UE-V Agent installation directory.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default event</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Upload CEIP data</p></td>
<td align="left"><p>At logon and every 4 hours</p></td>
</tr>
</tbody>
</table>

 

## UE-V 2 Scheduled Task Details


The following chart provides additional information about scheduled tasks for UE-V 2:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Task Name</strong> (file name)</p></td>
<td align="left"><p><strong>Default Frequency</strong></p></td>
<td align="left"><p><strong>Power Toggle</strong></p></td>
<td align="left"><p><strong>Idle Only</strong></p></td>
<td align="left"><p><strong>Network Connection</strong></p></td>
<td align="left"><p><strong>Description</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Monitor Application Settings</strong> (UevAppMonitor.exe)</p></td>
<td align="left"><p>Starts 30 seconds after logon and continues until logoff.</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>Synchronizes settings for Windows (AppX) apps.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Sync Controller Application</strong> (Microsoft.Uev.SyncController.exe)</p></td>
<td align="left"><p>At logon and every 30 min thereafter.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Only if Network is connected</p></td>
<td align="left"><p>Starts the Sync Controller which synchronizes local settings with the settings storage location.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Synchronize Settings at Logoff</strong> (Microsoft.Uev.SyncController.exe)</p></td>
<td align="left"><p>Runs at logon and then waits for Logoff to Synchronize settings.</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>Start an application at logon that controls the synchronization of applications at logoff.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Template Auto Update</strong> (ApplySettingsCatalog.exe)</p></td>
<td align="left"><p>Runs at initial logon and at 3:30 AM every day thereafter.</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>Checks the settings template catalog for new, updated, or removed templates. This task only runs if SettingsTemplateCatalog is configured.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Collect CEIP data</strong> (UevSqmSession.exe)</p></td>
<td align="left"><p>At logon launches service</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>If the user or administrator opts in to the Customer Experience Improvement Program (CEIP), this task collects data that helps improve UE-V future releases.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Upload CEIP Data</strong> (UevSqmUploader.exe)</p></td>
<td align="left"><p>Runs at logon and at 4:00 AM every day thereafter.</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Only if Network is connected</p></td>
<td align="left"><p>If the user or administrator opts in to the Customer Experience Improvement Program (CEIP), this task uploads the data to the CEIP servers.</p></td>
</tr>
</tbody>
</table>

 

**Legend**

-   **Power Toggle** – Task Scheduler will optimize power consumption when not connected to AC power. The task might stop running if the computer switches to battery power.

-   **Idle Only** – The task will stop running if the computer ceases to be idle. By default the task will not restart when the computer is idle again. Instead the task will begin again on the next task trigger.

-   **Network Connection** – Tasks marked “Yes” only run if the computer has a network connection available. Tasks marked “N/A” run regardless of network connectivity.

### How to Manage Scheduled Tasks

To find Scheduled Tasks, perform the following:

1.  Open “Schedule Tasks” on the user computer.

2.  Navigate to: Task Scheduler -&gt; Task Scheduler Library -&gt; Microsoft -&gt; UE-V

3.  Select the scheduled task you wish to manage and configure in the details pane.

### Additional information

The following additional information applies to UE-V scheduled tasks:

-   ll task sequence programs are located in the UE-V Agent installation folder, `%programFiles%\Microsoft User Experience Virtualization\Agent\[architecture]\`, by default.

-   The Sync Controller Application Scheduled task is the crucial component when the UE-V SyncMethod is set to “SyncProvider” (UE-V 2 default configuration). This scheduled task keeps the SettingsSToragePath synchronized with the locally cached versions of the settings package files. If users complain that settings do not synchronize often enough, then you can reduce the scheduled task setting to as little as 1 minute.  You can also increase the 30 min default to a higher amount if necessary. If users complain that settings do not synchronize fast enough on logon, then you can remove the delay setting for the scheduled task. (You can find the delay setting in the **Edit Trigger** dialogue box)

-   You do not need to disable the Template Auto Update scheduled task if you use another method to keep the clients’ templates in sync (i.e. Group Policy or Configuration Manager Baselines). Leaving the SettingsTemplateCatalog property value blank prevents UE-V from checking the settings catalog for custom templates. This scheduled task runs ApplySettingsCatalog.exe and will essentially return immediately.

-   The Monitor Application Settings scheduled task will update Windows app (AppX) settings in real time, based on Windows app program setting triggers built into each app.






## Related topics


[Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

[Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md#deploycatalogue)

 

 





