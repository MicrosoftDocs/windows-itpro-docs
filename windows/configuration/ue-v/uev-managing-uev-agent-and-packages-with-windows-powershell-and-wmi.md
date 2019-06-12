---
title: Managing the UE-V Service and Packages with Windows PowerShell and WMI
description: Managing the UE-V service and packages with Windows PowerShell and WMI
author: dansimp
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


# Managing the UE-V service and packages with Windows PowerShell and WMI

**Applies to**
-   Windows 10, version 1607

You can use Windows Management Instrumentation (WMI) and Windows PowerShell to manage User Experience Virtualization (UE-V) service configuration and synchronization behavior. 

>**Note**&nbsp;&nbsp;For a complete list of UE-V cmdlets, see [User Experience Virtualization in Windows PowerShell](https://technet.microsoft.com/library/mt772286.aspx).


## To configure the UE-V service with Windows PowerShell

1. Open a Windows PowerShell window. To manage computer settings that affect all users of the computer by using the *Computer* parameter, open the window with an account that has administrator rights.

2. Use the following Windows PowerShell commands to configure the service.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Windows PowerShell command</th>
   <th align="left">Description</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p><code>Enable-UEV</code></p>
   <p></p></td>
   <td align="left"><p>Turns on the UE-V service. Requires reboot.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Disable-UEV</code></p></td>
   <td align="left"><p>Turns off the UE-V service. Requires reboot.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Get-UevStatus</code></p></td>
   <td align="left"><p>Displays whether UE-V service is enabled or disabled, using a Boolean value.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Get-UevConfiguration</code></p>
   <p></p></td>
   <td align="left"><p>Gets the effective UE-V service settings. User-specific settings have precedence over the computer settings.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Get-UevConfiguration -CurrentComputerUser</code></p>
   <p></p></td>
   <td align="left"><p>Gets the UE-V service settings values for the current user only.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Get-UevConfiguration -Computer</code></p></td>
   <td align="left"><p>Gets the UE-V service configuration settings values for all users on the computer.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Get-UevConfiguration -Details</code></p></td>
   <td align="left"><p>Gets the details for each configuration setting. Displays where the setting is configured or if it uses the default value. Is displayed if the current setting is valid.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -EnableDontSyncWindows8AppSettings</code></p></td>
   <td align="left"><p>Configures the UE-V service to not synchronize any Windows apps for all users on the computer.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -EnableDontSyncWindows8AppSettings</code></p></td>
   <td align="left"><p>Configures the UE-V service to not synchronize any Windows apps for the current computer user.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -EnableFirstUseNotification</code></p></td>
   <td align="left"><p>Configures the UE-V service to display notification the first time the service runs for all users on the computer.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -Computer -DisableFirstUseNotification</code></p></td>
   <td align="left"><p>Configures the UE-V service to not display notification the first time that the service runs for all users on the computer.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -EnableSettingsImportNotify</code></p></td>
   <td align="left"><p>Configures the UE-V service to notify all users on the computer when settings synchronization is delayed.</p>
   <p>Use the <em>DisableSettingsImportNotify</em> parameter to disable notification.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -EnableSettingsImportNotify</code></p></td>
   <td align="left"><p>Configures the UE-V service to notify the current user when settings synchronization is delayed.</p>
   <p>Use the <em>DisableSettingsImportNotify</em> parameter to disable notification.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -EnableSyncUnlistedWindows8Apps</code></p></td>
   <td align="left"><p>Configures the UE-V service to synchronize all Windows apps that are not explicitly disabled by the Windows app list for all users of the computer. For more information, see &quot;Get-UevAppxPackage&quot; in <a href="uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md" data-raw-source="[Managing UE-V Settings Location Templates Using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md)">Managing UE-V Settings Location Templates Using Windows PowerShell and WMI</a>.</p>
   <p>Use the <em>DisableSyncUnlistedWindows8Apps</em> parameter to configure the UE-V service to synchronize only Windows apps that are explicitly enabled by the Windows App List.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser - EnableSyncUnlistedWindows8Apps</code></p></td>
   <td align="left"><p>Configures the UE-V service to synchronize all Windows apps that are not explicitly disabled by the Windows app list for the current user on the computer. For more information, see &quot;Get-UevAppxPackage&quot; in <a href="uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md" data-raw-source="[Managing UE-V Settings Location Templates Using Windows PowerShell and WMI](uev-managing-settings-location-templates-using-windows-powershell-and-wmi.md)">Managing UE-V Settings Location Templates Using Windows PowerShell and WMI</a>.</p>
   <p>Use the <em>DisableSyncUnlistedWindows8Apps</em> parameter to configure the UE-V service to synchronize only Windows apps that are explicitly enabled by the Windows App List.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -DisableSync</code></p></td>
   <td align="left"><p>Disables UE-V for all the users on the computer.</p>
   <p>Use the <em>EnableSync</em> parameter to enable or re-enable.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -DisableSync</code></p></td>
   <td align="left"><p>Disables UE-V for the current user on the computer.</p>
   <p>Use the <em>EnableSync</em> parameter to enable or re-enable.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -EnableTrayIcon</code></p></td>
   <td align="left"><p>Enables the UE-V icon in the notification area for all users of the computer.</p>
   <p>Use the <em>DisableTrayIcon</em> parameter to disable the icon.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -Computer -MaxPackageSizeInBytes &lt;size in bytes&gt;</code></p></td>
   <td align="left"><p>Configures the UE-V service to report when a settings package file size reaches the defined threshold for all users on the computer. Sets the threshold package size in bytes.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -MaxPackageSizeInBytes &lt;size in bytes&gt;</code></p></td>
   <td align="left"><p>Configures the UE-V service to report when a settings package file size reaches the defined threshold. Sets the package size warning threshold for the current user.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -Computer -SettingsImportNotifyDelayInSeconds</code></p></td>
   <td align="left"><p>Specifies the time in seconds before the user is notified for all users of the computer</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -SettingsImportNotifyDelayInSeconds</code></p></td>
   <td align="left"><p>Specifies the time in seconds before notification for the current user is sent.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -Computer -SettingsStoragePath &lt;path to _settings_storage_location&gt;</code></p></td>
   <td align="left"><p>Defines a per-computer settings storage location for all users of the computer.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -SettingsStoragePath &lt;path to _settings_storage_location&gt;</code></p></td>
   <td align="left"><p>Defines a per-user settings storage location.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -Computer -SettingsTemplateCatalogPath &lt;path to catalog&gt;</code></p></td>
   <td align="left"><p>Sets the settings template catalog path for all users of the computer.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -SyncMethod &lt;sync method&gt;</code></p></td>
   <td align="left"><p>Sets the synchronization method for all users of the computer: SyncProvider or None.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser  -SyncMethod &lt;sync method&gt;</code></p></td>
   <td align="left"><p>Sets the synchronization method for the current user: SyncProvider or None.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Set-UevConfiguration -Computer -SyncTimeoutInMilliseconds &lt;timeout in milliseconds&gt;</code></p></td>
   <td align="left"><p>Sets the synchronization time-out in milliseconds for all users of the computer</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Set-UevConfiguration -CurrentComputerUser -SyncTimeoutInMilliseconds &lt;timeout in milliseconds&gt;</code></p></td>
   <td align="left"><p>Set the synchronization time-out for the current user.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Clear-UevConfiguration -Computer -&lt;setting name&gt;</code></p></td>
   <td align="left"><p>Clears the specified setting for all users on the computer.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Clear-UevConfiguration -CurrentComputerUser -&lt;setting name&gt;</code></p></td>
   <td align="left"><p>Clears the specified setting for the current user only.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><code>Export-UevConfiguration &lt;settings migration file&gt;</code></p></td>
   <td align="left"><p>Exports the UE-V computer configuration to a settings migration file. The file name extension must be .uev.</p>
   <p>The <code>Export</code> cmdlet exports all UE-V service settings that are configurable with the <em>Computer</em> parameter.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><code>Import-UevConfiguration &lt;settings migration file&gt;</code></p></td>
   <td align="left"><p>Imports the UE-V computer configuration from a settings migration file. The file name extension must be .uev.</p></td>
   </tr>
   </tbody>
   </table>

     

## To export UE-V package settings and repair UE-V templates with Windows PowerShell

1.  Open a Windows PowerShell window as an administrator.

2.  Use the following Windows PowerShell commands to configure the service.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Windows PowerShell command</strong></p></td>
    <td align="left"><p><strong>Description</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Export-UevPackage MicrosoftNotepad.pkgx</code></p></td>
    <td align="left"><p>Extracts the settings from a Microsoft Notepad package file and converts them into a human-readable format in XML.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Repair-UevTemplateIndex</code></p></td>
    <td align="left"><p>Repairs the index of the UE-V settings location templates.</p></td>
    </tr>
    </tbody>
    </table>

## To configure the UE-V service with WMI

1.  User Experience Virtualization provides the following set of WMI commands. Administrators can use this interface to configure the UE-V service at the command line and automate typical configuration tasks.

    Use an account with administrator rights to open a Windows PowerShell window.

2.  Use the following WMI commands to configure the service.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><code>Windows PowerShell command</code></th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\UEV Configuration</code></p>
    <p></p></td>
    <td align="left"><p>Displays the active UE-V service settings. User-specific settings have precedence over the computer settings.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguration</code></p></td>
    <td align="left"><p>Displays the UE-V service configuration that is defined for a user.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p></td>
    <td align="left"><p>Displays the UE-V service configuration that is defined for a computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\Uev ConfigurationItem</code></p></td>
    <td align="left"><p>Displays the details for each configuration item.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.SettingsStoragePath = &lt;path_to_settings_storage_location&gt;</code></p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Defines a per-computer settings storage location.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguration</code></p>
    <p><code>$config.SettingsStoragePath = &lt;path_to_settings_storage_location&gt;</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>Defines a per-user settings storage location.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.SyncTimeoutInMilliseconds = &lt;timeout_in_milliseconds&gt;</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>Sets the synchronization time-out in milliseconds for all users of the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.MaxPackageSizeInBytes = &lt;size_in_bytes&gt;</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>Configures the UE-V service to report when a settings package file size reaches a defined threshold. Set the threshold package file size in bytes for all users of the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.SyncMethod = &lt;sync_method&gt;</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>Sets the synchronization method for all users of the computer: SyncProvider or None.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.&lt;setting name&gt; = $true</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>To enable a specific per-computer setting, clear the setting, and use <em>$null</em> as the setting value. Use UserConfiguration for per-user settings.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.&lt;setting name&gt; = $false</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>To disable a specific per-computer setting, clear the setting, and use <em>$null</em> as the setting value. Use User Configuration for per-user settings.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code>$config.&lt;setting name&gt; = &lt;setting value&gt;</code></p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>Updates a specific per-computer setting. To clear the setting, use <em>$null</em> as the setting value.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</code></p>
    <p><code></code>$config.&lt;setting name&gt; = &lt;setting value&gt;</p>
    <p><code>$config.Put()</code></p></td>
    <td align="left"><p>Updates a specific per-user setting for all users of the computer. To clear the setting, use <em>$null</em> as the setting value.</p></td>
    </tr>
    </tbody>
    </table>

When you are finished configuring the UE-V service with WMI and Windows PowerShell, the defined configuration is stored in the registry in the following locations.

`\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\UEV\Agent\Configuration`

`\HKEY_CURRENT_USER\SOFTWARE\Microsoft\UEV\Agent\Configuration`

## To export UE-V package settings and repair UE-V templates by using WMI

1.  UE-V provides the following set of WMI commands. Administrators can use this interface to export a package or repair UE-V templates.

2.  Use the following WMI commands.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">WMI command</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserSettings -Name ExportPackage -ArgumentList &lt;package name&gt;</code></p></td>
    <td align="left"><p>Extracts the settings from a package file and converts them into a human-readable format in XML.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name RebuildIndex</code></p></td>
    <td align="left"><p>Repairs the index of the UE-V settings location templates. Must be run as administrator.</p></td>
    </tr>
    </tbody>
    </table>

   




## Related topics

[Administering UE-V with Windows PowerShell and WMI](uev-administering-uev-with-windows-powershell-and-wmi.md)

[Administering UE-V](uev-administering-uev.md)

[User Experience Virtualization in Windows PowerShell](https://technet.microsoft.com/library/mt772286.aspx)
