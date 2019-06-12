---
title: Deploy Required Features for UE-V 2.x
description: Deploy Required Features for UE-V 2.x
author: levinec
ms.assetid: 10399bb3-cc7b-4578-bc0c-2f6b597abe4d
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploy Required Features for UE-V 2.x


All Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, and 2.1 SP1 deployments require these features

-   [Deploy a Settings Storage Location](#ssl) that is accessible to end users.

    This is a standard network share that stores and retrieves user settings.

-   [Choose the Configuration Method for UE-V](#config)

    UE-V can be deployed and configured using common management tools including group policy, Configuration Manager, or Windows Management Infrastructure and Powershell.

-   [Deploy a UE-V Agent](#agent) to be installed on every computer that synchronizes settings.

    This monitors registered applications and the operating system for any settings changes and synchronizes those settings between computers.

The topics in this section describe how to deploy these features.

## <a href="" id="ssl"></a>Deploy a UE-V Settings Storage Location


UE-V requires a location in which to store user settings in settings package files. You can configure this settings storage location in one of these ways:

-   Create your own settings storage location

-   Use existing Active Directory for your settings storage location

If you don’t create a settings storage location, the UE-V Agent will use Active Directory (AD) by default.

**Note**  
As a matter of [performance and capacity planning](https://technet.microsoft.com/library/dn458932.aspx#capacity) and to reduce problems with network latency, create settings storage locations on the same local networks where the users’ computers reside. We recommend 20 MB of disk space per user for the settings storage location.



### Create a UE-V Settings Storage Location

Before you define the settings storage location, you must create a root directory with read/write permissions for users who store settings on the share. The UE-V Agent creates user-specific folders under this root directory.

The settings storage location is defined by setting the SettingsStoragePath configuration option, which you can configure by using one of these methods:

-   When you [Deploy the UE-V Agent](#agent) through a command-line parameter or in a batch script

-   Through [Group Policy](https://technet.microsoft.com/library/dn458893.aspx) settings

-   With the [System Center Configuration Pack](https://technet.microsoft.com/library/dn458917.aspx) for UE-V

-   After installation of the UE-V Agent, by using [Windows PowerShell or Windows Management Instrumentation (WMI)](https://technet.microsoft.com/library/dn458937.aspx)

The path must be in a universal naming convention (UNC) path of the server and share. For example, **\\\\Server\\Settingsshare\\**. This configuration option supports the use of variables to enable specific synchronization scenarios. For example, you can use the `%username%\%computername%` variables to preserve the end user settings experience in these scenarios:

-   End users that use multiple physical computers in your enterprise

-   Enterprise computers that are used by multiple end users

The UE-V Agent dynamically creates a user-specific settings storage path, with a hidden system folder named `SettingsPackages`, based on the configuration setting of **SettingsStoragePath**. The agent reads and writes settings to this location as defined by the registered UE-V settings location templates.

**UE-V settings are determined by a "Last write wins" rule:** If the settings storage location is the same for user with multiple managed computers, one UE-V Agent reads and writes to the settings location independently of agents running on other computers. The last written settings and values are the ones applied when the next agent reads from the settings storage location.

**Deploy the settings storage location:** Follow these steps to define the settings storage location rather than using your existing Active Directory service. You should limit access to the settings storage share to those users that require it, as shown in the tables below.

**To deploy the UE-V network share**

1.  Create a new security group for UE-V users.

2.  Create a new folder on the centrally located computer that stores the UE-V settings packages, and then grant the UE-V users access with group permissions to the folder. The administrator who supports UE-V must have permissions to this shared folder.

3.  Set the following share-level Server Message Block (SMB) permissions for the settings storage location folder.

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>User account</strong></th>
    <th align="left"><strong>Recommended permissions</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Everyone</p></td>
    <td align="left"><p>No permissions</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Security group of UE-V users</p></td>
    <td align="left"><p>Full control</p></td>
    </tr>
    </tbody>
    </table>



4.  Set the following NTFS file system permissions for the settings storage location folder.

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left"><strong>User account</strong></th>
    <th align="left"><strong>Recommended permissions</strong></th>
    <th align="left"><strong>Folder</strong></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Creator/owner</p></td>
    <td align="left"><p>Full control</p></td>
    <td align="left"><p>Subfolders and files only</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Security group of UE-V users</p></td>
    <td align="left"><p>List folder/read data, create folders/append data</p></td>
    <td align="left"><p>This folder only</p></td>
    </tr>
    </tbody>
    </table>



With this configuration, the UE-V Agent creates and secures a Settingspackage folder while it runs in the context of the user, and grants each user permission to create folders for settings storage. Users receive full control to their Settingspackage folder while other users cannot access it.

**Note**  
If you create the settings storage share on a computer running a Windows Server operating system, configure UE-V to verify that either the local Administrators group or the current user is the owner of the folder where settings packages are stored. To enable this additional security, specify this setting in the Windows Server Registry Editor:

1.  Add a **REG\_DWORD** registry key named **"RepositoryOwnerCheckEnabled"** to **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\UEV\\Agent\\Configuration**.

2.  Set the registry key value to *1*.



### Use Active Directory with UE-V 2.x

The UE-V Agent uses Active Directory (AD) by default if a settings storage location is not otherwise defined. In these cases, the UE-V Agent dynamically creates the settings storage folder under the root of the AD home directory of each user. But, if a custom directory setting is configured in AD, then that directory is used instead.

## <a href="" id="config"></a>Choose the Configuration Method for UE-V 2.x


You want to figure out which configuration method you'll use to manage UE-V after deployment since this will be the configuration method you use to deploy the UE-V Agent. Typically, this is the configuration method that you already use in your environment, such as Windows PowerShell or Configuration Manager.

You can configure UE-V before, during, or after UE-V Agent installation, depending on the configuration method that you use.

-   [Group Policy](https://technet.microsoft.com/library/dn458893.aspx)**:** You can use your existing Group Policy infrastructure to configure UE-V before or after UE-V Agent deployment. The UE-V Group Policy ADMX template enables the central management of common UE-V Agent configuration options, and it includes settings to configure UE-V synchronization.

    **Installing the UE-V Group Policy ADMX Templates:** Group Policy ADMX templates for UE-V configure the synchronization settings for the UE-V Agent and enable the central management of common UE-V Agent configuration settings by using an existing Group Policy infrastructure.

    Supported operating systems for the domain controller that deploys the Group Policy Objects include the following:

    Windows Server 2008 R2

    Windows Server 2012 and Windows Server 2012 R2

-   [Configuration Manager](https://technet.microsoft.com/library/dn458917.aspx)**:** The UE-V Configuration Pack lets you use the Compliance Settings feature of System Center Configuration Manager 2012 SP1 or later to apply consistent configurations across sites where UE-V and Configuration Manager are installed.

-   [Windows PowerShell and WMI](https://technet.microsoft.com/library/dn458937.aspx)**:** You can use scripted commands for Windows PowerShell and Windows Management Instrumentation (WMI) to modify configurations after you install the UE-V Agent.

    **Note**  
    Registry modification can result in data loss, or the computer becomes unresponsive. We recommend that you use other configuration methods.



-   **Command-line or Batch Script Installation:** Parameters that are used when you [Deploy the UE-V Agent](#agent) configure many UE-V settings. Electronic software distribution systems, such as System Center 2012 Configuration Manager, use these parameters to configure their clients when they deploy and install the UE-V Agent software.

## <a href="" id="agent"></a>Deploy the UE-V 2.x Agent


The UE-V Agent is the core of a UE-V deployment and must run on each computer that uses UE-V to synchronize application and Windows settings.

**UE-V Agent Installation Files:** A single installation file, AgentSetup.exe, installs the UE-V Agent on both 32-bit and 64-bit operating systems. In addition, AgentSetupx86.msi or AgentSetupx64.msi architecture-specific Windows Installer files are provided, and since they are smaller, they might streamline the agent deployments. The [command-line parameters for the AgentSetup.exe installer](#params) are supported for the Windows Installer installation as well.

**Important**  
During UE-V Agent installation or uninstallation, you can either use the AgentSetup.exe file or the AgentSetup&lt;arch&gt;.msi file, but not both. The same file must be used to uninstall the UE-V Agent that was used to install the UE-V Agent.



### To Deploy the UE-V Agent

You can use the following methods to deploy the UE-V Agent:

-   An electronic software distribution (ESD) solution system, such as Configuration Manager, that can install a Windows Installer (.msi) file.

-   An installation script that references the Windows Installer (.msi) file that is stored centrally on a share.

-   An installation program that you run manually on the computer.

Use the following procedure to deploy the UE-V Agent from a network share.

**To install and configure the UE-V Agent from a network share**

1.  Stage the UE-V Agent installation file AgentSetup.exe on a network share to which users have Read permission.

2.  Deploy a script to user computers that installs the UE-V Agent. The script should specify the settings storage location.

**Deployment options:** Be sure to use the correct variable format when you install the UE-V Agent. The following table provides examples of deployment options for using the AgentSetup.exe or the Windows Installer (.msi) files.

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
<td align="left"><p>When you install the UE-V Agent at a command prompt, use the <em>%^username%</em> variable format. If quotation marks are required because of spaces in the settings storage path, use a batch script file for deployment.</p>
<p></p></td>
<td align="left"><p><code>AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%^username%</code></p>
<p></p>
<p><code>msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l<em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%^username%</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Batch script</p></td>
<td align="left"><p>When you install the UE-V Agent from a batch script file, use the <em>%%username%%</em> variable format. If you use this installation method, you must escape the variable with the %% characters. Without this character, the script expands the <em>username</em> variable at installation time, rather than at run time, which causes UE-V to use a single settings storage location for all users.</p></td>
<td align="left"><p><code>AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=&quot;\server\settingsshare%%username%%&quot;</code></p>
<p></p>
<p><code>msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l</em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=&quot;\server\settingsshare%%username%%&quot;</code></p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows PowerShell</p></td>
<td align="left"><p>When you install the UE-V Agent from a Windows PowerShell prompt or a Windows PowerShell script, use the <em>%username%</em> variable format.</p></td>
<td align="left"><p><code>&amp; AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%username%</code></p>
<p></p>
<p><code>&amp; msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l<em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare%username%</code></p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Electronic software distribution, such as deployment of Configuration Manager Software Deployment</p></td>
<td align="left"><p>When you install the UE-V Agent by using Configuration Manager, use the <em>^%username^%</em> variable format.</p></td>
<td align="left"><p><code>AgentSetup.exe /quiet /norestart /log &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare^%username^%</code></p>
<p></p>
<p><code>msiexec.exe /i &quot;&lt;path to msi file&gt;&quot; /quiet /norestart /l</em>v &quot;%temp%\UE-VAgentInstaller.log&quot; SettingsStoragePath=\server\settingsshare^%username^%</code></p></td>
</tr>
</tbody>
</table>



**Note**  
The installation of the UE-V Agent requires administrator rights, and the computer requires a restart before the UE-V Agent can run.



### <a href="" id="params"></a>Command-line parameters for UE-V Agent deployment

The command-line parameters of the UE-V Agent are as follows.

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
<td align="left"><p>Displays the AgentSetup.exe usage dialog box.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>SettingsStoragePath</p></td>
<td align="left"><p>Indicates the Universal Naming Convention (UNC) path that defines where settings are stored.</p></td>
<td align="left"><div class="alert">
<strong>Important</strong><br/><p>You must specify a SettingsStoragePath in UE-V 2.1 and UE-V 2.1 SP1. You can set the AdHomePath string to specify that the user&#39;s Active Directory home path is used. For example, <code>SettingsStoragePath = \share\path|AdHomePath</code>.</p>
<p>In UE-V 2.0, you can leave SettingsStoragePath blank to use the Active Directory home path instead.</p>
</div>
<div>

</div>
<p>%username% or %computername% environment variables are accepted. Scripting can require escaped variables.</p>
<p><strong>Default</strong>: &lt;none&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SettingsStoragePathReg</p></td>
<td align="left"><p>Gets the SettingsStoragePath value from the registry during installation.</p></td>
<td align="left"><p>At the command prompt, type the following example to force UE-V to use the Active Directory home path instead of a specific UNC.</p>
<p><code>msiexec.exe /i AgentSetupx64.msi acceptlicenseterms=true SettingsStoragePathReg=TRUE /quiet /norestart</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>SettingsTemplateCatalogPath</p></td>
<td align="left"><p>Indicates the Universal Naming Convention (UNC) path that defines the location that was checked for new settings location templates.</p></td>
<td align="left"><p>Only required for custom settings location templates</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RegisterMSTemplates</p></td>
<td align="left"><p>Specifies whether the default Microsoft templates should be registered during installation.</p></td>
<td align="left"><p>True | False</p>
<p><strong>Default</strong>: True</p></td>
</tr>
<tr class="even">
<td align="left"><p>SyncMethod</p></td>
<td align="left"><p>Specifies which synchronization method should be used.</p></td>
<td align="left"><p>SyncProvider | None</p>
<p><strong>Default</strong>: SyncProvider</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SyncTimeoutInMilliseconds</p></td>
<td align="left"><p>Specifies the number of milliseconds that the computer waits before time-out when it retrieves user settings from the settings storage location.</p></td>
<td align="left"><p><strong>Default</strong>: 2000 milliseconds</p>
<p>(wait up to 2 seconds)</p></td>
</tr>
<tr class="even">
<td align="left"><p>SyncEnabled</p></td>
<td align="left"><p>Specifies whether UE-V synchronization is enabled or disabled.</p></td>
<td align="left"><p>True | False</p>
<p><strong>Default</strong>: True</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MaxPackageSizeInBytes</p></td>
<td align="left"><p>Specifies a settings package file size in bytes when the UE-V Agent reports that files exceed the threshold.</p></td>
<td align="left"><p>&lt;size&gt;</p>
<p><strong>Default</strong>: none (no warning threshold)</p></td>
</tr>
<tr class="even">
<td align="left"><p>CEIPEnabled</p></td>
<td align="left"><p>Specifies the setting for participation in the Customer Experience Improvement program. If set to <strong>True</strong>, installer information is uploaded to the Microsoft Customer Experience Improvement Program site. If set to <strong>False</strong>, no information is uploaded.</p></td>
<td align="left"><p>True | False</p>
<p><strong>Default</strong>: False</p></td>
</tr>
<tr class="odd">
<td align="left"><p>NoRestart</p></td>
<td align="left"><p>Supports deferral of the restart of the computer after the UE-V Agent is installed.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>INSTALLFOLDER</p></td>
<td align="left"><p>Enables a different installation folder to be set for the UE-V Agent or UE-V Generator.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>MUENABLED</p></td>
<td align="left"><p>Enables Setup to accept the option to be included in the Microsoft Update program.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>ACCEPTLICENSETERMS</p></td>
<td align="left"><p>Lets UE-V be installed silently. This must be set to <strong>True</strong> to install UE-V silently and bypass the requirement that the user accepts the UE-V license terms. If set to <strong>False</strong> or left empty, the user receives an error message and UE-V is not installed.</p></td>
<td align="left"><div class="alert">
<strong>Important</strong><br/><p>This parameter is required to install UE-V silently.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>NORESTART</p></td>
<td align="left"><p>Prevents a mandatory restart after the UE-V Agent is installed.</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



### Update the UE-V Agent

Updates for the UE-V Agent software are provided through Microsoft Update. You can deploy UE-V Agent updates by using Enterprise Software Distribution (ESD) infrastructure systems.

During a UE-V Agent upgrade, the default group of settings location templates for common Microsoft applications and Windows settings can be updated.

### Upgrade the UE-V 2.x Agent

The UE-V 2.x Agent introduces many new features and modifies how and when the agent uploads content to the settings storage share. The upgrade process automates these changes. To upgrade the UE-V Agent, run the UE-V Agent install package (AgentSetup.exe, AgentSetupx86.msi, or AgentSetupx64.msi) on users’ computers.

**Note**  
When you upgrade the UE-V Agent, you must use the same installer type (.exe file or .msi packet) that installed the previous UE-V Agent. For example, use the UE-V 2 AgentSetup.exe to upgrade UE-V 1.0 Agents that were installed by using AgentSetup.exe.



The following configurations are preserved when the Agent Setup program runs:

-   Settings storage path

-   Registry settings

-   Scheduled tasks (Interval settings are reset to their defaults)

**Note**  
A computer with UE-V 2.x settings location templates that are registered in the UE-V 1.0 Agent register errors in the Windows Event Log.



You can use Microsoft System Center 2012 Configuration Manager or another enterprise software distribution tool to automate and distribute the UE-V Agent upgrade.

**Recommendations:** We recommend that you upgrade all of the UE-V 1.0 Agents in a computing environment, but it is not required. UE-V 2.x settings location templates can interact with a UE-V 1.0 Agent because they only share the settings from the settings storage path. We recommend, however, that you move the deployments to a single agent version to simplify management and to support UE-V.

### Repair the UE-V Agent after an unsuccessful upgrade

You might experience errors after you attempt one of the following operations:

-   Upgrade from UE-V 1.0 to UE-V 2

-   Upgrade to a newer version of Windows, for example, from Windows 7 to Windows 8 or from Windows 8 to Windows 8.1.

-   Uninstall the agent after upgrading the UE-V Agent

To resolve any issues, attempt to repair the UE-V Agent by entering this command at a command prompt on the computer where the agent is installed.

``` syntax
msiexec.exe /f "<path to msi file>" /quiet /norestart /l*v "%temp%\UE-VAgentInstaller.log
```

You can then retry the uninstall process or upgrade by installing the newer version of the UE-V Agent.






## Related topics


[Prepare a UE-V 2.x Deployment](prepare-a-ue-v-2x-deployment-new-uevv2.md)

[Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md)









