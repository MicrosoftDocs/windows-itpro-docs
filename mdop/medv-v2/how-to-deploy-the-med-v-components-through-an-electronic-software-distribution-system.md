---
title: How to Deploy the MED-V Components Through an Electronic Software Distribution System
description: How to Deploy the MED-V Components Through an Electronic Software Distribution System
author: levinec
ms.assetid: 8a800bdf-6fa4-47b4-b417-df053289d4e8
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 11/01/2016
---


# How to Deploy the MED-V Components Through an Electronic Software Distribution System


An electronic software distribution system can help you efficiently move software to many computers over slow or fast network connections. The following section provides information and instructions to help you deploy the Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 components throughout your enterprise by using a software distribution system.

**Note**  
Whichever software distribution solution that you use, you must be familiar with the requirements of your particular solution. If you are using System Center Configuration Manager 2007 R2 or a later version, see the [Configuration Manager Documentation Library](https://go.microsoft.com/fwlink/?LinkId=66999) in the Microsoft Technical Library (https://go.microsoft.com/fwlink/?LinkId=66999).



**Important**  
If you are using System Center Configuration Manager 2007 SP2 and your MED-V workspaces are configured to operate in **NAT** mode, the virtual machines are classified as Internet-based clients and cannot find the closest distribution points from which to download content.

The [hotfix to improve the functionality for VMs that are managed by MED-V](https://go.microsoft.com/fwlink/?LinkId=201088) (https://go.microsoft.com/fwlink/?LinkId=201088) adds new functionality to virtual machines that are managed by MED-V and that are configured to operate in **NAT** mode. The new functionality lets virtual machines access the closest distribution points. Therefore, the administrator can manage the virtual machine and the host computer in the same manner. This hotfix must be installed first on the site server and then on the client.

The update is publically available. However, you might be prompted to accept an agreement for Microsoft Services. Follow the prompts on the successive webpages to retrieve this hotfix.



**Note**  
You must install the MED-V workspace packager and build your MED-V workspaces before you can deploy the MED-V components through your software distribution system. For more information about how to prepare an image and to build your MED-V workspaces, see [Operations for MED-V](operations-for-med-v.md).



**To deploy the MED-V components by using a software distribution system**

1.  Define a group of computers and users in the electronic software distribution system as the target set of computers/users.

2.  Create packages for each Microsoft installation file that needs to be distributed. The following are the required files and the order in which they must be installed:

    1.  **Windows Virtual PC** – if not already installed (a computer restart is required). For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    2.  **Windows Virtual PC Additions and Updates** – if not already installed. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    3.  **MED-V Host Agent Installation File** – installs the Host Agent (MED-V\_HostAgent\_Setup installation file). For more information, see [How to Manually Install the MED-V Host Agent](how-to-manually-install-the-med-v-host-agent.md).

        **Warning**  
        Close Internet Explorer before you install the MED-V Host Agent, otherwise conflicts can occur later with URL redirection. You can also do this by specifying a computer restart during a distribution.   

    4.  **MED-V Workspace Installer, VHD, and Setup Executable** – created in the **MED-V Workspace Packager**. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

        **Important**  
        The compressed virtual hard disk file (.medv) and the Setup executable program (setup.exe) must be in the same folder as the MED-V workspace installer. Then, install the MED-V workspace installer by running setup.exe.

        **Tip**  
        Because problems that can occur when you install MED-V from a network location, we recommend that you copy the MED-V workspace setup files locally and then run setup.exe.       

3.  Configure the packages to run in silent mode (no user interaction is required).

    Running in silent mode eliminates the prompt to close Internet Explorer if it is running and the prompt to start the MED-V Host Agent. Both actions are performed when the computer is restarted.

    **Note**  
    Installation of Windows Virtual PC requires you to restart the computer. You can create a single installation process and install all the components at the same time if you suppress the restart and ignore the prerequisites necessary for MED-V to install. You can also do this by using command-line arguments. For an example of these arguments, see [To install the MED-V components by using a batch file](#bkmk-batch). MED-V automatically starts when the computer is restarted.

4.  Install MED-V and its components before installing Windows Virtual PC. See the example batch file later in this topic.

    **Important**  
    Select the **IGNORE\_PREREQUISITES** option as shown in the example batch file so that the MED-V components can be installed prior to the required VPC components. Install the MED-V components in this order to allow for the single restart.

5.  Identify any other requirements necessary for the installation and for your software distribution system, such as target platforms and the free disk space.

6.  Assign the packages to the target set of computers/users.

    As computers are running, the software distribution system client recognizes that new packages are available and begins to install the packages per the definition and requirements. The installations should run sequentially in silent mode. We recommend that this is performed as a single process that does not require a restart until all the packages are installed.

7.  After the installations are complete, restart the updated computers.

    Depending on the software distribution system, you can schedule a restart of the computer or the end users can restart the computers manually during their regular work. After the computer is restarted, MED-V automatically starts after an end user logs on. When MED-V starts for the first time, it runs first time setup.

First time setup starts and might take several minutes to finish, depending on the size of the virtual hard disk that you specified and the number of policies applied to the MED-V workspace on startup. The end user can track the progress by watching the MED-V icon in the notification area. For more information about first time setup, see [MED-V 2.0 Deployment Overview](med-v-20-deployment-overview.md).

<a href="" id="bkmk-batch"></a>**To install the MED-V components by using a batch file**

1.  Run the installation at a command prompt with administrative credentials.

2.  Deploy each component to a single directory. If run from a network share, a longer time is required to decompress the .medv file.

3.  As a best practice, specify that Windows Virtual PC and the Windows Virtual PC hotfix are installed after the MED-V Host Agent and the MED-V workspace package files. This means that Windows Update will not cause any interference with the installation process by requiring a restart.

4.  Restart the computer after the batch file is finished.

After the restart, the user is prompted to run first time setup and complete the configuration of MED-V.

The following example, with the specified arguments, shows how to install 64-bit MED-V components in a single process:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Argument</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>/norestart</p></td>
<td align="left"><p>Prevents the installation of Windows Virtual PC and the Windows Virtual PC update from restarting the host computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/quiet</p></td>
<td align="left"><p>Installs the MED-V components in quiet mode without user interaction.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/qn</p></td>
<td align="left"><p>Installs the MED-V components without a user interface.</p></td>
</tr>
<tr class="even">
<td align="left"><p>IGNORE_PREREQUISITES</p></td>
<td align="left"><p>Installs without checking for Windows Virtual PC.</p>
<div class="alert">
<strong>Note</strong><br/><p>Only specify this argument if you are installing Windows Virtual PC as part of this installation.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>OVERWRITEVHD</p></td>
<td align="left"><p>Forces the installation of the MED-V workspace and prevents any prompts that it might generate.</p></td>
</tr>
</tbody>
</table>



## Example


``` syntax
:: Install MED-V and the Pre-requisites

:: Install the MED-V Host Agent: install in quiet mode, ignore that Windows Virtual PC is not installed completely, and log results
start /WAIT .\MED-V_HostAgent_Setup.exe /qn IGNORE_PREREQUISITES=1 /l* %TEMP%\MEDVhost.log

:: Install the MED-V Workspace: install in quiet mode, Overwrite the VHD if it already exists, and log results
start /WAIT .\setup.exe /qn OVERWRITEVHD=1 /l* %TEMP%\MEDVworkspace.log

:: Install Windows Virtual PC: install in quiet mode and do not reboot
start /WAIT wusa.exe Windows6.1-KB958559-x64.msu /norestart /quiet

:: Install Windows Virtual PC patch to support non-HAV: install in quiet mode and do not reboot
wusa.exe Windows6.1-KB977206-x64.msu /norestart /quiet

:: After successful installation of the above components, a reboot of the host computer is required to complete installation.
```

## Related topics


[MED-V 2.0 Deployment Overview](med-v-20-deployment-overview.md)

[Deploy the MED-V Components](deploy-the-med-v-components.md)









