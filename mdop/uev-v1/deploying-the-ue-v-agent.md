---
title: Deploying the UE-V Agent
description: Deploying the UE-V Agent
author: levinec
ms.assetid: ec1c16c4-4be0-41ff-93bc-3e2b1afb5832
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploying the UE-V Agent


The Microsoft User Experience Virtualization (UE-V) agent must run on each computer that uses UE-V to roam application and Windows settings. A single installer file, AgentSetup.exe, installs the UE-V agent on both 32-bit and 64-bit operating systems. The command-line parameters of the UE-V Agent are the following:

**AgentSetup.exe command-line parameters**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Command-line parameter</strong></th>
<th align="left"><strong>Definition</strong></th>
<th align="left"><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>/help or /h or /?</p></td>
<td align="left"><p>Displays the AgentSetup.exe usage dialog.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>SettingsStoragePath</p></td>
<td align="left"><p>Indicates the Universal Naming Convention (UNC) path that defines where settings are stored.</p></td>
<td align="left"><p>%username% or %computername% environment variables are accepted. Scripting may require escaped variables.</p>
<p><strong>Default</strong>: &lt;none&gt; (Active Directory user home)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SettingsTemplateCatalogPath</p></td>
<td align="left"><p>Indicates the Universal Naming Convention (UNC) path that defines the location that was checked for new settings location templates.</p></td>
<td align="left"><p>Only required for custom settings location templates</p></td>
</tr>
<tr class="even">
<td align="left"><p>RegisterMSTemplates</p></td>
<td align="left"><p>Specifies whether the default Microsoft templates should be registered during installation.</p></td>
<td align="left"><p>True | False</p>
<p><strong>Default</strong>: True</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SyncMethod</p></td>
<td align="left"><p>Specifies which synchronization method should be used.</p></td>
<td align="left"><p>OfflineFiles | None</p>
<p><strong>Default</strong>: OfflineFiles</p></td>
</tr>
<tr class="even">
<td align="left"><p>SyncTimeoutInMilliseconds</p></td>
<td align="left"><p>Specifies the number of milliseconds that the computer waits before timeout when it retrieves user settings from the settings storage location.</p></td>
<td align="left"><p><strong>Default</strong>: 2000 milliseconds</p>
<p>(wait up to 2 seconds)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SyncEnabled</p></td>
<td align="left"><p>Specifies whether UE-V synchronization is enabled or disabled.</p></td>
<td align="left"><p>True | False</p>
<p><strong>Default</strong>: True</p></td>
</tr>
<tr class="even">
<td align="left"><p>MaxPackageSizeInBytes</p></td>
<td align="left"><p>Specifies a settings package file size in bytes when the UE-V agent reports that files exceed the threshold.</p></td>
<td align="left"><p>&lt;size&gt;</p>
<p><strong>Default</strong>: none (no warning threshold)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>CEIPEnabled</p></td>
<td align="left"><p>Specifies the setting for participation in the Customer Experience Improvement program. If set to true, then installer information is uploaded to the Microsoft Customer Experience Improvement Program site. If set to false, then no information is uploaded.</p></td>
<td align="left"><p>True | False</p>
<p><strong>Default</strong>: False</p>
<p><strong>On Windows 7</strong>: True</p></td>
</tr>
</tbody>
</table>

 

During installation, the SettingsStoragePath command-line parameter specifies the settings storage location for the settings values. A settings storage location can be defined before deploying the UE-V Agent. If no settings storage location is defined, then UE-V uses the Active Directory user Home Directory as the settings storage location. When you specify the SettingsStoragePath configuration during setup and use the %username% as part of the value, this will roam the same user settings experience on all computers or sessions that a user logs into. If you specify the %username%\\%computername% variables as part of the SettingsStoragePath value, this will preserve the settings experience for each computer.

Architecture-specific Windows Installer (.msi) files are provided for the UE-V agent installation in addition to the combined 32-bit and 64-bit installer. The AgentSetupx86.msi or AgentSetupx64.msi install files are smaller than the AgentSetup.exe file and might streamline the agent deployments. The command-line parameters for the AgentSetup.exe installer are supported for the Windows Installer (.msi) installation.

**Note**  
During UE-V agent installation or uninstallation you can either use the AgentSetup.exe file or the AgentSetup&lt;arch&gt;.msi file, but not both. The same file must be used to uninstall the UE-V Agent as it was used to install the UE-V Agent.

 

Be sure to use the correct variable format when you install the UE-V agent. The following table provides examples of deployment options for using the AgentSetup.exe or the Windows Installer (.msi) installation files.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Deployment type</strong></th>
<th align="left"><strong>Deployment description</strong></th>
<th align="left"><strong>Example</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Command prompt</p></td>
<td align="left"><p>When you install the UE-V agent from a command prompt, use the %^username% variable format. If quotation marks are needed because of spaces in the settings storage path, use a batch script file for deployment.</p>
<p></p></td>
<td align="left"><p><code>AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%^username%</code></p>
<p></p>
<p><code>msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l<em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%^username%</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Batch script</p></td>
<td align="left"><p>When you install the UE-V Agent from a batch script file, use the %%username%% variable format. If you use this install method, you must escape the variable with the %% characters. Without this character, the script expands the username variable at install time, rather than at run time, causing UE-V to use a single settings storage location for all users.</p></td>
<td align="left"><p><code>AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=&quot;\server\settingsshare%%username%%&quot;</code></p>
<p></p>
<p><code>msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l</em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=&quot;\server\settingsshare%%username%%&quot;</code></p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>PowerShell</p></td>
<td align="left"><p>When you install the UE-V agent from a PowerShell prompt or PowerShell script, use the %username% variable format.</p></td>
<td align="left"><p><code>&amp; AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%username%</code></p>
<p></p>
<p><code>&amp; msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l<em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%username%</code></p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Electronic software distribution, such as deployment of Configuration Manager Software Deployment)</p></td>
<td align="left"><p>When you install the UE-V Agent with Configuration Manager, use the ^%username^% variable format.</p></td>
<td align="left"><p><code>AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare^%username^%</code></p>
<p></p>
<p><code>msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l</em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare^%username^%</code></p></td>
</tr>
</tbody>
</table>

 

**Note**  
The installation of the U-EV Agent requires Administrator rights and the computer will require a restart before the UE-V agent can run.

 

## UE-V Agent deployment methods from a network share


You can use the following methods to deploy the UE-V agent:

-   An electronic software distribution (ESD) solution that can install a Windows Installer (.msi) file.

-   An installation script that references the Windows Installer (.msi) file that is stored centrally on a share.

-   Manually running the installation program on the computer.

To deploy the UE-V agent from a network share, use the following steps:

**To install and configure the UE-V Agent from a network share**

1.  Stage the UE-V agent installation file (AgentSetup.exe) on a network share to which users have “read” permission.

2.  Deploy a script to user computers that installs the UE-V agent. The script should specify the settings storage location.

**Update the UE-V Agent**

Updates for the UE-V agent software will be provided through Microsoft Update. During a UE-V agent upgrade, the default group of settings location templates for common Microsoft applications and Windows settings may be updated. UE-V agent updates can be deployed by using Enterprise Software Distribution (ESD) infrastructure.

## Related topics


[Deploying UE-V 1.0](deploying-ue-v-10.md)

[Supported Configurations for UE-V 1.0](supported-configurations-for-ue-v-10.md)

[Deploying the Settings Storage Location for UE-V 1.0](deploying-the-settings-storage-location-for-ue-v-10.md)

[Installing the UE-V Generator](installing-the-ue-v-generator.md)

Deploy the User Experience Virtualization Agent
 

 





