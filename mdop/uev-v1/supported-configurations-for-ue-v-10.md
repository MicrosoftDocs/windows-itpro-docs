---
title: Supported Configurations for UE-V 1.0
description: Supported Configurations for UE-V 1.0
author: levinec
ms.assetid: d90ab83e-741f-48eb-b1d8-a64cb9259f7a
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Supported Configurations for UE-V 1.0


Microsoft User Experience Virtualization (UE-V) supports the following described configurations.

**Note**  
Microsoft provides support for the current service pack, and in some cases, the preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For more information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).

 

## Supported configurations for UE-V Agent and UE-V Generator


The following table lists the operating systems that support the User Experience Virtualization Generator and the User Experience Virtualization agent.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Operating system</strong></th>
<th align="left"><strong>Edition</strong></th>
<th align="left"><strong>Service pack</strong></th>
<th align="left"><strong>System architecture</strong></th>
<th align="left"><strong>Microsoft .NET Framework</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Ultimate, Enterprise, or Professional Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>.NET Framework 3.5 SP1</p>
<p>.NET Framework 4 (Generator)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, Data Center, or Web Server</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>.NET Framework 3.5 SP1</p>
<p>.NET Framework 4 (Generator)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>Enterprise or Professional Edition</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
<td align="left"><p>.NET Framework 4 or .NET Framework 3.5 SP1 (Agent)</p>
<p>.NET Framework 4 (Generator)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>.NET Framework 4 or .NET Framework 3.5 SP1 (Agent)</p>
<p>.NET Framework 4 (Generator)</p></td>
</tr>
</tbody>
</table>

 

There are no special RAM requirements that are specific to UE-V.

The installation of the UE-V agent requires administrative rights and will require a restart the computer before the UE-V agent can run.

**Important**  
The Sync Your Settings feature in Windows 8 must be disabled to allow UE-V to function properly. Synchronization of settings with both Windows 8 and UE-V will result in unpredictable synchronization behavior.

 

### <a href="" id="requirements-for-the-offline-files-feature-"></a>Requirements for the Offline Files feature

The UE-V agent can synchronize user settings for computers that are not always connected to the enterprise network, such as a laptop computer or computers that are located at remote offices, as well as computers that are always connected to the enterprise network, such as Windows Servers that host virtual desktop interface (VDI) sessions.

The UE-V default configuration uses the Windows Offline File feature to synchronize settings. Offline Files ensures that the user’s settings are available even when the computer leaves the enterprise network. Any changes that are made to settings are automatically synchronized with the settings storage location when the connection to the enterprise network is reestablished. Offline Files also ensures that the user’s settings are available for computers that are located in a remote office with a slow or limited connection.

To synchronize settings for computers that occasionally leave the enterprise network, the Offline Files feature must be enabled and started before the UE-V agent deployment begins. The Offline Files feature is enabled by default on Windows 7. The feature is disabled by default on Windows Server 2008 R2, Windows Server 2012, and Windows 8. If the Offline Files feature is not enabled, then UE-V settings synchronization will fail.

-   **Windows 7**

    The Offline Files feature is enabled by default on Windows 7. If necessary, Offline Files can be enabled by using the following command at an elevated command prompt:

    ``` syntax
    sc config CscService start=auto
    ```

-   **Windows 8**

    The Offline Files feature is disabled by default on Windows 8 version. Offline Files can be enabled on Windows 8 by using the following command at an elevated command prompt:

    ``` syntax
    sc config CscService start=auto
    ```

-   **Windows Server 2008 R2, and Windows Server 2012**

    The Offline Files feature is not installed by default on Windows Server 2008 R2 or Windows Server 2012. In order to enable the Offline Files feature, the Desktop Experience pack must be installed. This is an optional server component that includes the Offline Files feature. Once it is installed, start the Offline Files feature with the following commands at an elevated command prompt:

    ``` syntax
    sc config csc start= system
    ```

    ``` syntax
    sc config cscservice start= auto
    ```

The computer must be rebooted before the settings will start to synchronize.

### Synchronization for computers with always-available connections

When you use UE-V on computers that are always connected to the enterprise network, such as a Windows Server computer that hosts VDI sessions, then Offline Files should be disabled.

When the UE-V agent is configured to synchronize settings without using Offline Files, the settings storage server is treated as a standard network share. Settings are synchronized when the network is available. In this configuration the UE-V agent can be configured to give a notification if the import of the application settings is delayed.

If the Offline Files feature will not be used, you must disable the UE-V default behavior before or during the UE-V agent deployment. To disable Offline Files for UE-V, do one of the following:

-   Before you deploy the UE-V agent, mark the “Do not use Offline Files” checkbox in the UE-V Group Policy setting.

-   During UE-V installation, set the AgentSetup.exe parameter `SyncMethod = None` at the command prompt or in a batch file. For more information about how to deploy the agent, see [Deploying the UE-V Agent](deploying-the-ue-v-agent.md).

If you disable the Offline Files setting for UE-V and you do not specify the **SyncMethod** parameter at the installation time, the UE-V agent installation will fail. You can also disable the Offline Files with PowerShell or WMI. For more information about WMI and PowerShell commands, see [Managing the UE-V 1.0 Agent and Packages with PowerShell and WMI](managing-the-ue-v-10-agent-and-packages-with-powershell-and-wmi.md).

The computer must be rebooted before the settings will start to synchronize.

### Prerequisites for the UE-V PowerShell feature

The UE-V PowerShell feature of the agent requires .NET Framework version 3.5 SP1 to be enabled and PowerShell version 2.0 or higher.

### Prerequisites for UE-V Generator support

Install the UE-V Generator on the computer that is used to create custom settings location templates. This computer should have those applications installed whose settings will roam. You must be a member of the Administrators group on the computer that runs the UE-V Generator software. Additionally, the UE-V Generator must be installed on a computer that uses an NTFS file system. The UE-V Generator software requires .NET Framework version 4. For more information, see [Planning for Custom Template Deployment for UE-V 1.0](planning-for-custom-template-deployment-for-ue-v-10.md).

## Related topics


[Planning for UE-V 1.0](planning-for-ue-v-10.md)

[Preparing Your Environment for UE-V](preparing-your-environment-for-ue-v.md)

[Deploying UE-V 1.0](deploying-ue-v-10.md)

Supported Configurations for User Experience Virtualization
[Deploying the Settings Storage Location for UE-V 1.0](deploying-the-settings-storage-location-for-ue-v-10.md)

[Installing the UE-V Generator](installing-the-ue-v-generator.md)

[Deploying the UE-V Agent](deploying-the-ue-v-agent.md)

 

 





