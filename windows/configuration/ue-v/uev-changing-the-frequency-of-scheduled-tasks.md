---
title: Changing the Frequency of UE-V Scheduled Tasks
description: Learn how to create a script that uses the Schtasks.exe command-line options so you can change the frequency of UE-V scheduled tasks.
author: aczechowski
ms.prod: windows-client
ms.collection: tier3
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
ms.technology: itpro-configure
---

# Changing the Frequency of UE-V Scheduled Tasks

**Applies to**
-   Windows 10, version 1607

When the User Experience Virtualization (UE-V) service is enabled, it creates the following scheduled tasks:

-   [Monitor Application Settings](#monitor-application-settings)

-   [Sync Controller Application](#sync-controller-application)

-   [Synchronize Settings at Logoff](#synchronize-settings-at-logoff)

-   [Template Auto Update](#template-auto-update)

> [!NOTE]
> These tasks must remain enabled, because UE-V cannot function without them.

These scheduled tasks aren't configurable with the UE-V tools. Administrators who want to change the scheduled task for these items can create a script that uses the Schtasks.exe command-line options.

For more information about Schtasks.exe, see [Schtasks](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc725744(v=ws.11)).

## UE-V Scheduled Tasks

The following scheduled tasks are included in UE-V with sample scheduled task configuration commands.

### Monitor Application Settings

The **Monitor Application Settings** task is used to synchronize settings for Windows apps. It's runs at sign in but is delayed by 30 seconds to not affect the logon detrimentally. The Monitor Application Status task runs the UevAppMonitor.exe file, which is located in the UE-V Agent installation directory.

|Task name|Default event|
|--- |--- |
|\Microsoft\UE-V\Monitor Application Status|Sign in|

### Sync Controller Application

The **Sync Controller Application** task is used to start the Sync Controller to synchronize settings from the computer to the settings storage location. By default, the task runs every 30 minutes. At that time, local settings are synchronized to the settings storage location, and updated settings on the settings storage location are synchronized to the computer. The Sync Controller application runs the Microsoft.Uev.SyncController.exe, which is located in the UE-V Agent installation directory.

|Task name|Default event|
|--- |--- |
|\Microsoft\UE-V\Sync Controller Application|Sign in, and every 30 minutes thereafter|

For example, the following command configures the agent to synchronize settings every 15 minutes instead of the default 30 minutes.

```console
Schtasks /change /tn “Microsoft\UE-V\Sync Controller Application” /ri 15
```

### Synchronize Settings at Logoff

The **Synchronize Settings at Logoff** task is used to start an application at sign in that controls the synchronization of applications at sign out for UE-V. The Synchronize Settings at Logoff task runs the Microsoft.Uev.SyncController.exe file, which is located in the UE-V Agent installation directory.

|Task name|Default event|
|--- |--- |
|\Microsoft\UE-V\Synchronize Settings at Logoff|Sign in|

### Template Auto Update

The **Template Auto Update** task checks the settings template catalog for new, updated, or removed templates. This task only runs if the SettingsTemplateCatalog is configured. The **Template Auto Update** task runs the ApplySettingsCatalog.exe file, which is located in the UE-V Agent installation directory.

|Task name|Default event|
|--- |--- |
|\Microsoft\UE-V\Template Auto Update|System startup and at 3:30 AM every day, at a random time within a 1-hour window|


**Example:** The following command configures the UE-V service to check the settings template catalog store every hour.

```console
schtasks /change /tn "Microsoft\UE-V\Template Auto Update" /ri 60
```


## UE-V Scheduled Task Details

The following chart provides additional information about scheduled tasks for UE-V 2:

|Task Name (file name)|Default Frequency|Power Toggle|Idle Only|Network Connection|Description|
|--- |--- |--- |--- |--- |--- |
|**Monitor Application Settings** (UevAppMonitor.exe)|Starts 30 seconds after sign in and continues until sign out.|No|Yes|N/A|Synchronizes settings for Windows (AppX) apps.|
|**Sync Controller Application** (Microsoft.Uev.SyncController.exe)|At sign in and every 30 min thereafter.|Yes|Yes|Only if Network is connected|Starts the Sync Controller that synchronizes local settings with the settings storage location.|
|**Synchronize Settings at Logoff** (Microsoft.Uev.SyncController.exe)|Runs at sign in and then waits for sign out to Synchronize settings.|No|Yes|N/A|Start an application at sign in that controls the synchronization of applications at sign out.|
|**Template Auto Update** (ApplySettingsCatalog.exe)|Runs at initial sign in and at 3:30 AM every day thereafter.|Yes|No|N/A|Checks the settings template catalog for new, updated, or removed templates. This task only runs if SettingsTemplateCatalog is configured.|

**Legend**

-   **Power Toggle** – Task Scheduler will optimize power consumption when not connected to AC power. The task might stop running if the computer switches to battery power.

-   **Idle Only** – The task will stop running if the computer ceases to be idle. By default the task won't restart when the computer is idle again. Instead the task will begin again on the next task trigger.

-   **Network Connection** – Tasks marked “Yes” only run if the computer has a network connection available. Tasks marked “N/A” run regardless of network connectivity.

### How to Manage Scheduled Tasks

To find Scheduled Tasks, perform the following steps:

1.  Open “Schedule Tasks” on the user computer.

2.  Navigate to: Task Scheduler -&gt; Task Scheduler Library -&gt; Microsoft -&gt; UE-V

3.  Select the scheduled task you wish to manage and configure in the details pane.

### Additional information

The following additional information applies to UE-V scheduled tasks:

-   All task sequence programs are located in the UE-V Agent installation folder, `%programFiles%\Microsoft User Experience Virtualization\Agent\[architecture]\`, by default.

-   The Sync Controller Application Scheduled task is the crucial component when the UE-V SyncMethod is set to “SyncProvider” (UE-V default configuration). This scheduled task keeps the SettingsSToragePath synchronized with the locally cached versions of the settings package files. If users complain that settings don't synchronize often enough, then you can reduce the scheduled task setting to as little as 1 minute.  You can also increase the 30-min default to a higher amount if necessary.

-   You don't need to disable the Template Auto Update scheduled task if you use another method to keep the clients’ templates in sync (that is, Group Policy or Configuration Manager Baselines). Leaving the SettingsTemplateCatalog property value blank prevents UE-V from checking the settings catalog for custom templates. This scheduled task runs ApplySettingsCatalog.exe and will essentially return immediately.

-   The Monitor Application Settings scheduled task will update Windows app (AppX) settings in real time, based on Windows app program setting triggers built into each app.





## Related topics

[Administering UE-V](uev-administering-uev.md)

[Deploy UE-V for Custom Applications](uev-deploy-uev-for-custom-applications.md)
