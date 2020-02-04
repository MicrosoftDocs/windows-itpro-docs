---
title: Changing the Frequency of UE-V Scheduled Tasks
description: Changing the Frequency of UE-V Scheduled Tasks
author: trudyha
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---


# Changing the Frequency of UE-V Scheduled Tasks

**Applies to**
-   Windows 10, version 1607

When the User Experience Virtualization (UE-V) service is enabled, it creates the following scheduled tasks:

-   [Monitor Application Settings](#monitor-application-settings)

-   [Sync Controller Application](#sync-controller-application)

-   [Synchronize Settings at Logoff](#synchronize-settings-at-logoff)

-   [Template Auto Update](#template-auto-update)

**Note**<br>
These tasks must remain enabled, because UE-V cannot function without them.

These scheduled tasks are not configurable with the UE-V tools. Administrators who want to change the scheduled task for these items can create a script that uses the Schtasks.exe command-line options.

For more information about Schtasks.exe, see [Schtasks](https://technet.microsoft.com/library/cc725744(v=ws.11).aspx).

## UE-V Scheduled Tasks

The following scheduled tasks are included in UE-V with sample scheduled task configuration commands.

### Monitor Application Settings

The **Monitor Application Settings** task is used to synchronize settings for Windows apps. It is runs at logon but is delayed by 30 seconds to not affect the logon detrimentally. The Monitor Application Status task runs the UevAppMonitor.exe file, which is located in the UE-V Agent installation directory.

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

 

**Example:** The following command configures the UE-V service to check the settings template catalog store every hour.

``` syntax
schtasks /change /tn "Microsoft\UE-V\Template Auto Update" /ri 60
```


## UE-V Scheduled Task Details


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

-   All task sequence programs are located in the UE-V Agent installation folder, `%programFiles%\Microsoft User Experience Virtualization\Agent\[architecture]\`, by default.

-   The Sync Controller Application Scheduled task is the crucial component when the UE-V SyncMethod is set to “SyncProvider” (UE-V default configuration). This scheduled task keeps the SettingsSToragePath synchronized with the locally cached versions of the settings package files. If users complain that settings do not synchronize often enough, then you can reduce the scheduled task setting to as little as 1 minute.  You can also increase the 30 min default to a higher amount if necessary.

-   You do not need to disable the Template Auto Update scheduled task if you use another method to keep the clients’ templates in sync (i.e. Group Policy or Configuration Manager Baselines). Leaving the SettingsTemplateCatalog property value blank prevents UE-V from checking the settings catalog for custom templates. This scheduled task runs ApplySettingsCatalog.exe and will essentially return immediately.

-   The Monitor Application Settings scheduled task will update Windows app (AppX) settings in real time, based on Windows app program setting triggers built into each app.





## Related topics

[Administering UE-V](uev-administering-uev.md)

[Deploy UE-V for Custom Applications](uev-deploy-uev-for-custom-applications.md)
