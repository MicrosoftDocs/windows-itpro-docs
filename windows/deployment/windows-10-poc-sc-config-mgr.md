---
title: Step by step - Deploy Windows 10 using System Center Configuration Manager
description: Deploy Windows 10 in a test lab using System Center Configuration Manager
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
keywords: deployment, automate, tools, configure, sccm
ms.localizationpriority: medium
ms.date: 10/11/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
author: dansimp
ms.topic: article
---

# Deploy Windows 10 in a test lab using System Center Configuration Manager

**Applies to**

-   Windows 10

**Important**: This guide leverages the proof of concept (PoC) environment, and some settings that are configured in the following guides:
- [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md)
- [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md)

Please complete all steps in these guides before attempting the procedures in this guide. If you wish to skip the Windows 10 deployment procedures in the MDT guide and move directly to this guide, you must at least install MDT and the Windows ADK before performing procedures in this guide. All steps in the first guide are required before attempting the procedures in this guide.

The PoC environment is a virtual network running on Hyper-V with three virtual machines (VMs):
- **DC1**: A contoso.com domain controller, DNS server, and DHCP server.
- **SRV1**: A dual-homed contoso.com domain member server, DNS server, and default gateway providing NAT service for the PoC network.
- **PC1**: A contoso.com member computer running Windows 7, Windows 8, or Windows 8.1 that has been cloned from a physical computer on your corporate network for testing purposes.
This guide leverages the Hyper-V server role to perform procedures. If you do not complete all steps in a single session, consider using [checkpoints](https://technet.microsoft.com/library/dn818483.aspx) and [saved states](https://technet.microsoft.com/library/ee247418.aspx) to pause, resume, or restart your work.

>Multiple features and services are installed on SRV1 in this guide. This is not a typical installation, and is only done to set up a lab environment with a bare minimum of resources. However, if less than 4 GB of RAM is allocated to SRV1 in the Hyper-V console, some procedures will be extremely slow to complete. If resources are limited on the Hyper-V host, consider reducing RAM allocation on DC1 and PC1, and then increasing the RAM allocation on SRV1. You can adjust RAM allocation for a VM by right-clicking the VM in the Hyper-V Manager console, clicking **Settings**, clicking **Memory**, and modifying the value next to **Maximum RAM**.

## In this guide

This guide provides end-to-end instructions to install and configure System Center Configuration Manager, and use it to deploy a Windows 10 image. Depending on the speed of your Hyper-V host, the procedures in this guide will require 6-10 hours to complete.

Topics and procedures in this guide are summarized in the following table. An estimate of the time required to complete each procedure is also provided. Time required to complete procedures will vary depending on the resources available to the Hyper-V host and assigned to VMs, such as processor speed, memory allocation, disk speed, and network speed.

<br>

<div style='font-size:9.0pt'>
<table border="1" cellspacing="0" cellpadding="0">
<tr><td BGCOLOR="#a0e4fa"><b>Topic</b><td BGCOLOR="#a0e4fa"><b>Description</b><td BGCOLOR="#a0e4fa"><b>Time</b>

<tr><td><a href="#install-prerequisites" data-raw-source="[Install prerequisites](#install-prerequisites)">Install prerequisites</a><td>Install prerequisite Windows Server roles and features, download, install and configure SQL Server, configure firewall rules, and install the Windows ADK.<td>60 minutes
<tr><td><a href="#install-system-center-configuration-manager" data-raw-source="[Install System Center Configuration Manager](#install-system-center-configuration-manager)">Install System Center Configuration Manager</a><td>Download System Center Configuration Manager, configure prerequisites, and install the package.<td>45 minutes
<tr><td><a href="#download-mdop-and-install-dart" data-raw-source="[Download MDOP and install DaRT](#download-mdop-and-install-dart)">Download MDOP and install DaRT</a><td>Download the Microsoft Desktop Optimization Pack 2015 and install DaRT 10.<td>15 minutes
<tr><td><a href="#prepare-for-zero-touch-installation" data-raw-source="[Prepare for Zero Touch installation](#prepare-for-zero-touch-installation)">Prepare for Zero Touch installation</a><td>Prerequisite procedures to support Zero Touch installation.<td>60 minutes
<tr><td><a href="#create-a-boot-image-for-configuration-manager" data-raw-source="[Create a boot image for Configuration Manager](#create-a-boot-image-for-configuration-manager)">Create a boot image for Configuration Manager</a><td>Use the MDT wizard to create the boot image in Configuration Manager.<td>20 minutes
<tr><td><a href="#create-a-windows-10-reference-image" data-raw-source="[Create a Windows 10 reference image](#create-a-windows-10-reference-image)">Create a Windows 10 reference image</a><td>This procedure can be skipped if it was done previously, otherwise instructions are provided to create a reference image.<td>0-60 minutes
<tr><td><a href="#add-a-windows-10-operating-system-image" data-raw-source="[Add a Windows 10 operating system image](#add-a-windows-10-operating-system-image)">Add a Windows 10 operating system image</a><td>Add a Windows 10 operating system image and distribute it.<td>10 minutes<tr><td><a href="#create-a-task-sequence" data-raw-source="[Create a task sequence](#create-a-task-sequence)">Create a task sequence</a><td>Create a Configuration Manager task sequence with MDT integration using the MDT wizard<td>15 minutes
<tr><td><a href="#finalize-the-operating-system-configuration" data-raw-source="[Finalize the operating system configuration](#finalize-the-operating-system-configuration)">Finalize the operating system configuration</a><td>Enable monitoring, configure rules, and distribute content.<td>30 minutes
<tr><td><a href="#deploy-windows-10-using-pxe-and-configuration-manager" data-raw-source="[Deploy Windows 10 using PXE and Configuration Manager](#deploy-windows-10-using-pxe-and-configuration-manager)">Deploy Windows 10 using PXE and Configuration Manager</a><td>Deploy Windows 10 using Configuration Manager deployment packages and task sequences.<td>60 minutes
<tr><td><a href="#replace-a-client-with-windows-10-using-configuration-manager" data-raw-source="[Replace a client with Windows 10 using Configuration Manager](#replace-a-client-with-windows-10-using-configuration-manager)">Replace a client with Windows 10 using Configuration Manager</a><td>Replace a client computer with Windows 10 using Configuration Manager.<td>90 minutes
<tr><td><a href="#refresh-a-client-with-windows-10-using-configuration-manager" data-raw-source="[Refresh a client with Windows 10 using Configuration Manager](#refresh-a-client-with-windows-10-using-configuration-manager)">Refresh a client with Windows 10 using Configuration Manager</a><td>Use a task sequence to refresh a client with Windows 10 using Configuration Manager and MDT<td>90 minutes

</table>

</div>

## Install prerequisites
1. Before installing System Center Configuration Manager, we must install prerequisite services and features. Type the following command at an elevated Windows PowerShell prompt on SRV1: 

    ```
    Install-WindowsFeature Web-Windows-Auth,Web-ISAPI-Ext,Web-Metabase,Web-WMI,BITS,RDC,NET-Framework-Features,Web-Asp-Net,Web-Asp-Net45,NET-HTTP-Activation,NET-Non-HTTP-Activ
    ```

    >If the request to add features fails, retry the installation by typing the command again.

2. Download [SQL Server 2014 SP2](https://www.microsoft.com/en-us/evalcenter/evaluate-sql-server-2014-sp2) from the Microsoft Evaluation Center as an .ISO file on the Hyper-V host computer. Save the file to the **C:\VHD** directory.
3. When you have downloaded the file **SQLServer2014SP2-FullSlipstream-x64-ENU.iso** and placed it in the C:\VHD directory, type the following command at an elevated Windows PowerShell prompt on the Hyper-V host: 

    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\SQLServer2014SP2-FullSlipstream-x64-ENU.iso
    ```

    This command mounts the .ISO file to drive D on SRV1.

4. Type the following command at an elevated Windows PowerShell prompt on SRV1 to install SQL Server:

    ```
    D:\setup.exe /q /ACTION=Install /ERRORREPORTING="False" /FEATURES=SQLENGINE,RS,IS,SSMS,TOOLS,ADV_SSMS,CONN /INSTANCENAME=MSSQLSERVER /INSTANCEDIR="C:\Program Files\Microsoft SQL Server" /SQLSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\ADMINISTRATORS" /SQLSVCSTARTUPTYPE=Automatic /AGTSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCSTARTUPTYPE=Automatic /RSSVCACCOUNT="NT AUTHORITY\System" /RSSVCSTARTUPTYPE=Automatic /ISSVCACCOUNT="NT AUTHORITY\System" /ISSVCSTARTUPTYPE=Disabled /ASCOLLATION="Latin1_General_CI_AS" /SQLCOLLATION="SQL_Latin1_General_CP1_CI_AS" /TCPENABLED="1" /NPENABLED="1" /IAcceptSQLServerLicenseTerms
    ```
    Installation will take several minutes. When installation is complete, the following output will be displayed:

    ```
    Microsoft (R) SQL Server 2014 12.00.5000.00
    Copyright (c) Microsoft Corporation.  All rights reserved.
    
    Microsoft (R) .NET Framework CasPol 2.0.50727.7905
    Copyright (c) Microsoft Corporation.  All rights reserved.
    
    Success
    Microsoft (R) .NET Framework CasPol 2.0.50727.7905
    Copyright (c) Microsoft Corporation.  All rights reserved.
    
    Success
    One or more affected files have operations pending.
    You should restart your computer to complete this process.
    PS C:\>
    ```
5. Type the following commands at an elevated Windows PowerShell prompt on SRV1:

    ```
    New-NetFirewallRule -DisplayName “SQL Server” -Direction Inbound –Protocol TCP –LocalPort 1433 -Action allow
    New-NetFirewallRule -DisplayName “SQL Admin Connection” -Direction Inbound –Protocol TCP –LocalPort 1434 -Action allow
    New-NetFirewallRule -DisplayName “SQL Database Management” -Direction Inbound –Protocol UDP –LocalPort 1434 -Action allow
    New-NetFirewallRule -DisplayName “SQL Service Broker” -Direction Inbound –Protocol TCP –LocalPort 4022 -Action allow
    New-NetFirewallRule -DisplayName “SQL Debugger/RPC” -Direction Inbound –Protocol TCP –LocalPort 135 -Action allow
    ```

7. Download and install the latest [Windows Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) on SRV1 using the default installation settings. The current version is the ADK for Windows 10, version 1703. Installation might require several minutes to acquire all components.   

## Install System Center Configuration Manager

1. On SRV1, temporarily disable IE Enhanced Security Configuration for Administrators by typing the following commands at an elevated Windows PowerShell prompt:

    ```
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 0
    Stop-Process -Name Explorer
    ```

2. Download [System Center Configuration Manager and Endpoint Protection](https://www.microsoft.com/en-us/evalcenter/evaluate-system-center-configuration-manager-and-endpoint-protection) on SRV1 (download the executable file anywhere on SRV1), double-click the file, enter **C:\configmgr** for **Unzip to folder**, and click **Unzip**. The C:\configmgr directory will be automatically created. Click **OK** and then close the **WinZip Self-Extractor** dialog box when finished.

3. Before starting the installation, verify that WMI is working on SRV1. See the following examples. Verify that **Running** is displayed under **Status** and **True** is displayed next to **TcpTestSucceeded**:

    ```
    Get-Service Winmgmt

    Status   Name               DisplayName
    ------   ----               -----------
    Running  Winmgmt            Windows Management Instrumentation

    Test-NetConnection -ComputerName 192.168.0.2 -Port 135 -InformationLevel Detailed

    ComputerName             : 192.168.0.2
    RemoteAddress            : 192.168.0.2
    RemotePort               : 135
    AllNameResolutionResults :
    MatchingIPsecRules       :
    NetworkIsolationContext  : Internet
    InterfaceAlias           : Ethernet
    SourceAddress            : 192.168.0.2
    NetRoute (NextHop)       : 0.0.0.0
    PingSucceeded            : True
    PingReplyDetails (RTT)   : 0 ms
    TcpTestSucceeded         : True
    ```
    You can also verify WMI using the WMI console by typing **wmimgmt.msc**, right-clicking **WMI Control (Local)** in the console tree, and then clicking **Properties**.

    If the WMI service is not started, attempt to start it or reboot the computer.  If WMI is running but errors are present, see [WMIDiag](https://blogs.technet.microsoft.com/askperf/2015/05/12/wmidiag-2-2-is-here/) for troubleshooting information.

4. To extend the Active Directory schema, type the following command at an elevated Windows PowerShell prompt:

    ```
    cmd /c C:\configmgr\SMSSETUP\BIN\X64\extadsch.exe
    ```

5. Temporarily switch to the DC1 VM, and type the following command at an elevated command prompt on DC1:

    ```
    adsiedit.msc
    ```

6. Right-click **ADSI Edit**, click **Connect to**, select **Default (Domain or server that you logged in to)** under **Computer** and then click **OK**.
7. Expand **Default naming context**>**DC=contoso,DC=com**, and then in the console tree right-click **CN=System**, point to **New**, and then click **Object**.
8. Click **container** and then click **Next**.
9. Next to **Value**, type **System Management**, click **Next**, and then click **Finish**.
10. Right-click **CN=system Management** and then click **Properties**.
11. On the **Security** tab, click **Add**, click **Object Types**, select **Computers**, and click **OK**.
12. Under **Enter the object names to select**, type **SRV1** and click **OK**.
13. The **SRV1** computer account will be highlighted, select **Allow** next to **Full control**.
14. Click **Advanced**, click **SRV1 (CONTOSO\SRV1$)** and click **Edit**.
15. Next to **Applies to**, choose **This object and all descendant objects**, and then click **OK** three times.
16. Close the ADSI Edit console and switch back to SRV1.
17. To start Configuration Manager installation, type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    cmd /c C:\configmgr\SMSSETUP\BIN\X64\Setup.exe
    ```
18. Provide the following in the System Center Configuration Manager Setup Wizard:
    - **Before You Begin**: Read the text and click *Next*.
    - **Getting Started**: Choose **Install a Configuration Manager primary site** and select the **Use typical installation options for a stand-alone primary site** checkbox.
        - Click **Yes** in response to the popup window.
    - **Product Key**: Choose **Install the evaluation edition of this Product**.
    - **Microsoft Software License Terms**: Read the terms and then select the **I accept these license terms** checkbox.
    - **Prerequisite Licenses**: Review license terms and select all three checkboxes on the page.
    - **Prerequisite Downloads**: Choose **Download required files** and enter **c:\windows\temp** next to **Path**. 
    - **Site and Installation Settings**: Site code: **PS1**, Site name: **Contoso**.
        - use default settings for all other options
    - **Usage Data**: Read the text and click **Next**.
    - **Service Connection Point Setup**: Accept the default settings (SRV1.contoso.com is automatically added under Select a server to use).
    - **Settings Summary**: Review settings and click **Next**.
    - **Prerequisite Check**: No failures should be listed. Ignore any warnings and click **Begin Install**.

    >There should be at most three warnings present: WSUS on site server, configuration for SQL Server memory usage, and SQL Server process memory allocation. These warnings can safely be ignored in this test environment.

    Depending on the speed of the Hyper-V host and resources allocated to SRV1, installation can require approximately one hour. Click **Close** when installation is complete. 

19. If desired, re-enable IE Enhanced Security Configuration at this time on SRV1:

    ```
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 1
    Stop-Process -Name Explorer
    ```

## Download MDOP and install DaRT

>[!IMPORTANT]
>This step requires an MSDN subscription or volume licence agreement. For more information, see [Ready for Windows 10: MDOP 2015 and more tools are now available](https://blogs.technet.microsoft.com/windowsitpro/2015/08/17/ready-for-windows-10-mdop-2015-and-more-tools-are-now-available/).
>If your organization qualifies and does not already have an MSDN subscription, you can obtain a [free MSDN subscription with BizSpark](https://blogs.msdn.microsoft.com/zainnab/2011/03/14/bizspark-free-msdn-subscription-for-start-up-companies/).

1. Download the [Microsoft Desktop Optimization Pack 2015](https://msdn.microsoft.com/subscriptions/downloads/#ProductFamilyId=597) to the Hyper-V host using an MSDN subscription. Download the .ISO file (mu_microsoft_desktop_optimization_pack_2015_x86_x64_dvd_5975282.iso, 2.79 GB) to the C:\VHD directory on the Hyper-V host.

2. Type the following command at an elevated Windows PowerShell prompt on the Hyper-V host to mount the MDOP file on SRV1:

    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\mu_microsoft_desktop_optimization_pack_2015_x86_x64_dvd_5975282.iso
    ```
3. Type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    cmd /c "D:\DaRT\DaRT 10\Installers\en-us\x64\MSDaRT100.msi"
    ```
4. Install DaRT 10 using default settings.
5. Type the following commands at an elevated Windows PowerShell prompt on SRV1:

    ```
    Copy-Item "C:\Program Files\Microsoft DaRT\v10\Toolsx64.cab" -Destination "C:\Program Files\Microsoft Deployment Toolkit\Templates\Distribution\Tools\x64"
    Copy-Item "C:\Program Files\Microsoft DaRT\v10\Toolsx86.cab" -Destination "C:\Program Files\Microsoft Deployment Toolkit\Templates\Distribution\Tools\x86"
    ```

## Prepare for Zero Touch installation

This section contains several procedures to support Zero Touch installation with System Center Configuration Manager.

### Create a folder structure

1. Type the following commands at a Windows PowerShell prompt on SRV1:

    ```
    New-Item -ItemType Directory -Path "C:\Sources\OSD\Boot"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\OS"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\Settings"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\Branding"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\MDT"
    New-Item -ItemType Directory -Path "C:\Logs"
    New-SmbShare -Name Sources$ -Path C:\Sources -ChangeAccess EVERYONE
    New-SmbShare -Name Logs$ -Path C:\Logs -ChangeAccess EVERYONE
    ```

### Enable MDT ConfigMgr integration

1. On SRV1, click **Start**, type **configmgr**, and then click **Configure ConfigMgr Integration**.
2. Type **PS1** next to **Site code**, and then click **Next**.
3. Verify **The process completed successfully** is displayed, and then click **Finish**.

### Configure client settings

1. On SRV1, click **Start**, type **configuration manager**, right-click **Configuration Manager Console**, and then click **Pin to Taskbar**.
2. Click **Desktop**, and then launch the Configuration Manager console from the taskbar.
3. If the console notifies you that an update is available, click **OK**. It is not necessary to install updates to complete this lab.
4. In the console tree, open the **Administration** workspace (in the lower left corner) and click **Client Settings**.
5. In the display pane, double-click **Default Client Settings**.
6. Click **Computer Agent**, next to **Organization name displayed in Software Center** type **Contoso**, and then click **OK**.

### Configure the network access account

1. In the Administration workspace, expand **Site Configuration** and click **Sites**.
2. On the **Home** ribbon at the top of the console window, click **Configure Site Components** and then click **Software Distribution**.
3. On the **Network Access Account** tab, choose **Specify the account that accesses network locations**.
4. Click the yellow starburst and then click **New Account**.
5. Click **Browse** and then under **Enter the object name to select**, type **CM_NAA** and click **OK**.
6. Next to **Password** and **Confirm Password**, type <strong>pass@word1</strong>, and then click **OK** twice.

### Configure a boundary group

1. In the Administration workspace, expand **Hierarchy Configuration**, right-click **Boundaries** and then click **Create Boundary**.
2. Next to **Description**, type **PS1**, next to **Type** choose **Active Directory Site**, and then click **Browse**.
3. Choose **Default-First-Site-Name** and then click **OK** twice.
4. In the Administration workspace, right-click **Boundary Groups** and then click **Create Boundary Group**.
5. Next to **Name**, type **PS1 Site Assignment and Content Location**, click **Add**, select the **Default-First-Site-Name** boundary and then click **OK**.
6. On the **References** tab in the **Create Boundary Group** window select the **Use this boundary group for site assignment** checkbox.
7. Click **Add**, select the **\\\SRV1.contoso.com** checkbox, and then click **OK** twice.

### Add the state migration point role

1. In the Administration workspace, expand **Site Configuration**, click **Sites**, and then in on the **Home** ribbon at the top of the console click **Add Site System Roles**.
2. In the Add site System Roles Wizard, click **Next** twice and then on the Specify roles for this server page, select the **State migration point** checkbox.
3. Click **Next**, click the yellow starburst, type **C:\MigData** for the **Storage folder**, and click **OK**.
4. Click **Next**, and then verify under **Boundary groups** that **PS1 Site Assignment and Content Location** is displayed.
5. Click **Next** twice and then click **Close**.

### Enable PXE on the distribution point

>[!IMPORTANT]
>Before enabling PXE in Configuration Manager, ensure that any previous installation of WDS does not cause conflicts. Configuration Manager will automatically configure the WDS service to manage PXE requests. To disable a previous installation, if it exists, type the following commands at an elevated Windows PowerShell prompt on SRV1:

```
WDSUTIL /Set-Server /AnswerClients:None
```

1. Deterime the MAC address of the internal network adapter on SRV1. To determine this, type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    (Get-NetAdapter "Ethernet").MacAddress
    ```
    >If the internal network adapter, assigned an IP address of 192.168.0.2, is not named "Ethernet" then replace the name "Ethernet" in the previous command with the name of this network adapter. You can review the names of network adapters and the IP addresses assigned to them by typing **ipconfig**.

2. In the System Center Configuration Manager console, in the **Administration** workspace, click **Distribution Points**.
3. In the display pane, right-click **SRV1.CONTOSO.COM** and then click **Properties**.
4. On the PXE tab, select the following settings:
   - **Enable PXE support for clients**. Click **Yes** in the popup that appears.
   - **Allow this distribution point to respond to incoming PXE requests**
   - **Enable unknown computer support**. Click **OK** in the popup that appears.
   - **Require a password when computers use PXE**
   - **Password** and **Confirm password**: pass@word1
   - **Respond to PXE requests on specific network interfaces**: Click the yellow starburst and then enter the MAC address determined in the first step of this procedure.

     See the following example:

     <img src="images/sccm-pxe.png" alt="Config Mgr PXE"/>

5. Click **OK**.
6. Wait for a minute, then type the following command at an elevated Windows PowerShell prompt on SRV1, and verify that the files displayed are present:

    ```
    cmd /c dir /b C:\RemoteInstall\SMSBoot\x64

    abortpxe.com
    bootmgfw.efi
    bootmgr.exe
    pxeboot.com
    pxeboot.n12
    wdsmgfw.efi
    wdsnbp.com
    ```
    >If these files are not present in the C:\RemoteInstall directory, verify that the REMINST share is configured as C:\RemoteInstall. You can view the properties of this share by typing "net share REMINST" at a command prompt. If the share path is set to a different value, then replace C:\RemoteInstall with your REMINST share path. 
    >You can also type the following command at an elevated Windows PowerShell prompt to open the Configuration Manager Trace Log Tool. In the tool, click **File**, click **Open**, and then open the **distmgr.log** file. If errors are present, they will be highlighted in red:

    ```
    Invoke-Item 'C:\Program Files\Microsoft Configuration Manager\tools\cmtrace.exe'
    ```

    The log file will updated continuously while Configuration Manager is running. Wait for Configuration Manager to repair any issues that are present, and periodically re-check that the files are present in the REMINST share location. Close the Configuration Manager Trace Log Tool when done. You will see the following line in distmgr.log that indicates the REMINST share is being populated with necessary files:

    Running: WDSUTIL.exe /Initialize-Server /REMINST:"C:\RemoteInstall"

    Once the files are present in the REMINST share location, you can close the cmtrace tool.

### Create a branding image file 

1. If you have a bitmap (.BMP) image for suitable use as a branding image, copy it to the C:\Sources\OSD\Branding folder on SRV1. Otherwise, use the following step to copy a simple branding image.
2. Type the following command at an elevated Windows PowerShell prompt:

    ```
    copy "C:\ProgramData\Microsoft\User Account Pictures\user.bmp" "C:\Sources\OSD\Branding\contoso.bmp"
    ```
    >You can open C:\Sources\OSD\Branding\contoso.bmp in MSPaint.exe if desired to customize this image.


### Create a boot image for Configuration Manager 

1. In the Configuration Manager console, in the **Software Library** workspace, expand **Operating Systems**, right-click **Boot Images**, and then click **Create Boot Image using MDT**.
2. On the Package Source page, under **Package source folder to be created (UNC Path):**, type **\\\SRV1\Sources$\OSD\Boot\Zero Touch WinPE x64**, and then click **Next**.
    - The Zero Touch WinPE x64 folder does not yet exist. The folder will be created later.
3. On the General Settings page, type **Zero Touch WinPE x64** next to **Name**, and click **Next**.
4. On the Options page, under **Platform** choose **x64**, and click **Next**.
5. On the Components page, in addition to the default selection of **Microsoft Data Access Components (MDAC/ADO) support**, select the **Microsoft Diagnostics and Recovery Toolkit (DaRT)** checkbox, and click **Next**.
6. On the Customization page, select the **Use a custom background bitmap file** checkbox, and under **UNC path**, type or browse to **\\\SRV1\Sources$\OSD\Branding\contoso.bmp**, and then click **Next** twice. It will take a few minutes to generate the boot image.
7. Click **Finish**.
8. In the console display pane, right-click the **Zero Touch WinPE x64** boot image, and then click **Distribute Content**.
9. In the Distribute Content Wizard, click **Next**, click **Add** and select **Distribution Point**, select the **SRV1.CONTOSO.COM** checkbox, click **OK**, click **Next** twice, and then click **Close**.
10. Use the CMTrace application to view the **distmgr.log** file again and verify that the boot image has been distributed. To open CMTrace, type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    Invoke-Item 'C:\Program Files\Microsoft Configuration Manager\tools\cmtrace.exe'
    ```
    
    In the trace tool, click **Tools** on the menu and choose **Find**. Search for "**STATMSG: ID=2301**". For example:

    ```
    STATMSG: ID=2301 SEV=I LEV=M SOURCE="SMS Server" COMP="SMS_DISTRIBUTION_MANAGER" SYS=SRV1.CONTOSO.COM SITE=PS1 PID=924 TID=1424 GMTDATE=Tue Oct 09 22:36:30.986 2018 ISTR0="Zero Touch WinPE x64" ISTR1="PS10000A" ISTR2="" ISTR3="" ISTR4="" ISTR5="" ISTR6="" ISTR7="" ISTR8="" ISTR9="" NUMATTRS=1 AID0=400 AVAL0="PS10000A"	SMS_DISTRIBUTION_MANAGER	10/9/2018 3:36:30 PM	1424 (0x0590)
    ```

11. You can also review status by clicking the **Zero Touch WinPE x64** image, and then clicking **Content Status** under **Related Objects** in the bottom right-hand corner of the console, or by entering **\Monitoring\Overview\Distribution Status\Content Status** on the location bar in the console. Double-click **Zero Touch WinPE x64** under **Content Status** in the console tree and verify that a status of **Successfully distributed content** is displayed on the **Success** tab.
12. Next, in the **Software Library** workspace, double-click **Zero Touch WinPE x64** and then click the **Data Source** tab.
13. Select the **Deploy this boot image from the PXE-enabled distribution point** checkbox, and click **OK**.
14. Review the distmgr.log file again for "**STATMSG: ID=2301**" and verify that there are three folders under **C:\RemoteInstall\SMSImages** with boot images. See the following example:

    ```
    cmd /c dir /s /b C:\RemoteInstall\SMSImages

    C:\RemoteInstall\SMSImages\PS100004
    C:\RemoteInstall\SMSImages\PS100005
    C:\RemoteInstall\SMSImages\PS100006
    C:\RemoteInstall\SMSImages\PS100004\boot.PS100004.wim
    C:\RemoteInstall\SMSImages\PS100005\boot.PS100005.wim
    C:\RemoteInstall\SMSImages\PS100006\WinPE.PS100006.wim
    ```

    >The first two images (*.wim files) are default boot images. The third is the new boot image with DaRT.

### Create a Windows 10 reference image

If you have already completed steps in [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md) then you have already created a Windows 10 reference image. In this case, skip to the next procedure in this guide: [Add a Windows 10 operating system image](#add-a-windows-10-operating-system-image). If you have not yet created a Windows 10 reference image, complete the steps in this section.

1. In [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md) the Windows 10 Enterprise .iso file was saved to the c:\VHD directory as **c:\VHD\w10-enterprise.iso**. The first step in creating a deployment share is to mount this file on SRV1.  To mount the Windows 10 Enterprise DVD on SRV1, open an elevated Windows PowerShell prompt on the Hyper-V host computer and type the following command:

    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\w10-enterprise.iso
    ```
2. Verify that the Windows Enterprise installation DVD is mounted on SRV1 as drive letter D.

3. The Windows 10 Enterprise installation files will be used to create a deployment share on SRV1 using the MDT deployment workbench. To open the deployment workbench, click **Start**, type **deployment**, and then click **Deployment Workbench**.

4. In the Deployment Workbench console, right-click **Deployment Shares** and select **New Deployment Share**.

5. Use the following settings for the New Deployment Share Wizard:
    - Deployment share path: **C:\MDTBuildLab**<br>
    - Share name: **MDTBuildLab$**<br>
    - Deployment share description: **MDT build lab**<br>
    - Options: click **Next** to accept the default<br>
    - Summary: click **Next**<br>
    - Progress: settings will be applied<br>
    - Confirmation: click **Finish**

6. Expand the **Deployment Shares** node, and then expand **MDT build lab**.

7. Right-click the **Operating Systems** node, and then click **New Folder**. Name the new folder **Windows 10**. Complete the wizard using default values and click **Finish**.

7. Right-click the **Windows 10** folder created in the previous step, and then click **Import Operating System**.

8. Use the following settings for the Import Operating System Wizard: 
    - OS Type: **Full set of source files**<br>
    - Source: **D:\\** <br>
    - Destination: **W10Ent_x64**<br>
    - Summary: click **Next**
    - Confirmation: click **Finish**

9. For purposes of this test lab, we will not add applications, such as Microsoft Office, to the deployment share. For information about adding applications, see the [Add applications](deploy-windows-mdt/create-a-windows-10-reference-image.md#sec03) section of the [Create a Windows 10 reference image](deploy-windows-mdt/create-a-windows-10-reference-image.md) topic in the TechNet library.

10. The next step is to create a task sequence to reference the operating system that was imported. To create a task sequence, right-click the **Task Sequences** node under **MDT Build Lab** and then click **New Task Sequence**. Use the following settings for the New Task Sequence Wizard:
    - Task sequence ID: **REFW10X64-001**<br>
    - Task sequence name: **Windows 10 Enterprise x64 Default Image** <br>
    - Task sequence comments: **Reference Build**<br>
    - Template: **Standard Client Task Sequence**
    - Select OS: click **Windows 10 Enterprise Evaluation in W10Ent_x64 install.wim**
    - Specify Product Key: **Do not specify a product key at this time**
    - Full Name: **Contoso**
    - Organization: **Contoso**
    - Internet Explorer home page: **http://www.contoso.com**
    - Admin Password: **Do not specify an Administrator password at this time**
    - Summary: click **Next**
    - Confirmation: click **Finish**

11. Edit the task sequence to add the Microsoft NET Framework 3.5, which is required by many applications. To edit the task sequence, double-click **Windows 10 Enterprise x64 Default Image** that was created in the previous step.

12. Click the **Task Sequence** tab. Under **State Restore** click **Tatto** to highlight it, then click **Add** and choose **New Group**. A new group will be added under Tattoo.

13. On the Properties tab of the group that was created in the previous step, change the Name from New Group to **Custom Tasks (Pre-Windows Update)** and then click **Apply**. To see the name change, click **Tattoo**, then click the new group again.

14. Click the **Custom Tasks (Pre-Windows Update)** group again, click **Add**, point to **Roles**, and then click **Install Roles and Features**. 

15. Under **Select the roles and features that should be installed**, select **.NET Framework 3.5 (includes .NET 2.0 and 3.0)** and then click **Apply**.

16. Enable Windows Update in the task sequence by clicking the **Windows Update (Post-Application Installation)** step, clicking the **Options** tab, and clearing the **Disable this step** checkbox.
    >Note: Since we are not installing applications in this test lab, there is no need to enable the Windows Update Pre-Application Installation step. However, you should enable this step if you are also installing applications.

17. Click **OK** to complete editing the task sequence.

18. The next step is to configure the MDT deployment share rules. To configure rules in the Deployment Workbench, right-click MDT build lab (C:\MDTBuildLab) and click **Properties**, and then click the **Rules** tab.

19. Replace the default rules with the following text:

    ```
    [Settings]
    Priority=Default

    [Default]
    _SMSTSORGNAME=Contoso
    UserDataLocation=NONE
    DoCapture=YES
    OSInstall=Y
    AdminPassword=pass@word1
    TimeZoneName=Pacific Standard TimeZoneName
    OSDComputername=#Left("PC-%SerialNumber%",7)#
    JoinWorkgroup=WORKGROUP
    HideShell=YES
    FinishAction=SHUTDOWN
    DoNotCreateExtraPartition=YES
    ApplyGPOPack=NO
    SkipAdminPassword=YES
    SkipProductKey=YES
    SkipComputerName=YES
    SkipDomainMembership=YES
    SkipUserData=YES
    SkipLocaleSelection=YES
    SkipTaskSequence=NO
    SkipTimeZone=YES
    SkipApplications=YES
    SkipBitLocker=YES
    SkipSummary=YES
    SkipRoles=YES
    SkipCapture=NO
    SkipFinalSummary=NO
    ```

20. Click **Apply** and then click **Edit Bootstrap.ini**. Replace the contents of the Bootstrap.ini file with the following text, and save the file:

    ```
    [Settings]
    Priority=Default

    [Default]
    DeployRoot=\\SRV1\MDTBuildLab$
    UserDomain=CONTOSO
    UserID=MDT_BA
    UserPassword=pass@word1
    SkipBDDWelcome=YES
    ```

21. Click **OK** to complete the configuration of the deployment share.

22. Right-click **MDT build lab (C:\MDTBuildLab)** and then click **Update Deployment Share**.

23. Accept all default values in the Update Deployment Share Wizard by clicking **Next**.  The update process will take 5 to 10 minutes. When it has completed, click **Finish**.

24. Copy **c:\MDTBuildLab\Boot\LiteTouchPE_x86.iso** on SRV1 to the **c:\VHD** directory on the Hyper-V host computer. Note that in MDT, the x86 boot image can deploy both x86 and x64 operating systems, except on computers based on Unified Extensible Firmware Interface (UEFI).

    >Hint: Top copy the file, right-click the **LiteTouchPE_x86.iso** file and click **Copy** on SRV1, then open the **c:\VHD** folder on the Hyper-V host, right-click inside the folder and click **Paste**. 

25. Open a Windows PowerShell prompt on the Hyper-V host computer and type the following commands:

    ```
    New-VM –Name REFW10X64-001 -SwitchName poc-internal -NewVHDPath "c:\VHD\REFW10X64-001.vhdx" -NewVHDSizeBytes 60GB 
    Set-VMMemory -VMName REFW10X64-001 -DynamicMemoryEnabled $true -MinimumBytes 1024MB -MaximumBytes 1024MB -Buffer 20
    Set-VMDvdDrive -VMName REFW10X64-001 -Path c:\VHD\LiteTouchPE_x86.iso
    Start-VM REFW10X64-001
    vmconnect localhost REFW10X64-001
    ```
26. In the Windows Deployment Wizard, select **Windows 10 Enterprise x64 Default Image**, and then click **Next**.

27. Accept the default values on the Capture Image page, and click **Next**. Operating system installation will complete after 5 to 10 minutes and then the VM will reboot automatically. Allow the system to boot normally (do not press a key). The process is fully automated.

    Additional system restarts will occur to complete updating and preparing the operating system. Setup will complete the following procedures:

    - Install the Windows 10 Enterprise operating system.
    - Install added applications, roles, and features.
    - Update the operating system using Windows Update (or WSUS if optionally specified).
    - Stage Windows PE on the local disk.
    - Run System Preparation (Sysprep) and reboot into Windows PE.
    - Capture the installation to a Windows Imaging (WIM) file.
    - Turn off the virtual machine.

    This step requires from 30 minutes to 2 hours, depending on the speed of the Hyper-V host and your network's download speed. After some time, you will have a Windows 10 Enterprise x64 image that is fully patched and has run through Sysprep. The image is located in the C:\MDTBuildLab\Captures folder on SRV1. The file name is **REFW10X64-001.wim**. 

### Add a Windows 10 operating system image

1. Type the following commands at an elevated Windows PowerShell prompt on SRV1:

    ```
    New-Item -ItemType Directory -Path "C:\Sources\OSD\OS\Windows 10 Enterprise x64"
    cmd /c copy /z "C:\MDTBuildLab\Captures\REFW10X64-001.wim" "C:\Sources\OSD\OS\Windows 10 Enterprise x64"
    ```

2. In the Configuration Manager console, in the **Software Library** workspace, expand **Operating Systems**, right-click **Operating System Images**, and then click **Add Operating System Image**.

3. On the Data Source page, under **Path:**, type or browse to **\\\SRV1\Sources$\OSD\OS\Windows 10 Enterprise x64\REFW10X64-001.wim**, and click **Next**.

4. On the General page, next to **Name:**, type **Windows 10 Enterprise x64**, click **Next** twice, and then click **Close**.

5. Distribute the operating system image to the SRV1 distribution point by right-clicking the **Windows 10 Enterprise x64** operating system image and then clicking **Distribute Content**.

6. In the Distribute Content Wizard, click **Next**, click **Add**, click **Distribution Point**, add the **SRV1.CONTOSO.COM** distribution point, click **OK**, click **Next** twice and then click **Close**.

7. Enter **\Monitoring\Overview\Distribution Status\Content Status** on the location bar (be sure there is no space at the end of the location or you will get an error), click **Windows 10 Enterprise x64**, and monitor the status of content distribution until it is successful and no longer in progress. Refresh the view with the F5 key or by right-clicking **Windows 10 Enterprise x64** and clicking **Refresh**. Processing of the image on the site server can take several minutes.

    >If content distribution is not successful, verify that sufficient disk space is available.

### Create a task sequence

>Complete this section slowly. There are a large number of similar settings from which to choose.

1. In the Configuration Manager console, in the **Software Library** workspace expand **Operating Systems**, right-click **Task Sequences**, and then click **Create MDT Task Sequence**.

2. On the Choose Template page, select the **Client Task Sequence** template and click **Next**.

3. On the General page, type **Windows 10 Enterprise x64** under **Task sequence name:** and then click **Next**.

4. On the Details page, enter the following settings:
   - Join a domain: **contoso.com**
   - Account: click **Set**
     - User name: **contoso\CM_JD**
     - Password: <strong>pass@word1</strong>
     - Confirm password: <strong>pass@word1</strong>
     - Click **OK**
   - Windows Settings
       - User name: **Contoso**
       - Organization name: **Contoso**
       - Product key: \<blank\>
   - Administrator Account: **Enable the account and specify the local administrator password**
     - Password: <strong>pass@word1</strong>
     - Confirm password: <strong>pass@word1</strong>
   - Click **Next**
 
5. On the Capture Settings page, accept the default settings and click **Next**.

6. On the Boot Image page, browse and select the **Zero Touch WinPE x64** boot image package, click **OK**, and then click **Next**.

7. On the MDT Package page, select **Create a new Microsoft Deployment Toolkit Files package**, under **Package source folder to be created (UNC Path):**, type **\\\SRV1\Sources$\OSD\MDT\MDT** (MDT is repeated here, not a typo), and then click **Next**.

8. On the MDT Details page, next to **Name:** type **MDT** and then click **Next**.

9. On the OS Image page, browse and select the **Windows 10 Enterprise x64** package, click **OK**, and then click **Next**.

10. On the Deployment Method page, accept the default settings for **Zero Touch Installation** and click **Next**.

11. On the Client Package page, browse and select the **Microsoft Corporation Configuration Manager Client package**, click **OK**, and then click **Next**.

12. On the USMT Package page, browse and select the **Microsoft Corporation User State Migration Tool for Windows 10.0.14393.0** package, click **OK**, and then click **Next**.

13. On the Settings Package page, select **Create a new settings package**, and under **Package source folder to be created (UNC Path):**, type **\\\SRV1\Sources$\OSD\Settings\Windows 10 x64 Settings**, and then click **Next**.

14. On the Settings Details page, next to **Name:**, type **Windows 10 x64 Settings**, and click **Next**.

15. On the Sysprep Package page, click **Next** twice.

16. On the Confirmation page, click **Finish**.

### Edit the task sequence

1. In the Configuration Manager console, in the **Software Library** workspace, click **Task Sequences**, right-click **Windows 10 Enterprise x64**, and then click **Edit**.

2. Scroll down to the **Install** group and click the **Set Variable for Drive Letter** action.

3. Change the Value under **OSDPreserveDriveLetter** from **False** to **True**, and then click **Apply**.

4. In the **State Restore** group, click the **Set Status 5** action, click **Add** in the upper left corner, point to **User State**, and click **Request State Store**. This adds a new action immediately after **Set Status 5**.

5. Configure the **Request State Store** action that was just added with the following settings:<br>
    - Request state storage location to: **Restore state from another computer**<br>
    - Select the **If computer account fails to connect to state store, use the Network Access account** checkbox.<br>
    - Options tab: Select the **Continue on error** checkbox.<br>
    - Add Condition: **Task Sequence Variable**:<br>
        - Variable: **USMTLOCAL** <br>
        - Condition: **not equals**<br>
        - Value: **True**<br>
        - Click **OK**.<br>
    - Click **Apply**<br>.

6. In the **State Restore** group, click **Restore User State**, click **Add**, point to **User State**, and click **Release State Store**.

7. Configure the **Release State Store** action that was just added with the following settings:<br>
    - Options tab: Select the **Continue on error** checkbox.<br>
    - Add Condition: **Task Sequence Variable**:<br>
        - Variable: **USMTLOCAL** <br>
        - Condition: **not equals**<br>
        - Value: **True**<br>
        - Click **OK**.<br>
    - Click **OK**<br>.


### Finalize the operating system configuration

>If you completed all procedures in [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md) then the MDT deployment share is already present on SRV1.  In this case, skip the first four steps below and begin with step 5 to edit CustomSettings.ini.

1. In the MDT deployment workbench on SRV1, right-click **Deployment Shares** and then click **New Deployment Share**.

2. Use the following settings for the New Deployment Share Wizard:
    - Deployment share path: **C:\MDTProduction**<br>
    - Share name: **MDTProduction$**<br>
    - Deployment share description: **MDT Production**<br>
    - Options: click **Next** to accept the default<br>
    - Summary: click **Next**<br>
    - Progress: settings will be applied<br>
    - Confirmation: click **Finish**

3. Right-click the **MDT Production** deployment share, and click **Properties**. 

4. Click the **Monitoring** tab, select the **Enable monitoring for this deployment share** checkbox, and then click **OK**.

5. Type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    notepad "C:\Sources\OSD\Settings\Windows 10 x64 Settings\CustomSettings.ini"
    ```
6. Replace the contents of the file with the following text, and then save the file:

    ```
    [Settings]
    Priority=Default
    Properties=OSDMigrateConfigFiles,OSDMigrateMode
    
    [Default]
    DoCapture=NO
    ComputerBackupLocation=NONE
    OSDMigrateMode=Advanced
    OSDMigrateAdditionalCaptureOptions=/ue:*\* /ui:CONTOSO\*
    OSDMigrateConfigFiles=Miguser.xml,Migapp.xml
    SLSHARE=\\SRV1\Logs$
    EventService=http://SRV1:9800
    ApplyGPOPack=NO
    ```

    >As noted previously, if you wish to migrate accounts other than those in the Contoso domain, then change the OSDMigrateAdditionalCaptureOptions option. For example, the following option will capture settings from all user accounts:

    ```
    OSDMigrateAdditionalCaptureOptions=/all
    ```


7. Return to the Configuration Manager console, and in the Software Library workspace, expand **Application Management**, click **Packages**, right-click **Windows 10 x64 Settings**, and then click **Update Distribution Points**. Click **OK** in the popup that appears.

8. In the Software Library workspace, expand **Operating Systems**, click **Task Sequences**, right-click **Windows 10 Enterprise x64**, and then click **Distribute Content**.

9. In the Distribute Content Wizard, click **Next** twice, click **Add**, click **Distribution Point**, select the **SRV1.CONTOSO.COM** distribution point, click **OK**, click **Next** twice and then click **Close**.

10. Enter **\Monitoring\Overview\Distribution Status\Content Status\Windows 10 Enterprise x64** on the location bar, double-click **Windows 10 Enterprise x64**, and monitor the status of content distribution until it is successful and no longer in progress. Refresh the view with the F5 key or by right-clicking **Windows 10 Enterprise x64** and clicking **Refresh**.

### Create a deployment for the task sequence

1. In the Software Library workspace, expand **Operating Systems**, click **Task Sequences**, right-click **Windows 10 Enterprise x64**, and then click **Deploy**. 

2. On the General page, next to **Collection**, click **Browse**, select the **All Unknown Computers** collection, click **OK**, and then click **Next**.

3. On the Deployment Settings page, use the following settings:<br>
    - Purpose: **Available**<br>
    - Make available to the following: **Only media and PXE**<br>
    - Click **Next**.<br>
4. Click **Next** five times to accept defaults on the Scheduling, User Experience, Alerts, and Distribution Points pages.

5. Click **Close**.

## Deploy Windows 10 using PXE and Configuration Manager

In this first deployment scenario, we will deploy Windows 10 using PXE. This scenario creates a new computer that does not have any migrated users or settings.

1. Type the following commands at an elevated Windows PowerShell prompt on the Hyper-V host:

    ```
    New-VM –Name "PC4" –NewVHDPath "c:\vhd\pc4.vhdx" -NewVHDSizeBytes 40GB -SwitchName poc-internal -BootDevice NetworkAdapter -Generation 2
    Set-VMMemory -VMName "PC4" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes 2048MB -Buffer 20
    Start-VM PC4
    vmconnect localhost PC4
    ```

2. Press ENTER when prompted to start the network boot service.

3. In the Task Sequence Wizard, provide the password: <strong>pass@word1</strong>, and then click **Next**.

4. Before you click **Next** in the Task Sequence Wizard, press the **F8** key. A command prompt will open.

5. At the command prompt, type **explorer.exe** and review the Windows PE file structure. 

6. The smsts.log file is critical for troubleshooting any installation problems that might be encountered. Depending on the deployment phase, the smsts.log file is created in different locations:
   - X:\windows\temp\SMSTSLog\smsts.log before disks are formatted.
   - x:\smstslog\smsts.log after disks are formatted.
   - c:\_SMSTaskSequence\Logs\Smstslog\smsts.log before the System Center Configuration Manager client is installed.
   - c:\windows\ccm\logs\Smstslog\smsts.log after the System Center Configuration Manager client is installed.
   - c:\windows\ccm\logs\smsts.log when the task sequence is complete.

     Note: If a reboot is pending on the client, the reboot will be blocked as long as the command window is open.

7. In the explorer window, click **Tools** and then click **Map Network Drive**.

8. Do not map a network drive at this time. If you need to save the smsts.log file, you can use this method to save the file to a location on SRV1.

9. Close the Map Network Drive window, the Explorer window, and the command prompt.

10. The **Windows 10 Enterprise x64** task sequence is selected in the Task Sequenc Wizard. Click **Next** to continue with the deployment.

11. The task sequence will require several minutes to complete. You can monitor progress of the task sequence using the MDT Deployment Workbench under Deployment Shares > MDTProduction > Monitoring. The task sequence will:
    - Install Windows 10
    - Install the Configuration Manager client and hotfix
    - Join the computer to the contoso.com domain
    - Install any applications that were specified in the reference image


12. When Windows 10 installation has completed, sign in to PC4 using the **contoso\administrator** account.

13. Right-click **Start**, click **Run**, type **control appwiz.cpl**, press ENTER, click **Turn Windows features on or off**, and verify that **.NET Framework 3.5 (includes .NET 2.0 and 3.0)** is installed. This is a feature included in the reference image.

14. Shut down the PC4 VM.

>Note: The following two procedures 1) Replace a client with Windows 10 and 2) Refresh a client with Windows 10 have been exchanged in their order in this guide compared to the previous version. This is to avoid having to restore Hyper-V checkpoints to have access to PC1 before the OS is upgraded. If this is your first time going through this guide, you won't notice any change, but if you have tried the guide previously then this change should make it simpler to complete.

## Replace a client with Windows 10 using Configuration Manager

>Before starting this section, you can delete computer objects from Active Directory that were created as part of previous deployment procedures. Use the Active Directory Users and Computers console on DC1 to remove stale entries under contoto.com\Computers, but do not delete the computer account (hostname) for PC1. There should be at least two computer accounts present in the contoso.com\Computers container: one for SRV1, and one for the hostname of PC1. It is not required to delete the stale entries, this is only done to remove clutter.

![contoso.com\Computers](images/poc-computers.png)

In the replace procedure, PC1 will not be migrated to a new operating system. It is simplest to perform this procedure before performing the refresh procedure. After refreshing PC1, the operating system will be new. The next (replace) procedure does not install a new operating system on PC1 but rather performs a side-by-side migration of PC1 and another computer (PC4), to copy users and settings from PC1 to the new computer.

### Create a replace task sequence

1. On SRV1, in the Configuration Manager console, in the Software Library workspace, expand **Operating Systems**, right-click **Task Sequences**, and then click **Create MDT Task Sequence**.

2. On the Choose Template page, select **Client Replace Task Sequence** and click **Next**.

3. On the General page, type the following:
    - Task sequence name: **Replace Task Sequence**
    - Task sequence comments: **USMT backup only**

4. Click **Next**, and on the Boot Image page, browse and select the **Zero Touch WinPE x64** boot image package. Click **OK** and then click **Next** to continue.
5. On the MDT Package page, browse and select the **MDT** package. Click **OK** and then click **Next** to continue.
6. On the USMT Package page, browse and select the **Microsoft Corporation User State Migration Tool for Windows** package. Click **OK** and then click **Next** to continue.
7. On the Settings Package page, browse and select the **Windows 10 x64 Settings** package. Click **OK** and then click **Next** to continue.
8. On the Summary page, review the details and then click **Next**.
9. On the Confirmation page, click **Finish**.

>If an error is displayed at this stage it can be caused by a corrupt MDT integration. To repair it, close the Configuration Manager console, remove MDT integration, and then restore MDT integration.

### Deploy PC4

Create a VM named PC4 to receive the applications and settings from PC1. This VM represents a new computer that will replace PC1. To create this VM, type the following commands at an elevated Windows PowerShell prompt on the Hyper-V host:

```
New-VM –Name "PC4" –NewVHDPath "c:\vhd\pc4.vhdx" -NewVHDSizeBytes 60GB -SwitchName poc-internal -BootDevice NetworkAdapter -Generation 2
Set-VMMemory -VMName "PC4" -DynamicMemoryEnabled $true -MinimumBytes 1024MB -MaximumBytes 2048MB -Buffer 20
Set-VMNetworkAdapter -VMName PC4 -StaticMacAddress 00-15-5D-83-26-FF
```

>Hyper-V enables us to define a static MAC address on PC4. In a real-world scenario you must determine the MAC address of the new computer.

### Install the Configuration Manager client on PC1

1. Verify that the PC1 VM is running and in its original state, which was saved as a checkpoint and then restored in [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md).

2. If a PC1 checkpoint has not already been saved, then save a checkpoint by typing the following commands at an elevated Windows PowerShell prompt on the Hyper-V host:

    ```
    Checkpoint-VM -Name PC1 -SnapshotName BeginState
    ```

3. On SRV1, in the Configuration Manager console, in the Administration workspace, expand **Hierarcy Configuration** and click on **Discovery Methods**.
4. Double-click **Active Directory System Discovery** and on the **General** tab select the **Enable Active Directory System Discovery** checkbox.
5. Click the yellow starburst, click **Browse**, select **contoso\Computers**, and then click **OK** three times.
6. When a popup dialog box asks if you want to run full discovery, click **Yes**. 
7. In the Assets and Compliance workspace, click **Devices** and verify that the computer account names for SRV1 and PC1 are displayed. See the following example (GREGLIN-PC1 is the computer account name of PC1 in this example):

    ![assets](images/sccm-assets.png)

    >If you do not see the computer account for PC1, try clicking the **Refresh** button in the upper right corner of the console.
    
    The **Client** column indicates that the Configuration Manager client is not currently installed. This procedure will be carried out next.

8. Sign in to PC1 using the contoso\administrator account and type the following at an elevated command prompt to remove any pre-existing client configuration, if it exists. Note: this command requires an elevated command prompt not an elevated Windows PowerShell prompt:

    ```
    sc stop ccmsetup
    "\\SRV1\c$\Program Files\Microsoft Configuration Manager\Client\CCMSetup.exe" /Uninstall
    ```
    >If PC1 still has Configuration Manager registry settings that were applied by Group Policy, startup scripts, or other policies in its previous domain, these might not all be removed by CCMSetup /Uninstall and can cause problems with installation or registration of the client in its new environment. It might be necessary to manually remove these settings if they are present. For more information, see [Manual removal of the SCCM client](https://blogs.technet.microsoft.com/michaelgriswold/2013/01/02/manual-removal-of-the-sccm-client/).

9. On PC1, temporarily stop Windows Update from queuing items for download and clear all BITS jobs from the queue:

    ```
    net stop wuauserv
    net stop BITS
    ```

    Verify that both services were stopped successfully, then type the following at an elevated command prompt:

    ```
    del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat"
    net start BITS
    bitsadmin /list /allusers
    ```

    Verify that BITSAdmin displays 0 jobs. 

10. To install the Configuration Manager client as a standalone process, type the following at an elevated command prompt:

    ```
    "\\SRV1\c$\Program Files\Microsoft Configuration Manager\Client\CCMSetup.exe" /mp:SRV1.contoso.com /logon SMSSITECODE=PS1
    ```
11. On PC1, using file explorer, open the **C:\Windows\ccmsetup** directory. During client installation, files will be downloaded here. 
12. Installation progress will be captured in the file: **c:\windows\ccmsetup\logs\ccmsetup.log**. You can periodically open this file in notepad, or you can type the following command at an elevated Windows PowerShell prompt to monitor installation progress:

    ```
    Get-Content -Path c:\windows\ccmsetup\logs\ccmsetup.log -Wait
    ```
    
    Installation might require several minutes, and display of the log file will appear to hang while some applications are installed. This is normal. When setup is complete, verify that **CcmSetup is existing with return code 0** is displayed on the last line of the ccmsetup.log file and then press **CTRL-C** to break out of the Get-Content operation (if you are viewing the log in Windows PowerShell the last line will be wrapped). A return code of 0 indicates that installation was successful and you should now see a directory created at **C:\Windows\CCM** that contains files used in registration of the client with its site.

13. On PC1, open the Configuration Manager control panel applet by typing the following command:

    ```
    control smscfgrc
    ```

14. Click the **Site** tab, click **Configure Settings**, and click **Find Site**. The client will report that it has found the PS1 site. See the following example:

    ![site](images/sccm-site.png)

    If the client is not able to find the PS1 site, review any error messages that are displayed in **C:\Windows\CCM\Logs\ClientIDManagerStartup.log** and **LocationServices.log**. A common reason the site code is not located is because a previous configuration exists. For example, if a previous site code is configured at **HKLM\SOFTWARE\Microsoft\SMS\Mobile Client\GPRequestedSiteAssignmentCode** this must be deleted or updated.

15. On SRV1, in the Assets and Compliance workspace, click **Device Collections** and then double-click **All Desktop and Server Clients**. This node will be added under **Devices**.

16. Click **All Desktop and Server Clients** and verify that the computer account for PC1 is displayed here with **Yes** and **Active** in the **Client** and **Client Activity** columns, respectively. You might have to refresh the view and wait few minutes for the client to appear here.  See the following example:

    ![client](images/sccm-client.png)

    >It might take several minutes for the client to fully register with the site and complete a client check. When it is complete you will see a green check mark over the client icon as shown above. To refresh the client, click it and then press **F5** or right-click the client and click **Refresh**.

### Create a device collection and deployment

1. On SRV1, in the Configuration Manager console, in the Asset and Compliance workspace, right-click **Device Collections** and then click **Create Device Collection**.

2. Use the following settings in the **Create Device Collection Wizard**:
    - General > Name: **Install Windows 10 Enterprise x64**<br>
    - General > Limiting collection: **All Systems**<br>
    - Membership Rules > Add Rule: **Direct Rule**<br>
    - The **Create Direct Membership Rule Wizard** opens, click **Next**<br>
    - Search for Resources > Resource class: **System Resource**<br>
    - Search for Resources > Attribute name: **Name**<br>
    - Search for Resources > Value: **%**<br>
    - Select Resources > Value: Select the computername associated with the PC1 VM<br>
    - Click **Next** twice and then click **Close** in both windows (Next, Next, Close, then Next, Next, Close)

3. Double-click the Install Windows 10 Enterprise x64 device collection and verify that the PC1 computer account is displayed.

4. In the Software Library workspace, expand **Operating Systems**, click **Task Sequences**, right-click **Windows 10 Enterprise x64** and then click **Deploy**.

5. Use the following settings in the Deploy Sofware wizard:
    - General > Collection: Click Browse and select **Install Windows 10 Enterprise x64**<br>
    - Deployment Settings > Purpose: **Available**<br>
    - Deployment Settings > Make available to the following: **Configuration Manager clients, media and PXE**<br>
    - Scheduling > Click **Next**<br>
    - User Experience > Click **Next**<br>
    - Alerts > Click **Next**<br>
    - Distribution Points > Click **Next**<br>
    - Summary > Click **Next**<br>
    - Verify that the wizard completed successfully and then click **Close**


### Associate PC4 with PC1

1. On SRV1 in the Configuration Manager console, in the Assets and Compliance workspace, right-click **Devices** and then click **Import Computer Information**.

2. On the Select Source page, choose **Import single computer** and click **Next**.

3. On the Single Computer page, use the following settings:
    - Computer Name: **PC4**
    - MAC Address: **00:15:5D:83:26:FF**
    - Source Computer: \<type the hostname of PC1, or click **Search** twice, click the hostname, and click **OK**\>

4. Click **Next**, and on the User Accounts page choose **Capture and restore specified user accounts**, then click the yellow starburst next to **User accounts to migrate**.

5. Click **Browse** and then under Enter the object name to select type **user1** and click OK twice.

6. Click the yellow starburst again and repeat the previous step to add the **contoso\administrator** account.

7. Click **Next** twice, and on the Choose Target Collection page, choose **Add computers to the following collection**, click **Browse**, choose **Install Windows 10 Enterprise x64**, click **OK**, click **Next** twice, and then click **Close**.

8. In the Assets and Compliance workspace, click **User State Migration** and review the computer association in the display pane. The source computer will be the computername of PC1 (GREGLIN-PC1 in this example), the destination computer will be **PC4**, and the migration type will be **side-by-side**.

9. Right-click the association in the display pane and then click **Specify User Accounts**. You can add or remove user account here. Click **OK**.

10. Right-click the association in the display pane and then click **View Recovery Information**. Note that a recovery key has been assigned, but a user state store location has not. Click **Close**.

11. Click **Device Collections** and then double-click **Install Windows 10 Enterprise x64**. Verify that **PC4** is displayed in the collection. You might have to update and refresh the collection, or wait a few minutes, but do not proceed until PC4 is available. See the following example:

    ![collection](images/sccm-collection.png)

### Create a device collection for PC1

1. On SRV1, in the Configuration Manager console, in the Assets and Compliance workspace, right-click **Device Collections** and then click **Create Device Collection**.

2. Use the following settings in the **Create Device Collection Wizard**:
    - General > Name: **USMT Backup (Replace)**<br>
    - General > Limiting collection: **All Systems**<br>
    - Membership Rules > Add Rule: **Direct Rule**<br>
    - The **Create Direct Membership Rule Wizard** opens, click **Next**<br>
    - Search for Resources > Resource class: **System Resource**<br>
    - Search for Resources > Attribute name: **Name**<br>
    - Search for Resources > Value: **%**<br>
    - Select Resources > Value: Select the computername associated with the PC1 VM (GREGLIN-PC1 in this example).<br>
    - Click **Next** twice and then click **Close** in both windows.

3. Click **Device Collections** and then double-click **USMT Backup (Replace)**. Verify that the computer name/hostname associated with PC1 is displayed in the collection. Do not proceed until this name is displayed.  

### Create a new deployment

In the Configuration Manager console, in the Software Library workspace under Operating Systems, click **Task Sequences**, right-click **Replace Task Sequence**, click **Deploy**, and use the following settings:
- General > Collection: **USMT Backup (Replace)**<br>
- Deployment Settings > Purpose: **Available**<br>
- Deployment Settings > Make available to the following: **Only Configuration Manager Clients**<br>
- Scheduling: Click **Next**<br>
- User Experience: Click **Next**<br>
- Alerts: Click **Next**<br>
- Distribution Points: Click **Next**<br>
- Click **Next** and then click **Close**.

### Verify the backup

1. On PC1, open the Configuration Manager control panel applet by typing the following command:

    ```
    control smscfgrc
    ```
2. On the **Actions** tab, click **Machine Policy Retrieval & Evaluation Cycle**, click **Run Now**, click **OK**, and then click **OK** again. This is one method that can be used to run a task sequence in addition to the Client Notification method that will be demonstrated in the computer refresh procedure.

3. Type the following at an elevated command prompt to open the Software Center:

    ```
    C:\Windows\CCM\SCClient.exe
    ```

4. In the Software Center , click **Available Software** and then select the **Replace Task Sequence** checkbox. See the following example:

    ![software](images/sccm-software-cntr.png)

    >If you do not see any available software, try running step #2 again to start the Machine Policy Retrieval & Evaluation Cycle. You should see an alert that new software is available.

5. Click **INSTALL SELECTED** and then click **INSTALL OPERATING SYSTEM**.
6. Allow the **Replace Task Sequence** to complete, then verify that the C:\MigData folder on SRV1 contains the USMT backup.

### Deploy the new computer

1. Start PC4 and press ENTER for a network boot when prompted. To start PC4, type the following commands at an elevated Windows Powershell prompt on the Hyper-V host:

    ```
    Start-VM PC4
    vmconnect localhost PC4
    ```
2. In the **Welcome to the Task Sequence Wizard**, enter <strong>pass@word1</strong> and click **Next**.
3. Choose the **Windows 10 Enterprise X64** image.
4. Setup will install the operating system using the Windows 10 Enterprise x64 reference image, install the configuration manager client, join PC4 to the domain, and restore users and settings from PC1.
5. Save checkpoints for all VMs if you wish to review their status at a later date. This is not required (checkpoints do take up space on the Hyper-V host). Note: the next procedure will install a new OS on PC1 update its status in Configuration Manager and in Active Directory as a Windows 10 device, so you cannot return to a previous checkpoint only on the PC1 VM without a conflict. Therefore, if you do create a checkpoint, you should do this for all VMs.

    To save a checkpoint for all VMs, type the following commands at an elevated Windows PowerShell prompt on the Hyper-V host:

    ```
    Checkpoint-VM -Name DC1 -SnapshotName cm-refresh
    Checkpoint-VM -Name SRV1 -SnapshotName cm-refresh
    Checkpoint-VM -Name PC1 -SnapshotName cm-refresh
    ```

## Refresh a client with Windows 10 using Configuration Manager


### Initiate the computer refresh

1. On SRV1, in the Assets and Compliance workspace, click **Device Collections** and then double-click **Install Windows 10 Enterprise x64**.
2. Right-click the computer account for PC1, point to **Client Notification**, click **Download Computer Policy**, and click **OK** in the popup dialog box.
3. On PC1, in the notification area, click **New sofware is available** and then click **Open Sofware Center**.
4. In the Sofware Center, click **Operating Systems**, click **Windows 10 Enterprise x64**, click **Install** and then click **INSTALL OPERATING SYSTEM**. See the following example:

    ![installOS](images/sccm-install-os.png)

    The computer will restart several times during the installation process. Installation includes downloading updates, reinstalling the Configuration Manager Client Agent, and restoring the user state. You can view status of the installation in the Configuration Manager console by accessing the Monitoring workspace, clicking **Deployments**, and then double-clicking the deployment associated with the **Install Windows 10 Enterprise x64** collection. Under **Asset Details**, right-click the device and then click **More Details**. Click the **Status** tab to see a list of tasks that have been performed.  See the following example:

    ![asset](images/sccm-asset.png)   
    
    You can also monitor progress of the installation by using the MDT deployment workbench and viewing the **Monitoring** node under **Deployment Shares\MDT Production**. 
    
    When installation has completed, sign in using the contoso\administrator account or the contoso\user1 account and verify that applications and settings have been successfully backed up and restored to your new Windows 10 Enterprise operating system.

    ![post-refresh](images/sccm-post-refresh.png) 



## Related Topics

[System Center 2012 Configuration Manager Survival Guide](https://social.technet.microsoft.com/wiki/contents/articles/7075.system-center-2012-configuration-manager-survival-guide.aspx#Step-by-Step_Guides)

 





