---
title: Manage Administrative Backup and Restore in UE-V 2.x
description: Manage Administrative Backup and Restore in UE-V 2.x
author: dansimp
ms.assetid: 2eb5ae75-65e5-4afc-adb6-4e83cf4364ae
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Manage Administrative Backup and Restore in UE-V 2.x


As an administrator of Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, or 2.1 SP1, you can restore application and Windows settings to their original state. And new in UE-V 2.1, you can also restore additional settings when a user adopts a new device.

## Restore Settings in UE-V 2.1 or UE-V 2.1 SP1 when a User Adopts a New Device


To restore settings when a user adopts a new device, you can put a settings location template in **backup** or **roam (default)** profile using the Set-UevTemplateProfile PowerShell cmdlet. This lets computer settings sync to the new computer, in addition to user settings. Templates assigned to the backup profile are backed up for that device and configured on a per-device basis. To backup settings for a template, use the following cmdlet in Windows PowerShell:

``` syntax
Set-UevTemplateProfile -ID <TemplateID> -Profile <backup>
```

-   &lt;TemplateID&gt; is the UE-V Template ID

-   &lt;backup&gt; can either be Backup or Roaming

When replacing a user’s device UE-V automatically restores settings if the user’s domain, username, and device name all match. All synchronized and any backup data is restored on the device automatically.

You can also use the new PowerShell cmdlet, Restore-UevBackup, to restore settings from a different device. To clone the settings packages for the new device, use the following cmdlet in Windows PowerShell:

``` syntax
Restore-UevBackup –Machine <MachineName>
```

where &lt;MachineName&gt; is the computer name of the device.

Templates such as the Office 2013 template that include many applications can either all be included in the roamed (default) or backed up profile. Individual apps in a template suite follow the group. Office 2013 in-box templates include both roaming and backup-only settings. Backup-only settings cannot be included in a roaming profile.

As part of the Backup/Restore feature, UE-V added **last known good (LKG)** to the options for rolling back to settings. In this release, you can roll back to either the original settings or LKG settings. The LKG settings let users roll back to an intermediate and stable point ahead of the pre-UE-V state of the settings.

### How to Backup/Restore Templates with UE-V

These are the key backup and restore components of UE-V:

-   Template profiles

-   Settings packages location within the Settings Storage Location template

-   Backup trigger

-   How settings are restored

**Template Profiles**

A UE-V template profile is defined when the template is registered on the device or post registration through the PowerShell/WMI configuration utility. The profile types include:

-   Roaming (default)

-   Backup

-   BackupOnly

All templates are included in the roaming profile when registered unless otherwise specified. These templates synchronize settings to all UE-V enabled devices with the corresponding template enabled.

Templates can be added to the Backup Profile with PowerShell or WMI using the Set-UevTemplateProfile cmdlet. Templates in the Backup Profile back up these settings to the Settings Storage Location in a special Device name directory. Specified settings are backed up to this location.

Templates designated BackupOnly include settings specific to that device that should not be synchronized unless explicitly restored. These settings are stored in the same device-specific settings package location on the settings storage location as the Backedup Settings. These templates have a special identifier embedded in the template that specifies they should be part of this profile.

**Settings packages location within the Settings Storage Location template**

Roaming Profile settings are stored on the settings storage location. Templates assigned to the Backup or the BackupOnly profile store their settings to the Settings Storage Location in a special Device name directory. Each device with templates in these profiles has its own device name. UE-V does not clean up these directories.

**Backup trigger**

Backup is triggered by the same events that trigger a UE-V synchronization.

**How settings are restored**

Restoring a user’s device restores the currently registered Template’s settings from another device’s backup folder and all synchronized settings to the current machine. Settings are restored in these two ways:

-   **Automatic restore**

    If the user’s UE-V settings storage path, domain, and Computer name match the current user then all of the settings for that user are synchronized, with only the latest settings applied. If a user logs on to a new device for the first time and these criteria are met, the settings data is applied to that device.

    **Note**  
    Accessibility and Windows Desktop settings require the user to re-logon to Windows to be applied.



-   **Manual Restore**

    If you want to assist users by restoring a device during a refresh, you can choose to use the Restore-UevBackup cmdlet. This command causes the user’s settings to be downloaded from the Settings Storage Location.

## Restore Application and Windows Settings to Original State


WMI and Windows PowerShell commands let you restore application and Windows settings to the settings values that were on the computer the first time that the application started after the UE-V Agent was installed. This restoring action is performed on a per-application or Windows settings basis. The settings are restored the next time that the application runs, or the settings are restored when the user logs on to the operating system.

**To restore application settings and Windows settings with Windows PowerShell for UE-V 2.x**

1.  Open the Windows PowerShell window.

2.  Enter the following Windows PowerShell cmdlet to restore the application settings and Windows settings.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>Windows PowerShell cmdlet</strong></th>
    <th align="left"><strong>Description</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><code>Restore-UevUserSetting -&lt;TemplateID&gt;</code></p></td>
    <td align="left"><p>Restores the user settings for an application or restores a group of Windows settings.</p></td>
    </tr>
    </tbody>
    </table>



**To restore application settings and Windows settings with WMI**

1.  Open a Windows PowerShell window.

2.  Enter the following WMI command to restore application settings and Windows settings.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>WMI command</strong></th>
    <th align="left"><strong>Description</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserSettings -Name RestoreByTemplateId -ArgumentList &lt;template_ID&gt;</code></p></td>
    <td align="left"><p>Restores the user settings for an application or restores a group of Windows settings.</p></td>
    </tr>
    </tbody>
    </table>



~~~
**Note**  
UE-V does not provide a settings rollback for Windows apps.
~~~








## Related topics


[Administering UE-V 2.x with Windows PowerShell and WMI](administering-ue-v-2x-with-windows-powershell-and-wmi-both-uevv2.md)

[Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)









