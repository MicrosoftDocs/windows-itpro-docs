---
title: Manage UE-V Service and Packages with Windows PowerShell and WMI
description: Managing the UE-V service and packages with Windows PowerShell and WMI
author: greg-lindsay
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: greglin
ms.topic: article
---


# Managing the UE-V service and packages with Windows PowerShell and WMI

**Applies to**
-   Windows 10, version 1607

You can use Windows Management Instrumentation (WMI) and Windows PowerShell to manage User Experience Virtualization (UE-V) service configuration and synchronization behavior. 

>**Note**&nbsp;&nbsp;For a complete list of UE-V cmdlets, see [User Experience Virtualization in Windows PowerShell](/powershell/module/uev/).


## To configure the UE-V service with Windows PowerShell

1. Open a Windows PowerShell window. To manage computer settings that affect all users of the computer by using the *Computer* parameter, open the window with an account that has administrator rights.

2. Use the following Windows PowerShell commands to configure the service.

   |Windows PowerShell command|Description|
   |--- |--- |
   |`Enable-UEV`|Turns on the UE-V service. Requires reboot.|
   |`Disable-UEV`|Turns off the UE-V service. Requires reboot.|
   |`Get-UevStatus`|Displays whether UE-V service is enabled or disabled, using a Boolean value.|
   |`Get-UevConfiguration`|Gets the effective UE-V service settings. User-specific settings have precedence over the computer settings.|
   |`Get-UevConfiguration -CurrentComputerUser`|Gets the UE-V service settings values for the current user only.|
   |`Get-UevConfiguration -Computer`|Gets the UE-V service configuration settings values for all users on the computer.|
   |`Get-UevConfiguration -Details`|Gets the details for each configuration setting. Displays where the setting is configured or if it uses the default value. Is displayed if the current setting is valid.|
   |`Set-UevConfiguration -Computer -EnableDontSyncWindows8AppSettings`|Configures the UE-V service to not synchronize any Windows apps for all users on the computer.|
   |`Set-UevConfiguration -CurrentComputerUser -EnableDontSyncWindows8AppSettings`|Configures the UE-V service to not synchronize any Windows apps for the current computer user.|
   |`Set-UevConfiguration -Computer -EnableFirstUseNotification`|Configures the UE-V service to display notification the first time the service runs for all users on the computer.|
   |`Set-UevConfiguration -Computer -DisableFirstUseNotification`|Configures the UE-V service to not display notification the first time that the service runs for all users on the computer.|
   |`Set-UevConfiguration -Computer -EnableSettingsImportNotify`|Configures the UE-V service to notify all users on the computer when settings synchronization is delayed.<p>Use the DisableSettingsImportNotify parameter to disable notification.|
   |`Set-UevConfiguration -CurrentComputerUser -EnableSettingsImportNotify`|Configures the UE-V service to notify the current user when settings synchronization is delayed.<p>Use the DisableSettingsImportNotify parameter to disable notification.|
   |`Set-UevConfiguration -Computer -EnableSyncUnlistedWindows8Apps`|Configures the UE-V service to synchronize all Windows apps that are not explicitly disabled by the Windows app list for all users of the computer. For more information, see "Get-UevAppxPackage" in [Managing UE-V Settings Location Templates Using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md).<p>Use the DisableSyncUnlistedWindows8Apps parameter to configure the UE-V service to synchronize only Windows apps that are explicitly enabled by the Windows App List.|
   |`Set-UevConfiguration -CurrentComputerUser - EnableSyncUnlistedWindows8Apps`|Configures the UE-V service to synchronize all Windows apps that are not explicitly disabled by the Windows app list for the current user on the computer. For more information, see "Get-UevAppxPackage" in [Managing UE-V Settings Location Templates Using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md).<p>Use the DisableSyncUnlistedWindows8Apps parameter to configure the UE-V service to synchronize only Windows apps that are explicitly enabled by the Windows App List.|
   |`Set-UevConfiguration -Computer -DisableSync`|Disables UE-V for all the users on the computer.<p>Use the EnableSync parameter to enable or re-enable.|
   |`Set-UevConfiguration -CurrentComputerUser -DisableSync`|Disables UE-V for the current user on the computer.<p>Use the EnableSync parameter to enable or re-enable.|
   |`Set-UevConfiguration -Computer -EnableTrayIcon`|Enables the UE-V icon in the notification area for all users of the computer.<p>Use the DisableTrayIcon parameter to disable the icon.|
   |`Set-UevConfiguration -Computer -MaxPackageSizeInBytes <size in bytes>`|Configures the UE-V service to report when a settings package file size reaches the defined threshold for all users on the computer. Sets the threshold package size in bytes.|
   |`Set-UevConfiguration -CurrentComputerUser -MaxPackageSizeInBytes <size in bytes>`|Configures the UE-V service to report when a settings package file size reaches the defined threshold. Sets the package size warning threshold for the current user.|
   |`Set-UevConfiguration -Computer -SettingsImportNotifyDelayInSeconds`|Specifies the time in seconds before the user is notified for all users of the computer|
   |`Set-UevConfiguration -CurrentComputerUser -SettingsImportNotifyDelayInSeconds`|Specifies the time in seconds before notification for the current user is sent.|
   |`Set-UevConfiguration -Computer -SettingsStoragePath <path to _settings_storage_location>`|Defines a per-computer settings storage location for all users of the computer.|
   |`Set-UevConfiguration -CurrentComputerUser -SettingsStoragePath <path to _settings_storage_location>`|Defines a per-user settings storage location.|
   |`Set-UevConfiguration -Computer -SettingsTemplateCatalogPath <path to catalog>`|Sets the settings template catalog path for all users of the computer.|
   |`Set-UevConfiguration -Computer -SyncMethod <sync method>`|Sets the synchronization method for all users of the computer: SyncProvider or None.|
   |`Set-UevConfiguration -CurrentComputerUser  -SyncMethod <sync method>`|Sets the synchronization method for the current user: SyncProvider or None.|
   |`Set-UevConfiguration -Computer -SyncTimeoutInMilliseconds <timeout in milliseconds>`|Sets the synchronization time-out in milliseconds for all users of the computer|
   |`Set-UevConfiguration -CurrentComputerUser -SyncTimeoutInMilliseconds <timeout in milliseconds>`|Set the synchronization time-out for the current user.|
   |`Clear-UevConfiguration -Computer -<setting name>`|Clears the specified setting for all users on the computer.|
   |`Clear-UevConfiguration -CurrentComputerUser -<setting name>`|Clears the specified setting for the current user only.|
   |`Export-UevConfiguration <settings migration file>`|Exports the UE-V computer configuration to a settings migration file. The file name extension must be .uev.<p>The `Export` cmdlet exports all UE-V service settings that are configurable with the Computer parameter.|
   |`Import-UevConfiguration <settings migration file>`|Imports the UE-V computer configuration from a settings migration file. The file name extension must be .uev.|

## To export UE-V package settings and repair UE-V templates with Windows PowerShell

1.  Open a Windows PowerShell window as an administrator.

2.  Use the following Windows PowerShell commands to configure the service.

    |Windows PowerShell command|Description|
    |--- |--- |
    |`Export-UevPackage MicrosoftNotepad.pkgx`|Extracts the settings from a Microsoft Notepad package file and converts them into a human-readable format in XML.|
    |`Repair-UevTemplateIndex`|Repairs the index of the UE-V settings location templates.|

## To configure the UE-V service with WMI

1.  User Experience Virtualization provides the following set of WMI commands. Administrators can use this interface to configure the UE-V service at the command line and automate typical configuration tasks.

    Use an account with administrator rights to open a Windows PowerShell window.

2.  Use the following WMI commands to configure the service.

    |`Windows PowerShell command`|Description|
    |--- |--- |
    |`Get-WmiObject -Namespace root\Microsoft\UEV Configuration`|Displays the active UE-V service settings. User-specific settings have precedence over the computer settings.|
    |`Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguration`|Displays the UE-V service configuration that is defined for a user.|
    |`Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`|Displays the UE-V service configuration that is defined for a computer.|
    |`Get-WmiObject -Namespace root\Microsoft\Uev ConfigurationItem`|Displays the details for each configuration item.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.SettingsStoragePath = <path_to_settings_storage_location>`<p>`$config.Put()`|Defines a per-computer settings storage location.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguration`<p>`$config.SettingsStoragePath = <path_to_settings_storage_location>`<p>`$config.Put()`|Defines a per-user settings storage location.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.SyncTimeoutInMilliseconds = <timeout_in_milliseconds>`<p>`$config.Put()`|Sets the synchronization time-out in milliseconds for all users of the computer.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.MaxPackageSizeInBytes = <size_in_bytes>`<p>`$config.Put()`|Configures the UE-V service to report when a settings package file size reaches a defined threshold. Set the threshold package file size in bytes for all users of the computer.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.SyncMethod = <sync_method>`<p>`$config.Put()`|Sets the synchronization method for all users of the computer: SyncProvider or None.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.<setting name> = $true`<p>`$config.Put()`|To enable a specific per-computer setting, clear the setting, and use $null as the setting value. Use UserConfiguration for per-user settings.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.<setting name> = $false`<p>`$config.Put()`|To disable a specific per-computer setting, clear the setting, and use $null as the setting value. Use User Configuration for per-user settings.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.<setting name> = <setting value>`<p>`$config.Put()`|Updates a specific per-computer setting. To clear the setting, use $null as the setting value.|
    |`$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration`<p>`$config.<setting name> = <setting value>`<p>`$config.Put()`|Updates a specific per-user setting for all users of the computer. To clear the setting, use $null as the setting value.|

When you are finished configuring the UE-V service with WMI and Windows PowerShell, the defined configuration is stored in the registry in the following locations.

`\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\UEV\Agent\Configuration`

`\HKEY_CURRENT_USER\SOFTWARE\Microsoft\UEV\Agent\Configuration`

## To export UE-V package settings and repair UE-V templates by using WMI

1.  UE-V provides the following set of WMI commands. Administrators can use this interface to export a package or repair UE-V templates.

2.  Use the following WMI commands.

    |WMI command|Description|
    |--- |--- |
    |`Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserSettings -Name ExportPackage -ArgumentList <package name>`|Extracts the settings from a package file and converts them into a human-readable format in XML.|
    |`Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name RebuildIndex`|Repairs the index of the UE-V settings location templates. Must be run as administrator.|

## Related topics

[Administering UE-V with Windows PowerShell and WMI](uev-administering-uev-with-windows-powershell-and-wmi.md)

[Administering UE-V](uev-administering-uev.md)

[User Experience Virtualization in Windows PowerShell](/powershell/module/uev/)