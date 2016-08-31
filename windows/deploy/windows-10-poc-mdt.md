---
title: Placeholder (Windows 10)
description: Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit

**Applies to**

-   Windows 10

**Important**: This guide leverages the proof of concept (PoC) environment configured using procedures in [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md). Please complete all steps in the prerequisite guide before attempting the procedures in this guide.

The PoC environment is a virtual network running on Hyper-V with three virtual machines:
- **DC1**: A contoso.com domain controller, DNS server, and DHCP server.
- **SRV1**: A dual-homed contoso.com domain member server, DNS server, and default gateway providing NAT service for the PoC network.
- **PC1**: A contoso.com member computer running Windows 7, Windows 8, or Windows 8.1 that has been cloned from a physical computer on your corporate network for testing purposes.

## In this guide

Yadda yadda

## Install the Microsoft Deployment Toolkit (MDT)

1. Temporarily disable IE Enhanced Security Configuration for Administrators by typing the following commands at an elevated Windows PowerShell prompt on SRV1:
    ```
    $AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 0
    Stop-Process -Name Explorer
    ```
2. Download and install the 64-bit version of [Microsoft Deployment Toolkit (MDT) 2013 Update 2](https://www.microsoft.com/en-us/download/details.aspx?id=50407) on SRV1.

3. Download and install the latest [Windows Assessment and Deployment Kit (ADK)](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) on SRV1 using the default installation settings.

3. Re-enable IE Enhanced Security Configuration:
    ```
    Set-ItemProperty -Path $AdminKey -Name “IsInstalled” -Value 1
    Stop-Process -Name Explorer
    ```
>Alternatively, you can download the MDT and ADK installation files on the Hyper-V host, and then copy or share these files to SRV1.

## Create a deployment share

1. In [Step by step guide: Deploy Windows 10 in a test lab](windows-10-poc.md) the Windows 10 Enterprise .iso file was saved to the c:\VHD directory as **c:\VHD\w10-enterprise.iso**. The first step in creating a deployment share is to mount this file on SRV1.  We can use PowerShell on the Hyper-V host to do this. To mount the Windows 10 Enterprise DVD on SRV1, open an elevated Windows PowerShell prompt on the Hyper-V host computer and type the following command:
    ```
    Set-VMDvdDrive -VMName SRV1 -Path c:\VHD\w10-enterprise.iso
    ```
2. Connect to SRV1 and verify that the Windows Enterprise installation DVD is mounted as the D:\ drive.

3. The Windows 10 Enterprise installation files will be used to create a deployment share  on SRV1 using the MDT deployment workbench. To open the deployment workbench, click Start, type deployment, and then click Deployment Workbench.

4. In the Deployment Workbench console, right-click Deployment Shares and select New Deployment Share.

5. Use the following settings for the New Deployment Share Wizard:
    - Deployment share path: **C:\MDTBuildLab**<BR>
    - Share name: **MDTBuildLab$**<BR>
    - Deployment share description: **MDT build lab**<BR>
    - Options: click **Next** to accept the default<BR>
    - Summary: click **Next**<BR>
    - Progress: settings will be applied<BR>
    - Confirmation: click **Finish**

6. Expand the Deployment Shares node, and then expand MDT build lab.

7. Right-click the Operating Systems node, and then click New Folder. Name the new folder **Windows 10**. 

7. Right-click the Windows 10 folder created in the previous step, and then click **Import Operating System**.

8. Use the following settings for the Import Operating System Wizard: 
    - OS Type: **Full set of source files**<BR>
    - Source: **D:\\** <BR>
    - Destination: **W10Ent_x64**<BR>
    - Summary: click **Next**
    - Confirmation: click **Finish**

9. For purposes of this test lab, we will not add applications (such as Microsoft Office) to the deployment share. If you wish to add applications before proceeding, see the [Add applications](https://technet.microsoft.com/en-us/itpro/windows/deploy/create-a-windows-10-reference-image#sec03) section of the [Create a Windows 10 reference image](create-a-windows-10-reference-image.md) topic in the TechNet library.

10. The next step is to create a task sequence to reference the operating system that was imported. To create a task sequence, right-click the Task Sequences node and then click New Task Sequence. Use the following settings for the New Task Sequence Wizard:
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

12. Click the **Task Sequence** tab, under **State Restore** click **Tatto** to highlight it, then click **Add** and choose **New Group**.

13. On the Properties tab of the group that was created in the previous step, change the Name from New Group to **Custom Tasks (Pre-Windows Update)** and then click **Apply**.

14. Click the **Custom Tasks (Pre-Windows Update)** group again, click **Add**, point to **Roles**, and then click **Install Roles and Features**. 

15. Under **Select the roles and features that should be installed**, select **.NET Framework 3.5 (includes .NET 2.0 and 3.0)** and then click **Apply**.

16. Enable Windows Update in the task sequence by clicking the **Windows Update (Post-Application Installation)** step, clicking the **Options** tab, and clearing the **Disable this step** checkbox.
    >Note: Since we are not installing applications in this test lab, there is no need to enable the Windows Update Pre-Application Installation step. However, you should enable this step if you are also installing applications.

17. Click **OK** to complete editing the task sequence.

18. The next step is to configure the MDT deployment share rules. To configure rules in the Deployment Workbench, right-click MDT build lab (C:\MDTBuildLab) and click Properties, and then click the Rules tab.

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

20. Click Apply and then click Edit Bootstrap.ini. Replace the contents of the Bootstrap.ini file with the following text, and save the file:
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

>Hint: Right-click the **LiteTouchPE_x86.iso** file and click **Copy** on SRV1, then open the **c:\VHD** folder on the Hyper-V host, right-click inside the folder and click **Paste**.

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

    Additional system restarts will occur to complete updating and preparing the operating system. This step requires approximately 15 to 30 minutes, depending on the speed of the Hyper-V host. Setup will complete the following steps:

    - Installs the Windows 10 Enterprise operating system.
    - Installs added applications, roles, and features.
    - Updates the operating system using Windows Update (or WSUS if optionally specified).
    - Stages Windows PE on the local disk.
    - Runs System Preparation (Sysprep) and reboots into Windows PE.
    - Captures the installation to a Windows Imaging (WIM) file.
    - Turns off the virtual machine.

    The entire process requires one to several hours, depending on the speed of the Hyper-V host and network. After some time, you will have a Windows 10 Enterprise x64 image that is fully patched and has run through Sysprep, located in the C:\MDTBuildLab\Captures folder on your deployment server. The file name is REFW10X64-001.wim.

 ## Deploy a Windows 10 image using MDT

This procedure will demonstrate how to deploy the reference image to the PoC environment using MDT.

1. On SRV1, open the MDT Deployment Workbench console, right-click Deployment Shares, and then click New Deployment Share. Use the following values in the New Deployment Share Wizard:
     - **Deployment share path**: C:\MDTProd
     - **Share name**: MDTProd$
     - **Deployment share description**: MDT Production
     - **Options**: accept the default

2. Click **Finish** and verify the new deployment share was added successfully.

3. In the Deployment Workbench console, expand the MDT Production deployment share, right-click **Operating Systems**, and then click **New Folder**. Name the new folder **Windows 10**.

4. Right-click the Windows 10 folder created in the previous step, and then click **Import Operating System**.

5. On the **OS Type** page, choose **Custom image file** and then click **Next**.

6. On the Image page, browse to the C:\MDTBuildLab\Captures\REFW10X64-001.wim file created in the previous procedure, click **Open**, and then click **Next**.

7. On the Setup page, select **Copy Windows 7, Windows Server 2008 R2, or later setup files from the specified path**. 

8. Under **Setup source directory**, browse to **C:\MDTBuildLab\Operating Systems\W10Ent_x64** click **OK** and then click **Next**.

9. On the Destination page, accept the default Destination directory name of **REFW10X64-001**, click **Next** twice, and then click **Finish**.

10. In the Operating Systems > Windows 10 node, double-click the operating system that was added to view its Properties. Change the Operating system name to **Windows 10 Enterprise x64 Custom Image** and then click **OK**.

### Create the deployment task sequence

1. Using the Deployment Workbench, select Task Sequences in the MDT Production node, and create a folder named Windows 10.

2. Right-click the Windows 10 folder created in the previous step, and then click **New Task Sequence**. Use the following settings for the New Task Sequence Wizard:
    - Task sequence ID: W10-X64-001
    - Task sequence name: Windows 10 Enterprise x64 Custom Image
    - Task sequence comments: Production Image
    - Select Template: Standard Client Task Sequence
    - Select OS: Windows 10 Enterprise x64 Custom Image
    - Specify Product Key: Do not specify a product key at this time
    - Full Name: Contoso
    - Organization: Contoso
    - Internet Explorer home page: http://www.contoso.com
    - Admin Password: pass@word1 
    
### Configure the MDT production deployment share

1. On SRV1, open an elevated Windows PowerShell prompt and type the following commands:

    ```
    copy-item "C:\Program Files\Microsoft Deployment Toolkit\Templates\Bootstrap.ini" C:\MDTProd\Control\Bootstrap.ini -Force
    copy-item "C:\Program Files\Microsoft Deployment Toolkit\Templates\CustomSettings.ini" C:\MDTProd\Control\CustomSettings.ini -Force
    ``` 
2. In the Deployment Workbench console on SRV1, right-click the MDT Production deployment share and then click Properties.

3. Click the **Rules** tab and replace the rules with the following text:

    ```
    [Settings] 
    Priority=Default 

    [Default] 
    _SMSTSORGNAME=Contoso 
    OSInstall=YES 
    UserDataLocation=AUTO 
    TimeZoneName=Pacific Standard Time 
    AdminPassword=pass@word1 
    JoinDomain=contoso.com 
    DomainAdmin=CONTOSO\administrator 
    DomainAdminPassword=pass@word1 
    MachineObjectOU=OU=Workstations,OU=Computers,OU=Contoso,DC=contoso,DC=com  
    HideShell=YES 
    ApplyGPOPack=NO 
    SkipAppsOnUpgrade=NO 
    SkipAdminPassword=YES 
    SkipProductKey=YES 
    SkipComputerName=NO 
    SkipDomainMembership=YES 
    SkipUserData=YES 
    SkipLocaleSelection=YES 
    SkipTaskSequence=NO 
    SkipTimeZone=YES 
    SkipApplications=NO 
    SkipBitLocker=YES 
    SkipSummary=YES 
    SkipCapture=YES 
    SkipFinalSummary=NO
    ```
4. Click **Edit Bootstap.ini** and replace text in the file with the following text:
    ```
    [Settings] 
    Priority=Default 

    [Default] 
    DeployRoot=\\SRV1\MDTProd$ 
    UserDomain=CONTOSO 
    UserID=administrator 
    SkipBDDWelcome=YES
    ```
5. Click **OK** when finished. 

### Update the deployment share

1. Right-click the MDT Production deployment share and then click Update Deployment Share.

2. Use the default options for the Update Deployment Share Wizard. The update process requires 5 to 10 minutes to complete.

3. Click **Finish** when the update is complete.

### Configure Windows Deployment Services



1. Initialize Windows Deployment Services (WDS) by typing the following command at an elevated Windows PowerShell prompt:

    ```
    WDSUTIL /Verbose /Progress /Initialize-Server /Server:SRV1 /RemInst:"C:\RemoteInstall"
    ```

2. Click **Start**, type **Windows Deployment**, and then click **Windows Deployment Services**.

3. Expand SRV1.contoso.com, right-click **Boot Images**, and then click **Add Boot Image**.

4. Browse to the **C:\MDTProd\Boot\LiteTouchPE_x64.wim** file, click **Open**, and accept the defaults in the Add Image Wizard.

### Deploy the client image

1. 




## Related Topics

 

 





