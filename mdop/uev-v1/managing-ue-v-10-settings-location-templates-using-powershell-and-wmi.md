---
title: Managing UE-V 1.0 Settings Location Templates Using PowerShell and WMI
description: Managing UE-V 1.0 Settings Location Templates Using PowerShell and WMI
author: levinec
ms.assetid: 4b911c78-a5e9-4199-bfeb-72ab764d47c1
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Managing UE-V 1.0 Settings Location Templates Using PowerShell and WMI


Microsoft User Experience Virtualization (UE-V) uses settings location templates (XML files) that define the settings captured and applied by User Experience Virtualization. UE-V includes a set of standard settings location templates. It also includes the UE-V Generator tool that enables you to create custom settings location templates. After you create and deploy settings location templates you can manage those templates using PowerShell or WMI.

## Manage settings location templates with WMI and PowerShell


The WMI and PowerShell features of UE-V include the ability to enable, disable, register, update, and unregister settings location templates. By using these features, you can automate the process of registering, updating, or unregistering templates with the UE-V agent. You can also manually register templates using WMI and PowerShell commands. By using these features in conjunction with an electronic software distribution solution, Group Policy, or another automated deployment method such as a script, you can further automate that process.

You must have administrator permissions to update, register, or unregister a settings location template. Administrator permissions are not required to enable or disable templates.

**To manage settings location templates with PowerShell**

1.  Use an account with administrator rights to open a Windows PowerShell window. To import the **Microsoft UE-V PowerShell** module, type the following command at the PowerShell command prompt.

    ``` syntax
    Import-module UEV
    ```

2.  Use the following PowerShell cmdlets to register and manage the UE-V settings location templates.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>PowerShell command</strong></th>
    <th align="left"><strong>Description</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Get-UevTemplate</p></td>
    <td align="left"><p>Lists all the settings location templates registered on the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Register-UevTemplate</p></td>
    <td align="left"><p>Registers a settings location template with UE-V. Once a template is registered, UE-V will synchronize the settings that are defined in the template between computers that have the template registered.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Unregister-UevTemplate</p></td>
    <td align="left"><p>Unregisters a settings location template with UE-V. As soon as a template is unregistered, UE-V will no longer synchronize the settings that are defined in the template between computers.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Update-UevTemplate</p></td>
    <td align="left"><p>Updates a settings location template with a more recent version of the template. The new template should have a version that is later than the existing one.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Disable-UevTemplate</p></td>
    <td align="left"><p>Disables a settings location template for the current user of the computer.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Enable-UevTemplate</p></td>
    <td align="left"><p>Enables a settings location template for the current user of the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Test-UevTemplate</p></td>
    <td align="left"><p>Determines whether a given settings location template complies with its XML schema.</p></td>
    </tr>
    </tbody>
    </table>

     

The UE-V PowerShell features allow you to manage a group of settings templates deployed in your enterprise. To manage a group of templates using PowerShell, do the following.

**To manage a group of settings location templates with PowerShell**

1.  Modify or update the desired settings location templates.

2.  Deploy the desired settings location templates to a folder accessible to the local computer.

3.  On the local computer, open a Windows PowerShell window with administrator rights.

4.  Import the Microsoft UE-V PowerShell module, by typing the following command.

    ``` syntax
    Import-module UEV
    ```

5.  Unregister all the previously registered versions of the templates by typing the following command.

    ``` syntax
    Get-UevTemplate | Unregister-UevTemplate
    ```

    This will unregister all active templates on the computer.

6.  Register the updated templates by typing the following command.

    ``` syntax
    Register-UevTemplate <path to template folder>\*.xml
    ```

    This will register all of the settings location templates located in the specified template folder.

User Experience Virtualization provides the following set of WMI commands. Administrators can use these interfaces to manage settings location templates from Windows PowerShell and automate template administrative tasks.

**To manage settings location templates with WMI**

1.  Use an account with administrator rights to open a Windows PowerShell window.

2.  Use the following WMI commands to register and manage the UE-V settings location templates.

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
    <td align="left"><p>Get-WmiObject -Namespace root\Microsoft\UEV SettingsLocationTemplate | Select-Object TemplateId,TemplateName, TemplateVersion,Enabled | Format-Table -Autosize</p></td>
    <td align="left"><p>Lists all the settings location templates registered for the computer.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name Register -ArgumentList &lt;template path &gt;</p></td>
    <td align="left"><p>Registers a settings location template with UE-V.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name UnregisterByTemplateId -ArgumentList &lt;template ID&gt;</p></td>
    <td align="left"><p>Unregisters a settings location template with UE-V. As soon as a template is unregistered, UE-V will no longer synchronize the settings that are defined in the template between computers.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name EnableByTemplateId -ArgumentList &lt;template ID&gt;</p></td>
    <td align="left"><p>Enables a settings location template with UE-V</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name DisableByTemplateId -ArgumentList &lt;template ID&gt;</p></td>
    <td align="left"><p>Disables a settings location template with UE-V</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name Update -ArgumentList &lt;template path&gt;</p></td>
    <td align="left"><p>Updates a settings location template with UE-V. The new template should have a version that is higher than the existing one.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Invoke-WmiMethod -Namespace root\Microsoft\UEV -Class SettingsLocationTemplate -Name Validate -ArgumentList &lt;template path&gt;</p></td>
    <td align="left"><p>Determines whether a given settings location template complies with its XML schema.</p></td>
    </tr>
    </tbody>
    </table>

     

**How to deploy the UE-V agent with PowerShell**

1.  Stage the UE-V installer file in an accessible network share.

    **Note**  
    Use AgentSetup.exe to deploy both 32-bit and 64-bit versions of the UE-V Agent. Windows Installer Files versions, AgentSetupx86.msi and AgentSetupx64.msi, are available for each architecture. To uninstall the UE-V Agent at a later time using the installation file, you must use the same file type.

     

2.  Use one of the following PowerShell commands to install the agent.

    `& AgentSetup.exe /quiet /norestart /log "%temp%\UE-VAgentInstaller.log" SettingsStoragePath=\\server\settingsshare\%username%`

    `& msiexec.exe /i "<path to msi file>" /quiet /norestart /l*v "%temp%\UE-VAgentInstaller.log" SettingsStoragePath=\\server\settingsshare\%username%`

## Related topics


[Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI](managing-the-ue-v-10-agent-and-packages-with-powershell-and-wmi.md)

[Administering UE-V 1.0](administering-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





