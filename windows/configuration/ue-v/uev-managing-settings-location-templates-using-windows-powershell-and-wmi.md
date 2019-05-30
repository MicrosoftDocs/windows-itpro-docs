---
title: Managing UE-V Settings Location Templates Using Windows PowerShell and WMI
description: Managing UE-V Settings Location Templates Using Windows PowerShell and WMI
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.topic: article
---


# Managing UE-V Settings Location Templates Using Windows PowerShell and WMI

**Applies to**
-   Windows 10, version 1607

User Experience Virtualization (UE-V) uses XML settings location templates to define the settings that User Experience Virtualization captures and applies. UE-V includes a set of standard settings location templates. It also includes the UE-V template generator tool that enables you to create custom settings location templates. After you create and deploy settings location templates, you can manage those templates by using Windows PowerShell and the Windows Management Instrumentation (WMI). 

> **Note**&nbsp;&nbsp;For a complete list of UE-V cmdlets, see [User Experience Virtualization in Windows PowerShell](https://technet.microsoft.com/library/mt772286.aspx).

## Manage UE-V settings location templates by using Windows PowerShell

The WMI and Windows PowerShell features of UE-V include the ability to enable, disable, register, update, and unregister settings location templates. By using these features, you can automate the process of registering, updating, or unregistering templates with the UE-V service. You can also manually register templates by using WMI and Windows PowerShell commands. By using these features in conjunction with an electronic software distribution solution, Group Policy, or another automated deployment method such as a script, you can further automate that process.

You must have administrator permissions to update, register, or unregister a settings location template. Administrator permissions are not required to enable, disable, or list templates.

****To manage settings location templates by using Windows PowerShell****

1.  Use an account with administrator rights to open a Windows PowerShell command prompt.

2.  Use the following Windows PowerShell cmdlets to register and manage the UE-V settings location templates.

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
    <td align="left"><p><code>Get-UevTemplate</code></p></td>
    <td align="left"><p>Lists all the settings location templates that are registered on the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Get-UevTemplate -Application &lt;string&gt;</code></p></td>
    <td align="left"><p>Lists all the settings location templates that are registered on the computer where the application name or template name contains &lt;string&gt;.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Get-UevTemplate -TemplateID &lt;string&gt;</code></p></td>
    <td align="left"><p>Lists all the settings location templates that are registered on the computer where the template ID contains &lt;string&gt;.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Get-UevTemplate [-ApplicationOrTemplateID] &lt;string&gt;</code></p></td>
    <td align="left"><p>Lists all the settings location templates that are registered on the computer where the application or template name, or template ID contains &lt;string&gt;.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Get-UevTemplateProgram [-ID] &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Gets the name of the program and version information, which depend on the template ID.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Get-UevAppXPackage</code></p></td>
    <td align="left"><p>Gets the effective list of Windows apps.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Get-UevAppXPackage -Computer</code></p></td>
    <td align="left"><p>Gets the list of Windows apps that are configured for the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Get-UevAppXPackage -CurrentComputerUser</code></p></td>
    <td align="left"><p>Gets the list of Windows apps that are configured for the current user.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Register-UevTemplate [-Path] &lt;template file path&gt;[,&lt;template file path&gt;]</code></p></td>
    <td align="left"><p>Registers one or more settings location template with UE-V by using relative paths and/or wildcard characters in file paths. After a template is registered, UE-V synchronizes the settings that are defined in the template between computers that have the template registered.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Register-UevTemplate -LiteralPath &lt;template file path&gt;[,&lt;template file path&gt;]</code></p></td>
    <td align="left"><p>Registers one or more settings location template with UE-V by using literal paths, where no characters can be interpreted as wildcard characters. After a template is registered, UE-V synchronizes the settings that are defined in the template between computers that have the template registered.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Unregister-UevTemplate [-ID] &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Unregisters a settings location template with UE-V. When a template is unregistered, UE-V no longer synchronizes the settings that are defined in the template between computers.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Unregister-UevTemplate -All</code></p></td>
    <td align="left"><p>Unregisters all settings location templates with UE-V. When a template is unregistered, UE-V no longer synchronizes the settings that are defined in the template between computers.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Update-UevTemplate [-Path] &lt;template file path&gt;[,&lt;template file path&gt;]</code></p></td>
    <td align="left"><p>Updates one or more settings location templates with a more recent version of the template. Use relative paths and/or wildcard characters in the file paths. The new template should be a newer version than the existing template.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Update-UevTemplate -LiteralPath &lt;template file path&gt;[,&lt;template file path&gt;]</code></p></td>
    <td align="left"><p>Updates one or more settings location templates with a more recent version of the template. Use full paths to template files, where no characters can be interpreted as wildcard characters. The new template should be a newer version than the existing template.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Clear-UevAppXPackage -Computer [-PackageFamilyName] &lt;package family name&gt;[,&lt;package family name&gt;]</code></p></td>
    <td align="left"><p>Removes one or more Windows apps from the computer Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Clear-UevAppXPackage -CurrentComputerUser</code></p></td>
    <td align="left"><p>Removes Windows app from the current user Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Clear-UevAppXPackage -Computer -All</code></p></td>
    <td align="left"><p>Removes all Windows apps from the computer Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Clear-UevAppXPackage [-CurrentComputerUser] [-PackageFamilyName] &lt;package family name&gt;[,&lt;package family name&gt;]</code></p></td>
    <td align="left"><p>Removes one or more Windows apps from the current user Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Clear-UevAppXPackage [-CurrentComputerUser] -All</code></p></td>
    <td align="left"><p>Removes all Windows apps from the current user Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Disable-UevTemplate [-ID] &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Disables a settings location template for the current user of the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Disable-UevAppXPackage -Computer [-PackageFamilyName] &lt;package family name&gt;[,&lt;package family name&gt;]</code></p></td>
    <td align="left"><p>Disables one or more Windows apps in the computer Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Disable-UevAppXPackage [-CurrentComputerUser] [-PackageFamilyName] &lt;package family name&gt;[,&lt;package family name&gt;]</code></p></td>
    <td align="left"><p>Disables one or more Windows apps in the current user Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Enable-UevTemplate [-ID] &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Enables a settings location template for the current user of the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Enable-UevAppXPackage -Computer [-PackageFamilyName] &lt;package family name&gt;[,&lt;package family name&gt;]</code></p></td>
    <td align="left"><p>Enables one or more Windows apps in the computer Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Enable-UevAppXPackage [-CurrentComputerUser] [-PackageFamilyName] &lt;package family name&gt;[,&lt;package family name&gt;]</code></p></td>
    <td align="left"><p>Enables one or more Windows apps in the current user Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Test-UevTemplate [-Path] &lt;template file path&gt;[,&lt;template file path&gt;]</code></p></td>
    <td align="left"><p>Determines whether one or more settings location templates comply with its XML schema. Can use relative paths and wildcard characters.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Test-UevTemplate -LiteralPath &lt;template file path&gt;[,&lt;template file path&gt;]</code></p></td>
    <td align="left"><p>Determines whether one or more settings location templates comply with its XML schema. The path must be a full path to the template file, but does not include wildcard characters.</p></td>
    </tr>
    </tbody>
    </table>

     

The UE-V Windows PowerShell features enable you to manage a group of settings templates that are deployed in your enterprise. Use the following procedure to manage a group of templates by using Windows PowerShell.

**To manage a group of settings location templates by using Windows PowerShell**

1.  Modify or update the desired settings location templates.

2.  If you want to modify or update the settings location templates, deploy those settings location templates to a folder that is accessible to the local computer.

3.  On the local computer, open a Windows PowerShell window with administrator rights.

4.  Unregister all the previously registered versions of the templates by typing the following command.

    ``` syntax
    Unregister-UevTemplate -All
    ```

    This command unregisters all active templates on the computer.

5.  Register the updated templates by typing the following command.

    ``` syntax
    Register-UevTemplate <path to template folder>\*.xml
    ```

    This command registers all of the settings location templates that are located in the specified template folder.

### <a href="" id="win8applist"></a>Windows app list

By listing a Windows app in the Windows app list, you specify whether that app is enabled or disabled for settings synchronization. Apps are identified in the list by their Package Family name and whether settings synchronization should be enabled or disabled for that app. When you use these settings along with the Unlisted Default Sync Behavior setting, you can control whether Windows apps are synchronized.

To display the Package Family Name of installed Windows apps, at a Windows PowerShell command prompt, enter:

``` syntax
Get-AppxPackage | Sort-Object PackageFamilyName | Format-Table PackageFamilyName
```

To display a list of Windows apps that can synchronize settings on a computer with their package family name, enabled status, and enabled source, at a Windows PowerShell command prompt, enter: `Get-UevAppxPackage`

**Definitions of Get-UevAppxPackage properties**

<a href="" id="packagefamilyname"></a>**PackageFamilyName**  
The name of the package that is installed for the current user.

<a href="" id="enabled"></a>**Enabled**  
Defines whether the settings for the app are configured to synchronize.

<a href="" id="enabledsource"></a>**EnabledSource**  
The location where the configuration that enables or disables the app is set. Possible values are: *NotSet*, *LocalMachine*, *LocalUser*, *PolicyMachine*, and *PolicyUser*.

<a href="" id="notset"></a>**NotSet**  
The policy is not configured to synchronize this app.

<a href="" id="localmachine"></a>**LocalMachine**  
The enabled state is set in the local computer section of the registry.

<a href="" id="localuser"></a>**LocalUser**  
The enabled state is set in the current user section of the registry.

<a href="" id="policymachine"></a>**PolicyMachine**  
The enabled state is set in the policy section of the local computer section of the registry.

To get the user-configured list of Windows apps, at the Windows PowerShell command prompt, enter: `Get-UevAppxPackage -CurrentComputerUser`

To get the computer-configured list of Windows apps, at the Windows PowerShell command prompt, enter: `Get-UevAppxPackage -Computer`

For either parameter, CurrentComputerUser or Computer, the cmdlet returns a list of the Windows apps that are configured at the user or at the computer level.

**Definitions of properties**

<a href="" id="packagefamilyname"></a>**PackageFamilyName**  
The name of the package that is installed for the current user.

<a href="" id="enabled"></a>**Enabled**  
Defines whether the settings for the app are configured to synchronize for the specified switch, that is, **user** or **computer**.

<a href="" id="installed"></a>**Installed**  
True if the app, that is, the PackageFamilyName is installed for the current user.

### Manage UE-V settings location templates by using WMI

User Experience Virtualization provides the following set of WMI commands. Administrators can use these interfaces to manage settings location templates from Windows PowerShell and automate template administrative tasks.

**To manage settings location templates by using WMI**

1.  Use an account with administrator rights to open a Windows PowerShell window.

2.  Use the following WMI commands to register and manage the UE-V settings location templates.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><code>                         Windows PowerShell command</code></th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\UEV SettingsLocationTemplate | Select-Object TemplateId,TemplateName, TemplateVersion,Enabled | Format-Table -Autosize</code></p></td>
    <td align="left"><p>Lists all the settings location templates that are registered for the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name GetProcessInfoByTemplateId &lt;template Id&gt;</code></p></td>
    <td align="left"><p>Gets the name of the program and version information, which depends on the template name.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\UEV EffectiveWindows8App</code></p></td>
    <td align="left"><p>Gets the effective list of Windows apps.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Get-WmiObject -Namespace root\Microsoft\UEV MachineConfiguredWindows8App</p></td>
    <td align="left"><p>Gets the list of Windows apps that are configured for the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Get-WmiObject -Namespace root\Microsoft\UEV UserConfiguredWindows8App</code></p></td>
    <td align="left"><p>Gets the list of Windows apps that are configured for the current user.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name Register -ArgumentList &lt;template path &gt;</code></p></td>
    <td align="left"><p>Registers a settings location template with UE-V.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name UnregisterByTemplateId -ArgumentList &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Unregisters a settings location template with UE-V. As soon as a template is unregistered, UE-V no longer synchronizes the settings that are defined in the template between computers.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name Update -ArgumentList &lt;template path&gt;</code></p></td>
    <td align="left"><p>Updates a settings location template with UE-V. The new template should be a newer version than the existing one.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class MachineConfiguredWindows8App -Name RemoveApp -ArgumentList &lt;package family name | package family name&gt;</code></p></td>
    <td align="left"><p>Removes one or more Windows apps from the computer Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserConfiguredWindows8App -Name RemoveApp -ArgumentList &lt;package family name | package family name&gt;</code></p></td>
    <td align="left"><p>Removes one or more Windows apps from the current user Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name DisableByTemplateId -ArgumentList &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Disables one or more settings location templates with UE-V.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class MachineConfiguredWindows8App -Name DisableApp -ArgumentList &lt;package family name | package family name&gt;</code></p></td>
    <td align="left"><p>Disables one or more Windows apps in the computer Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserConfiguredWindows8App -Name DisableApp -ArgumentList &lt;package family name | package family name&gt;</code></p></td>
    <td align="left"><p>Disables one or more Windows apps in the current user Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name EnableByTemplateId -ArgumentList &lt;template ID&gt;</code></p></td>
    <td align="left"><p>Enables a settings location template with UE-V.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class MachineConfiguredWindows8App -Name EnableApp -ArgumentList &lt;package family name | package family name&gt;</code></p></td>
    <td align="left"><p>Enables Windows apps in the computer Windows app list.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class UserConfiguredWindows8App -Name EnableApp -ArgumentList &lt;package family name | package family name&gt;</code></p></td>
    <td align="left"><p>Enables Windows apps in the current user Windows app list.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><code>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name Validate -ArgumentList &lt;template path&gt;</code></p></td>
    <td align="left"><p>Determines whether a given settings location template complies with its XML schema.</p></td>
    </tr>
    </tbody>
    </table>

**Note**  
Where a list of Package Family Names is called by the WMI command, the list must be in quotes and separated by a pipe symbol, for example, `"<package family name | package family name>"`.





## Related topics

[Administering UE-V with Windows PowerShell and WMI](uev-administering-uev-with-windows-powershell-and-wmi.md)

[Administering UE-V](uev-administering-uev.md)

[User Experience Virtualization in Windows PowerShell](https://technet.microsoft.com/library/mt772286.aspx)
