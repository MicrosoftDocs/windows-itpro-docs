---
title: Placeholder (Windows 10)
description: Deploy Windows 10 in a test lab using System Center Configuration Manager 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Deploy Windows 10 in a test lab using System Center Configuration Manager

**Applies to**

-   Windows 10

**Important**: This guide leverages the proof of concept (PoC) environment configured using procedures in [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md). Please complete all steps in the prerequisite guide before attempting the procedures in this guide.

If you have already completed [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md), you can skip some steps of this guide, such as installation of MDT.

The PoC environment is a virtual network running on Hyper-V with three virtual machines (VMs):
- **DC1**: A contoso.com domain controller, DNS server, and DHCP server.
- **SRV1**: A dual-homed contoso.com domain member server, DNS server, and default gateway providing NAT service for the PoC network.
- **PC1**: A contoso.com member computer running Windows 7, Windows 8, or Windows 8.1 that has been cloned from a physical computer on your corporate network for testing purposes.

This guide leverages the Hyper-V server role to perform procedures. If you do not complete all steps in a single session, consider using [checkpoints](https://technet.microsoft.com/library/dn818483.aspx) and [saved states](https://technet.microsoft.com/library/ee247418.aspx) to pause, resume, or restart your work.

>Multiple features and services are installed on SRV1 in this guide. If less than 4 GB of RAM is allocated to SRV1, some procedures will require more time to complete. If resources are limited on the Hyper-V host, consider reducing RAM allocation on DC1 and PC1 to 2 GB and 1 GB respectively, and then increasing the RAM allocation on SRV1. You can adjust RAM allocation for a VM by right-clicking the VM in the Hyper-V Manager console, clicking **Settings**, clicking **Memory**, and modifying the value next to **Maximum RAM**.

## In this guide

Description here.

## Install prerequisites

1. Before installing System Center Configuration Manager, we must install prerequisite services and features. Type the following command at an elevated Windows PowerShell prompt on SRV1: 

    ```
    Install-WindowsFeature Web-Windows-Auth,Web-ISAPI-Ext,Web-Metabase,Web-WMI,BITS,RDC,NET-Framework-Features,Web-Asp-Net,Web-Asp-Net45,NET-HTTP-Activation,NET-Non-HTTP-Activ
    ```

    >If the request to add features fails, retry the installation by typing the command again.

2. Download [SQL Server 2012 SP2](https://www.microsoft.com/en-us/evalcenter/evaluate-sql-server-2014-sp2) from the Microsoft Evaluation Center as an .ISO file on the Hyper-V host computer. Save the file to the **C:\VHD** directory.
3. When you have downloaded the file **SQLServer2014SP2-FullSlipstream-x64-ENU.iso** and placed it in the C:\VHD directory, type the following command at an elevated Windows PowerShell prompt on the Hyper-V host: 

    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\SQLServer2014SP2-FullSlipstream-x64-ENU.iso
    ```

    This command mounts the .ISO file to drive D on SRV1.

4. Type the following command at an elevated Windows PowerShell prompt on SRV1 to install SQL Server 2012 SP2:

    ```
    D:\setup.exe /q /ACTION=Install /ERRORREPORTING="False" /FEATURES=SQLENGINE,RS,IS,SSMS,TOOLS,ADV_SSMS,CONN /INSTANCENAME=MSSQLSERVER /INSTANCEDIR="C:\Program Files\Microsoft SQL Server" /SQLSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\ADMINISTRATORS" /SQLSVCSTARTUPTYPE=Automatic /AGTSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCSTARTUPTYPE=Automatic /RSSVCACCOUNT="NT AUTHORITY\System" /RSSVCSTARTUPTYPE=Automatic /ISSVCACCOUNT="NT AUTHORITY\System" /ISSVCSTARTUPTYPE=Disabled /ASCOLLATION="Latin1_General_CI_AS" /SQLCOLLATION="SQL_Latin1_General_CP1_CI_AS" /TCPENABLED="1" /NPENABLED="1" /IAcceptSQLServerLicenseTerms
    ```
    Installation might take several minutes. When installation is complete, the following output will be displayed:

    ```
    Microsoft (R) SQL Server 2014 12.00.5000.00
    Copyright (c) Microsoft Corporation.  All rights reserved.

    Microsoft (R) .NET Framework CasPol 2.0.50727.7905
    Copyright (c) Microsoft Corporation.  All rights reserved.

    Success
    Microsoft (R) .NET Framework CasPol 2.0.50727.7905
    Copyright (c) Microsoft Corporation.  All rights reserved.

    Success
    ```
5. Type the following commands at an elevated Windows PowerShell prompt on SRV1:

    ```
    New-NetFirewallRule -DisplayName “SQL Server” -Direction Inbound –Protocol TCP –LocalPort 1433 -Action allow
    New-NetFirewallRule -DisplayName “SQL Admin Connection” -Direction Inbound –Protocol TCP –LocalPort 1434 -Action allow
    New-NetFirewallRule -DisplayName “SQL Database Management” -Direction Inbound –Protocol UDP –LocalPort 1434 -Action allow
    New-NetFirewallRule -DisplayName “SQL Service Broker” -Direction Inbound –Protocol TCP –LocalPort 4022 -Action allow
    New-NetFirewallRule -DisplayName “SQL Debugger/RPC” -Direction Inbound –Protocol TCP –LocalPort 135 -Action allow
    ```
6. On SRV1, temporarily disable IE Enhanced Security Configuration for Administrators by typing the following commands at an elevated Windows PowerShell prompt:

    ```
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 0
    Stop-Process -Name Explorer
    ```
7. Download and install the latest [Windows Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) on SRV1 using the default installation settings. The current version is the ADK for Windows 10, version 1607. Installation might require several minutes to acquire all components.   

## Install System Center Configuration Manager

1. Download [System Center Configuration Manager and Endpoint Protection](https://www.microsoft.com/en-us/evalcenter/evaluate-system-center-configuration-manager-and-endpoint-protection) on SRV1, double-click the file, enter **C:\configmgr** for **Unzip to folder**, and click **Unzip**. The C:\configmgr directory will be automatically created. Click **OK** and then close the **WinZip Self-Extractor** dialog box when finished.

2. Before starting the installation, verify that WMI is working on SRV1. See the following examples. Verify that **Running** is displayed under **Status** and **True** is displayed next to **TcpTestSucceeded**:

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

2. To start Configuration Manager installation, type the following command at an elevated Windows PowerShell prompt:

    ```
    cmd /c C:\configmgr\SMSSETUP\BIN\X64\Setup.exe
    ```
3. Provide the following in the System Center Configuration Manager Setup Wizard:
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

    Depending on the speed of the Hyper-V host and resources allocated to SRV1, installation can require approximately one hour. Click **Close** when installation is complete. 

## Download and install MDT  

1. Download and install the 64-bit version of [Microsoft Deployment Toolkit (MDT) 2013 Update 2](https://www.microsoft.com/en-us/download/details.aspx?id=50407) on SRV1 using the default options.

2. If desired, re-enable IE Enhanced Security Configuration at this time on SRV1:

    ```
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 1
    Stop-Process -Name Explorer
    ```

## Download MDOP and install DaRT

1. Download the [Microsoft Desktop Optimization Pack 2015](https://msdn.microsoft.com/en-us/subscriptions/downloads/#ProductFamilyId=597) to the Hyper-V host using an MSDN subscription. Download the .ISO file (mu_microsoft_desktop_optimization_pack_2015_x86_x64_dvd_5975282.iso) to the C:\VHD directory on the Hyper-V host.

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

## Create a folder structure

1. Type the following commands at a Windows PowerShell prompt on SRV1:

    ```
    New-Item -ItemType Directory -Path "C:Sources\OSD\Boot"
    New-Item -ItemType Directory -Path "C:Sources\OSD\OS"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\Settings"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\Branding"
    New-Item -ItemType Directory -Path "C:\Sources\OSD\MDT"
    New-Item -ItemType Directory -Path "C:\Logs"
    New-SmbShare -Name Sources$ -Path C:\Sources -ChangeAccess EVERYONE
    New-SmbShare -Name Logs$ -Path C:\Logs -ChangeAccess EVERYONE
    ```

## Enable MDT ConfigMgr integration

1. Click **Start**, type **configmgr**, and then click **Configure ConfigMgr Integration**.
2. Type **PS1** next to **Site code**, and then click **Next**.
3. Verify **The process completed successfully** is displayed, and then click **Finish**.

## Configure client settings

1. Click **Start**, type **configuration manager**, right-click **Configuration Manager Console**, and then click **Pin to Taskbar**.
2. Click **Desktop**, and then launch the Configuration Manager console from the taskbar.
3. If the console notifies you that an update is available, click **OK**. It is not necessary to install updates to complete this lab.
4. In the console tree, open the **Administration** workspace and click **Client Settings**.
5. In the display pane, double-click **Default Client Settings**.
6. Click **Computer Agent**, next to **Organization name displayed in Software Center** type **Contoso**, and then click **OK**.

## Enable PXE on the distribution point

1. Deterime the MAC address of the internal network adapter on SRV1. To determine this, type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    (Get-NetAdapter "Ethernet").MacAddress
    ```
    >If the internal network adapter, assigned an IP address of 192.168.0.2, is not named "Ethernet" then replace the name "Ethernet" in the previous command with the name of this network adapter.

2. In the System Center Configuration Manager console, in the **Administration** workspace, click **Distribution Points**.
3. In the display pane, right-click **SRV1.CONTOSO.COM** and then click **Properties**.
4. On the PXE tab, select the following settings:
    - Enable PXE support for clients. Click **Yes** in the popup that appears.
    - Allow this distribution point to respond to incoming PXE requests
    - Enable unknown computer support. Click **OK** in the popup that appears.
    - Require a password when computers use PXE
    - Password and Confirm password: pass@word1
    - Respond to PXE requests on specific network interfaces: Enter the MAC address determined in the first step of this procedure.
5. Click **OK**.
6. Type the following command at an elevated Windows PowerShell prompt on SRV1, and verify that the files displayed are present:

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
    >If these files are not present, type the following command at an elevated Windows PowerShell prompt to open the Configuration Manager Trace Log Tool. In the tool, click **File**, click **Open**, and then open the **distmgr.log** file. If errors are present, they will be highlighted in red:

    ```
    Invoke-Item 'C:\Program Files\Microsoft Configuration Manager\tools\cmtrace.exe'
    ```

## Create a branding image file 

1. If you have a bitmap (.BMP) image for suitable use as a branding image, copy it to the C:\Sources\OSD\Branding folder on SRV1. Otherwise, use the following step to copy a simple branding image.
2. Type the following command at an elevated Windows PowerShell prompt:

    ```
    copy "C:\ProgramData\Microsoft\User Account Pictures\user.bmp" "C:\Sources\OSD\Branding\contoso.bmp"
    ```
    >You can open C:\Sources\OSD\Branding\contoso.bmp in MSPaint.exe if desired to customize this image.

## Create a boot image for Configuration Manager 

1. In the Configuration Manager console, in the Software Library workspace, expand **Operating Systems**, right-click **Boot Images**, and then click **Create Boot Image using MDT**.
2. On the Package Source page, under **Package source folder to be created (UNC Path):**, type **\\SRV1\Sources$\OSD\Boot\Zero Touch WinPE x64**, and then click **Next**.
    - The Zero Touch WinPE x64 folder does not yet exist. The folder will be created later.
3. On the General Settings page, type **Zero Touch WinPE x64** next to **Name**, and click **Next**.
4. On the Options page, under **Platform** choose **x64**, and click **Next**.
5. On the Components page, in addition to the default selection of **Microsoft Data Access Components (MDAC/ADO) support**, select the **Microsoft Diagnostics and Recovery Toolkit (DaRT)** checkbox, and click **Next**.
6. On the Customization page, select the **Use a custom background bitmap file** checkbox, and under **UNC path**, type or browse to **\\SRV1\Sources$\OSD\Branding\contoso.bmp**, and then click **Next** twice. It will take a few minutes to generate the boot image.
7. Click **Finish**.
8. Right-click the **Zero Touch WinPE x64** boot image, and then click **Distribute Content**.
9. In the Distribute Content Wizard, click **Next**, click **Add** and select **Distribution Point**, select the **SRV1.CONTOSO.COM** checkbox, click **OK**, click **Next** twice, and then click **Close**.
10. Use the CMTrace application to view the **distmgr.log** file and verify that the boot image has been distributed. To open CMTrace, type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    Invoke-Item 'C:\Program Files\Microsoft Configuration Manager\tools\cmtrace.exe'
    ```
    >In the trace tool, click **Tools** on the menu and choose **Find**. Search for "**STATMSG: ID=2301**". For example:

        ```
        STATMSG: ID=2301 SEV=I LEV=M SOURCE="SMS Server" COMP="SMS_DISTRIBUTION_MANAGER" SYS=SRV1.CONTOSO.COM SITE=PS1 PID=2476 TID=4636 GMTDATE=Wed Sep 14 22:11:09.363 2016 ISTR0="Configuration Manager Client Upgrade Package" ISTR1="PS100003" ISTR2="" ISTR3="" ISTR4="" ISTR5="" ISTR6="" ISTR7="" ISTR8="" ISTR9="" NUMATTRS=1 AID0=400 AVAL0="PS100003"	SMS_DISTRIBUTION_MANAGER	9/14/2016 3:11:09 PM	4636 (0x121C)
        ```
11. You can also review status by clicking the **Zero Touch WinPE x64** image, and then clicking **Content Status** under **Related Objects**, or by entering **\Monitoring\Overview\Distribution Status\Content Status** on the location bar in the console. Click **Zero Touch WinPE x64** under **Content Status** in the console tree and verify that a status of **Successfully distributed content** is displayed on the **Success** tab.
12. In the **Software Library** workspace, double-click **Zero Touch WinPE x64** and then click the **Data Source** tab.
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

## Create a Windows 10 reference image

If you have already completed steps in [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md) then you have already created a Windows 10 reference image. Copy the reference image file (REFW10-X64-001.wim) from C:\MDTBuildLab\Captures\REFW10X64-001.wim to C:\Sources\OSD\OS\Windows 10 Enterprise x64\REFW10X64-001.wim.

If you have not yet created a Windows 10 reference image, complete the following steps.

1. In [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md) the Windows 10 Enterprise .iso file was saved to the c:\VHD directory as **c:\VHD\w10-enterprise.iso**. The first step in creating a deployment share is to mount this file on SRV1.  To mount the Windows 10 Enterprise DVD on SRV1, open an elevated Windows PowerShell prompt on the Hyper-V host computer and type the following command:

    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\w10-enterprise.iso
    ```
2. Verify that the Windows Enterprise installation DVD is mounted on SRV1 as drive letter D.

3. The Windows 10 Enterprise installation files will be used to create a deployment share on SRV1 using the MDT deployment workbench. To open the deployment workbench, click **Start**, type **deployment**, and then click **Deployment Workbench**.

4. In the Deployment Workbench console, right-click **Deployment Shares** and select **New Deployment Share**.

5. Use the following settings for the New Deployment Share Wizard:
    - Deployment share path: **C:\MDTBuildLab**<BR>
    - Share name: **MDTBuildLab$**<BR>
    - Deployment share description: **MDT build lab**<BR>
    - Options: click **Next** to accept the default<BR>
    - Summary: click **Next**<BR>
    - Progress: settings will be applied<BR>
    - Confirmation: click **Finish**

6. Expand the **Deployment Shares** node, and then expand **MDT build lab**.

7. Right-click the **Operating Systems** node, and then click **New Folder**. Name the new folder **Windows 10**. Complete the wizard using default values and click **Finish**.

7. Right-click the **Windows 10** folder created in the previous step, and then click **Import Operating System**.

8. Use the following settings for the Import Operating System Wizard: 
    - OS Type: **Full set of source files**<BR>
    - Source: **D:\\** <BR>
    - Destination: **W10Ent_x64**<BR>
    - Summary: click **Next**
    - Confirmation: click **Finish**

9. For purposes of this test lab, we will not add applications, such as Microsoft Office, to the deployment share. For information about adding applications, see the [Add applications](https://technet.microsoft.com/en-us/itpro/windows/deploy/create-a-windows-10-reference-image#sec03) section of the [Create a Windows 10 reference image](create-a-windows-10-reference-image.md) topic in the TechNet library.

10. The next step is to create a task sequence to reference the operating system that was imported. To create a task sequence, right-click the **Task Sequences** node under **MDT Build Lab** and then click **New Task Sequence**. Use the following settings for the New Task Sequence Wizard:
    - Task sequence ID: **REFW10X64-001**<BR>
    - Task sequence name: **Windows 10 Enterprise x64 Default Image** <BR>
    - Task sequence comments: **Reference Build**<BR>
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
    TimeZoneName=Pacific Standard Time 
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
    SkipFinalSummary=YES
    ```

20. Click **Apply** and then click **Edit Bootstrap.ini**. Replace the contents of the Bootstrap.ini file with the following text, and save the file:

    ```
    [Settings]
    Priority=Default

    [Default]
    DeployRoot=\\SRV1\MDTBuildLab$
    UserDomain=CONTOSO
    UserID=administrator
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

## Add a Windows 10 operating system image

1. Type the following commands at an elevated Windows PowerShell prompt on SRV1:

    ```
    New-Item -ItemType Directory -Path "C:Sources\OSD\OS\Windows 10 Enterprise x64"
    cmd /c copy /z "C:\MDTBuildLab\Captures\REFW10X64-001.wim" "C:\Sources\OSD\OS\Windows 10 Enterprise x64"
    ```

2. In the Configuration Manager console, in the **Software Library** workspace, expand **Operating Systems**, right-click **Operating System Images**, and then click **Add Operating System Image**.

3. On the Data Source page, under **Path:**, type **\\SRV1\Sources$\OSD\OS\Windows 10 Enterprise x64\REFW10X64-001.wim**, and click **Next**.

4. On the General page, next to **Name:**, type **Windows 10 Enterprise x64**, click **Next** twice, and then click **Close**.

5. Distribute the operating system image to the SRV1 distribution point by right-clicking the **Windows 10 Enterprise x64** operating system image and then clicking **Distribute Content**.

6. In the Distribute Content Wizard, click **Next**, click **Add**, click **Distribution Point**, add the **SRV1.CONTOSO.COM** distribution point, click **OK**, click **Next** twice and then click **Close**.

7. Enter **\Monitoring\Overview\Distribution Status\Content Status** on the location bar, click **Windows 10 Enterprise x64**, and monitor the status of content distribution until it is successful and no longer in progress. Refresh the view with the F5 key or by right-clicking **Windows 10 Enterprise x64** and clicking **Refresh**.

## Create a task sequence

1. In the Configuration Manager console, in the **Software Library** workspace expand **Operating Systems**, right-click **Task Sequences**, and then click **Create MDT Task Sequence**.

2. On the Choose Template page, select the **Client Task Sequence** template and click **Next**.

3. On the General page, type **Windows 10 Enterprise x64** under **Task sequence name:** and then click **Next**.

4. On the Details page, enter the following settings:<BR>
    - Join a domain: contoso.com<BR>
    - Account: click **Set**<BR>
        - User name: contoso\administrator<BR>
        - Password: pass@word1<BR>
        - Confirm password: pass@word1<BR>
        - Click **OK**<BR>
    - Windows Settings<BR>
        - User name: Contoso<BR>
        - Organization name: Contoso<BR>
        - Product key: \<blank\><BR>
    - Administrator Account: Enable the account and specify the local administrator password<BR>
        - Password: pass@word1<BR>
        - Confirm password: pass@word1<BR>
    - Click Next<BR>
 
5. On the Capture Settings page, accept the default settings and click **Next**.

6. On the Boot Image page, browse and select the **Zero Touch WinPE x64** boot image package and then click **Next**.

7. On the MDT Package page, select **Create a new Microsoft Deployment Toolkit Files package**, under **Package source folder to be created (UNC Path):**, type **\\SRV1\Sources$\OSD\MDT\MDT 2013**, and then click **Next**.

8. On the MDT Details page, next to **Name:** type **MDT 2013** and then click **Next**.

9. On the OS Image page, browse and select the **Windows 10 Enterprise x64** package, and then click **Next**.

10. On the Deployment Method page, accept the default settings and click **Next**.

11. On the Client Package page, browse and select the **Microsoft Corporation Configuration Manager Client package** and then click **Next**.

12. On the USMT Package page, browse and select the **Microsoft Corporation User State Migration Tool for Windows 8 10.0.14393.0** package, and then click **Next**.

13. On the Settings Package page, select **Create a new settings package**, and under **Package source folder to be created (UNC Path):**, type \\SRV1\Sources$\OSD\Settings\Windows 10 x64 Settings, and then click **Next**.

14. On the Settings Details page, next to **Name:**, type **Windows 10 x64 Settings**, and click **Next**.

15. On the Sysprep Package page, click **Next** twice.

16. On the Confirmation page, click **Finish**.

## Edit the task sequence

1. In the Configuration Manager console, in the Software Library workspace, click Task Sequences, right-click Windows 10 Enterprise x64, and then click Edit.

2. Scroll down to the Install group and click Set Variable for Drive Letter.

3. Change the Value under OSDPreserveDriveLetter from False to True, and click Apply.

4. In the **State Restore** group, click **Set Status 5**, click **Add**, point to **User State**, and click **Request State Store**. This adds a new action immediately after **Set Status 5**.

5. Configure the **Request State Store** action that was just added with the following settings:<BR>
    - Request state storage location to: **Restore state from another computer**<BR>
    - Select the **If computer account fails to connect to state store, use the Network Access account** checkbox.<BR>
    - Options tab: Select the **Continue on error** checkbox.<BR>
    - Add Condition: **Task Sequence Variable**:<BR>
        - Variable: **USMTLOCAL** <BR>
        - Condition: **not equals**<BR>
        - Value: **True**<BR>
        - Click **OK**.<BR>
    - Click **Apply**<BR>.

6. In the **State Restore** group, click **Restore User State**, click **Add**, point to **User State**, and click **Release State Store**.

7. Configure the **Release State Store** action that was just added with the following settings:<BR>
    - Options tab: Select the **Continue on error** checkbox.<BR>
    - Add Condition: **Task Sequence Variable**:<BR>
        - Variable: **USMTLOCAL** <BR>
        - Condition: **not equals**<BR>
        - Value: **True**<BR>
        - Click **OK**.<BR>
    - Click **OK**<BR>.


## Finalize the operating system configuration

1. In the MDT deployment workbench on SRV1, right-click **Deployment Shares** and then click **New Deployment Share**.

2. Use the following settings for the New Deployment Share Wizard:
    - Deployment share path: **C:\MDTProduction**<BR>
    - Share name: **MDTProduction$**<BR>
    - Deployment share description: **MDT Production**<BR>
    - Options: click **Next** to accept the default<BR>
    - Summary: click **Next**<BR>
    - Progress: settings will be applied<BR>
    - Confirmation: click **Finish**

3. Right-click the **MDT Production** deployment share, and click **Properties**. 

4. Click the **Monitoring** tab, select the **Enable monitoring for this deployment share** checkbox, and then click **OK**.

5. Type the following command at an elevated Windows PowerShell prompt on SRV1:

    ```
    notepad "C:\Sources\OSD\Settings\Windows 10 x64 Settings\CustomSettings.ini"
    ```
6. Replace the contents of the file with the following text:

    ```
    [Settings]
    Priority=Default
    Properties=OSDMigrateConfigFiles,OSDMigrateMode

    [Default]
    DoCapture=NO
    ComputerBackupLocation=NONE
    MachineObjectOU=ou=Workstations,ou=Computers,ou=Contoso,dc=contoso,dc=com
    OSDMigrateMode=Advanced
    OSDMigrateAdditionalCaptureOptions=/ue:*\* /ui:CONTOSO\*
    OSDMigrateConfigFiles=Miguser.xml,Migapp.xml
    SLSHARE=\\SRV1\Logs$
    EventService=http://SRV1:9800
    ApplyGPOPack=NO
    ```
7. In the Software Library workspace, expand **Application Management**, click **Packages**, right-click **Windows 10 x64 Settings**, and then click **Update Distribution Points**. Click **OK** in the popup that appears.

8. In the Software Library workspace, expand **Operating Systems**, click **Task Sequences**, right-click **Windows 10 Enterprise x64**, and then click **Distribute Content**.

9. In the Distribute Content Wizard, click **Next**, click **Add**, click **Distribution Point**, add the **SRV1.CONTOSO.COM** distribution point, click **OK**, click **Next** twice and then click **Close**.

10. Enter **\Monitoring\Overview\Distribution Status\Content Status** on the location bar, click **Windows 10 Enterprise x64**, and monitor the status of content distribution until it is successful and no longer in progress. Refresh the view with the F5 key or by right-clicking **Windows 10 Enterprise x64** and clicking **Refresh**.

## Create a deployment for the task sequence

1. In the Software Library workspace, expand **Operating Systems**, click **Task Sequences**, right-click **Windows 10 Enterprise x64**, and then click **Deploy**. 

2. On the General page, next to **Collection**, click **Browse** and select the **All Unknown Computers** collection, then click **Next**.

3. On the Deployment Settings page, use the following settings:<BR>
    - Purpose: Available<BR>
    - Make available to the following: Only media and PXE<BR>
    - Click Next.<BR>
4. Click **Next** five times to accept defaults on the Scheduling, User Experience, Alerts, and Distribution Points pages.

5. Click **Close**.

## Deploy Windows 10 using PXE and Configuration Manager

1. Type the following commands at an elevated Windows PowerShell prompt on the Hyper-V host:

    ```
    New-VM –Name "PC3" –NewVHDPath "c:\vhd\pc3.vhdx" -NewVHDSizeBytes 40GB -SwitchName poc-internal -BootDevice NetworkAdapter -Generation 2
    Set-VMMemory -VMName "PC3" -DynamicMemoryEnabled $true -MinimumBytes 512MB -MaximumBytes 2048MB -Buffer 20
    Start-VM PC3
    vmconnect localhost PC3
    ```
2. Press ENTER when prompted to start the network boot service.

3. In the Task Sequence Wizard, provide the password: pass@word1, and then click Next.

4. The Windows 10 Enterprise x64 task sequence is selected, click Next.

- ok I have an error that PS100001 cannot be located on a distribution point.
- I tried going to content status and this seems to bhe the USMT and it says it is successfully distributed
- I tried software library, boot images, and distribute these - this didn't help
- I tried software library, application management, packages, distribute content but the distributon point isn't showing up. This is likely the problem.

## Related Topics

 

 





