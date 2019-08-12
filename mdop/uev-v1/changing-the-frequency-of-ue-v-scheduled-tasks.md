---
title: Changing the Frequency of UE-V Scheduled Tasks
description: Changing the Frequency of UE-V Scheduled Tasks
author: levinec
ms.assetid: 33c2674e-0df4-4717-9c3d-820a90b16e19
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Changing the Frequency of UE-V Scheduled Tasks


The Microsoft User Experience Virtualization (UE-V) Agent installer, AgentSetup.exe, creates two scheduled tasks during the UE-V Agent installation. The two tasks are the **Template Auto Update** task and the **Setting Storage Location Status** task. These scheduled tasks are not configurable with the UE-V tools. Administrators who wish to change the scheduled task for these items can create a script that uses the Schtasks.exe command-line options.

For more information about Schtasks.exe, see [How to use Schtasks,exe to Schedule Tasks in Windows Server 2003](https://go.microsoft.com/fwlink/?LinkID=264854).

## Template Auto-Update


The **Template Auto Update** task checks the settings template catalog for new, updated, or removed templates. This task only runs if the SettingsTemplateCatalog is configured. The **Template Auto Update** task runs the ApplySettingsCatalog.exe file, which is located in the UE-V Agent install directory.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task name</th>
<th align="left">Default trigger</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>\Microsoft\UE-V\Template Auto Update</p></td>
<td align="left"><p>3:30 AM every day</p></td>
</tr>
</tbody>
</table>

 

**Example:** The following command configures the agent to check the settings template catalog store every hour.

``` syntax
schtasks /change /tn "Microsoft\UE-V\Template Auto Update" /ri 60
```

## Settings Storage Location Status


The **Setting Storage Location Status** task performs the following actions:

1.  Checks to make sure the UE-V folders are still pinned or registered with the offline files feature.

2.  Checks whether the settings storage location is offline or online.

3.  Forces a synchronization on the specified interval instead of the default interval for offline files.

4.  Synchronizes any settings packages that are configured to be pre-fetched.

5.  Checks if the Active Directory home directory path has changed.

6.  Writes the current settings storage configuration under the following location

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Task name</th>
    <th align="left">Default trigger</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>\Microsoft\UE-V\Settings Storage Location Status</p></td>
    <td align="left"><p>At logon of any user – After triggered, repeat every 30 minutes indefinitely.</p></td>
    </tr>
    </tbody>
    </table>

     

**Example:** The following command configures the agent to run the action above every hour.

``` syntax
schtasks /change /tn "\Microsoft\UE-V\Settings Storage Location Status" /ri 60
```

## Related topics


[Administering UE-V 1.0](administering-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





