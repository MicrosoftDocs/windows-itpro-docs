---
title: Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI
description: Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI
author: dansimp
ms.assetid: c8989b01-1769-4e69-82b1-4aadb261d2d5
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI


You can use WMI and PowerShell to manage Microsoft User Experience Virtualization (UE-V) Agent configuration and synchronization behavior.

**How to deploy the UE-V agent with PowerShell**

1.  Stage the UE-V installer file in an accessible network share.

    **Note**  
    Use AgentSetup.exe to deploy both 32-bit and 64-bit versions of the UE-V Agent. Windows Installer Files versions, AgentSetupx86.msi and AgentSetupx64.msi, are available for each architecture. To uninstall the UE-V Agent at a later time using the installation file, you must use the same file type.



2.  Use one of the following PowerShell commands to install the agent.

    `& AgentSetup.exe /quiet /norestart /log "%temp%\UE-VAgentInstaller.log" SettingsStoragePath=\\server\settingsshare\%username%`

    `& msiexec.exe /i "<path to msi file>" /quiet /norestart /l*v "%temp%\UE-VAgentInstaller.log" SettingsStoragePath=\\server\settingsshare\%username%`

**How to configure the UE-V Agent with PowerShell**

1.  Use an account with administrator rights to open a PowerShell window. Import the UE-V PowerShell module by using the following command.

    ``` syntax
    Import-module UEV
    ```

2.  Use the following PowerShell commands to configure the agent.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>PowerShell command</strong></p></td>
    <td align="left"><p><strong>Description</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Get-UevConfiguration</p>
    <p></p></td>
    <td align="left"><p>View the effective UE-V agent settings. User-specific settings have precedence over the computer settings.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Get-UevConfiguration - CurrentComputerUser</p>
    <p></p></td>
    <td align="left"><p>View the UE-V agent settings values for the current user only.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Get-UevConfiguration -Computer</p></td>
    <td align="left"><p>View the UE-V agent configuration settings values for all users on the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UevConfiguration -Computer -SettingsStoragePath &lt;path to _settings_storage_location&gt;</p></td>
    <td align="left"><p>Define a per-computer settings storage location.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UevConfiguration -CurrentComputerUser -SettingsStoragePath &lt;path to _settings_storage_location&gt;</p></td>
    <td align="left"><p>Define a per-user settings storage location.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UevConfiguration -Computer -SyncTimeoutInMilliseconds &lt;timeout in milliseconds&gt;</p></td>
    <td align="left"><p>Set the synchronization timeout in milliseconds</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UevConfiguration -CurrentComputerUser -SyncTimeoutInMilliseconds &lt;timeout in milliseconds&gt;</p></td>
    <td align="left"><p>Set the synchronization timeout for the current user.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UevConfiguration -Computer -MaxPackageSizeInBytes &lt;size in bytes&gt;</p></td>
    <td align="left"><p>Configure the UE-V agent to report when a settings package file size reaches a defined threshold. Set the threshold package size in bytes.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UevConfiguration -CurrentComputerUser -MaxPackageSizeInBytes &lt;size in bytes&gt;</p></td>
    <td align="left"><p>Set the package size warning threshold for the current user.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UevConfiguration –Computer –SettingsTemplateCatalogPath &lt;path to catalog&gt;</p></td>
    <td align="left"><p>Set the settings template catalog path.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UevConfiguration -Computer -SyncMethod &lt;sync method&gt;</p></td>
    <td align="left"><p>Set the synchronization method: OfflineFiles or None.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UevConfiguration -CurrentComputerUser -SyncMethod &lt;sync method&gt;</p></td>
    <td align="left"><p>Set the synchronization method for the current user: OfflineFiles or None.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UEVConfiguration -Computer –EnableSettingsImportNotify</p></td>
    <td align="left"><p>Enable notification to occur when the import of user settings is delayed.</p>
    <p>Use –DisableSettingsImportNotify to disable notification.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UEVConfiguration - CurrentComputerUser -EnableSettingsImportNotify</p></td>
    <td align="left"><p>Enable notification for the current user when the import of user settings is delayed.</p>
    <p>Use –DisableSettingsImportNotify to disable notification.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UEVConfiguration -Computer -SettingsImportNotifyDelayInSeconds</p></td>
    <td align="left"><p>Specify the time in seconds before the user is notified</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UEVConfiguration - CurrentComputerUser -SettingsImportNotifyDelayInSeconds</p></td>
    <td align="left"><p>Specify the time in seconds before notification for the current user.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Set-UevConfiguration –Computer –DisableSync</p></td>
    <td align="left"><p>Disable UE-V for all the users on the computer.</p>
    <p>Use –EnableSync to enable or re-enable.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Set-UevConfiguration –CurrentComputerUser -DisableSync</p></td>
    <td align="left"><p>Disable UE-V for the current user on the computer.</p>
    <p>Use –EnableSync to enable or re-enable.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Clear-UevConfiguration –Computer -&lt;setting name&gt;</p></td>
    <td align="left"><p>Clear a specific setting for all users on the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Clear-UevConfiguration –CurrentComputerUser -&lt;setting name&gt;</p></td>
    <td align="left"><p>Clear a specific setting for the current user only.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Export-UevConfiguration &lt;settings migration file&gt;</p></td>
    <td align="left"><p>Export the UE-V computer configuration to a settings migration file. The extension of the file must be “.uev”.</p>
    <p>The export cmdlet exports all UE-V agent settings that are configurable with the -computer parameter.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Import-UevConfiguration &lt;settings migration file&gt;</p></td>
    <td align="left"><p>Import the UE-V computer configuration from a settings migration file (.uev file).</p></td>
    </tr>
    </tbody>
    </table>



**How to export UE-V package settings and repair UE-V templates with PowerShell**

1.  Open a PowerShell window as an Administrator. Import the UE-V PowerShell module with the following command.

    ``` syntax
    Import-module UEV
    ```

2.  Use the following PowerShell commands to configure the agent.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>PowerShell command</strong></p></td>
    <td align="left"><p><strong>Description</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Export-UevPackage MicrosoftCalculator6.pkgx</p></td>
    <td align="left"><p>Extracts the settings from a Microsoft Calculator package file and converts them into a human-readable format in XML.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Repair-UevTemplateIndex</p></td>
    <td align="left"><p>Repairs the index of the UE-V settings location templates.</p></td>
    </tr>
    </tbody>
    </table>



**How to configure the UE-V Agent with WMI**

1.  User Experience Virtualization provides the following set of WMI commands. Administrators can use this interface to configure the UE-V agent from the command line and automate typical configuration tasks.

    Use an account with administrator rights to open a PowerShell window.

2.  Use the following WMI commands to configure the agent.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">PowerShell command</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Get-WmiObject -Namespace root\Microsoft\UEV Configuration</p>
    <p></p></td>
    <td align="left"><p>View the active UE-V agent settings. User-specific settings have precedence over the computer settings.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguration</p></td>
    <td align="left"><p>View the UE-V agent configuration that is defined for user.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p></td>
    <td align="left"><p>View the UE-V agent configuration that is defined for computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p>
    <p>$config.SettingsStoragePath = &lt;path_to_settings_storage_location&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Define a per-computer settings storage location.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguration</p>
    <p>$config.SettingsStoragePath = &lt;path_to_settings_storage_location&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Define a per-user settings storage location.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p>
    <p>$config.SyncTimeoutInMilliseconds = &lt;timeout_in_milliseconds&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Set the synchronization timeout in milliseconds.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p>
    <p>$config.MaxPackageSizeInBytes = &lt;size_in_bytes&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Configure the UE-V agent to report when a settings package file size reaches a defined threshold. Set the threshold package file size in bytes.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p>
    <p>$config.SyncMethod = &lt;sync_method&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Set the synchronization method: OfflineFiles or None.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p>
    <p>$config.&lt;setting name&gt; = &lt;setting value&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Update a specific per-computer setting. To clear the setting, use $null as the setting value.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>$config = Get-WmiObject -Namespace root\Microsoft\UEV ComputerConfiguration</p>
    <p>$config.&lt;setting name&gt; = &lt;setting value&gt;</p>
    <p>$config.Put()</p></td>
    <td align="left"><p>Update a specific per-user setting. To clear the setting, use $null as the setting value.</p></td>
    </tr>
    </tbody>
    </table>



~~~
Upon configuration of the UE-V Agent with WMI and PowerShell, the defined configuration is stored in the registry in the following locations:

`\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\UEV\Agent\Configuration`

`\HKEY_CURRENT_USER\SOFTWARE\Microsoft\UEV\Agent\Configuration`
~~~

## Related topics


[Administering UE-V 1.0](administering-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)









