---
title: Deploy Windows To Go in your organization (Windows 10)
description: This topic helps you to deploy Windows To Go in your organization.
ms.assetid: cfe550be-ffbd-42d1-ab4d-80efae49b07f
keywords: deployment, USB, device, BitLocker, workspace, security, data
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobility
author: greg-lindsay
ms.topic: article
---

# Deploy Windows To Go in your organization


**Applies to**

-   Windows 10

This topic helps you to deploy Windows To Go in your organization. Before you begin deployment, make sure that you have reviewed the topics [Windows To Go: feature overview](planning/windows-to-go-overview.md) and [Prepare your organization for Windows To Go](planning/prepare-your-organization-for-windows-to-go.md) to ensure that you have the correct hardware and are prepared to complete the deployment. You can then use the steps in this topic to start your Windows To Go deployment.

>[!IMPORTANT]
>Windows To Go is no longer being developed. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

## Deployment tips

The following is a list of items that you should be aware of before you start the deployment process:

* Only use recommended USB drives for Windows To Go. Use of other drives is not supported. Check the list at [Windows To Go: feature overview](planning/windows-to-go-overview.md) for the latest USB drives certified for use as Windows To Go drives.

* After you provision a new workspace, always eject a Windows To Go drive using the **Safely Remove Hardware and Eject Media** control that can be found in the notification area or in Windows Explorer. Removing the drive from the USB port without ejecting it first can cause the drive to become corrupted.

* When running a Windows To Go workspace, always shutdown the workspace before unplugging the drive.

-   System Center 2012 Configuration Manager SP1 and later includes support for user self-provisioning of Windows To Go drives. You can download Configuration Manager for evaluation from the [Microsoft TechNet Evaluation Center](https://go.microsoft.com/fwlink/p/?LinkId=618746). For more information on this deployment option, see [How to Provision Windows To Go in Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=619148).

* If you are planning on using a USB drive duplicator to duplicate Windows To Go drives, do not configure offline domain join or BitLocker on the drive.

## Basic deployment steps

Unless you are using a customized operating system image, your initial Windows To Go workspace will not be domain joined and will not contain applications. This is exactly like a new installation of Windows on a desktop or laptop computer. When planning your deployment, you should develop methods to join Windows to Go drives to the domain and install the standard applications that users in your organization require. These methods probably will be similar to the ones used for setting up desktop and laptop computers with domain privileges and applications. This section describes the instructions for creating the correct disk layout on the USB drive, applying the operating system image and the core Windows To Go specific configurations to the drive. The following steps are used in both small-scale and large-scale Windows To Go deployment scenarios.

Completing these steps will give you a generic Windows To Go drive that can be distributed to your users and then customized for their usage as needed. This drive is also appropriate for use with USB drive duplicators. Your specific deployment scenarios will involve more than just these basic steps but these additional deployment considerations are similar to traditional PC deployment and can be incorporated into your Windows To Go deployment plan. For additional information, see [Windows Deployment Options](https://go.microsoft.com/fwlink/p/?LinkId=619149).

>[!WARNING]
>If you plan to use the generic Windows To Go drive as the master drive in a USB duplicator, the drive should not be booted. If the drive has been booted inadvertently it should be reprovisioned prior to duplication.

### Create the Windows To Go workspace

In this step we are creating the operating system image that will be used on the Windows To Go drives. You can use the Windows To Go Creator Wizard or you can [do this manually](https://go.microsoft.com/fwlink/p/?LinkId=619174) using a combination of Windows PowerShell and command-line tools.

>[!WARNING]  
>The preferred method to create a single Windows To Go drive is to use the Windows To Go Creator Wizard included in Windows 10 Enterprise and Windows 10 Education.

#### To create a Windows To Go workspace with the Windows To Go Creator Wizard

1. Sign into your Windows PC using an account with Administrator privileges.

2. Insert the USB drive that you want to use as your Windows To Go drive into your PC.

3. Verify that the .wim file location (which can be a network share, a DVD , or a USB drive) is accessible and that it contains a valid Windows 10 Enterprise or Windows 10 Education image that has been generalized using sysprep. Many environments can use the same image for both Windows To Go and desktop deployments.

    >[!NOTE]  
    >For more information about .wim files, see [Windows System Image Manager (Windows SIM) Technical Reference](https://go.microsoft.com/fwlink/p/?LinkId=619150). For more information about using sysprep, see [Sysprep Overview](https://go.microsoft.com/fwlink/p/?LinkId=619151).

4. Using Cortana, search for **Windows To Go** and then press **Enter**. If the **User Account Control** dialog box appears, confirm that the action it displays is what you want, and then click **Yes**. The **Windows To Go Creator Wizard** opens.

5. On the **Choose the drive you want to use** page select the drive that represents the USB drive you inserted previously, then click **Next.**

6. On the **Choose a Windows image** page, click **Add Search Location** and then navigate to the .wim file location and click select folder. The wizard will display the installable images present in the folder; select the Windows 10 Enterprise or Windows 10 Education image you wish to use and then click **Next**.

7.  (Optional) On the **Set a BitLocker password (optional)** page, you can select **Use BitLocker with my Windows To Go Workspace** to encrypt your Windows To Go drive. If you do not wish to encrypt the drive at this time, click **Skip**. If you decide you want to add BitLocker protection later, see [Enable BitLocker protection for your Windows To Go drive](https://go.microsoft.com/fwlink/p/?LinkId=619152) for instructions.
r

    >[!WARNING]  
    >If you plan to use a USB-Duplicator to create multiple Windows To Go drives, do not enable BitLocker. Drives protected with BitLocker should not be duplicated.

    If you choose to encrypt the Windows To Go drive now:

    - Type a password that is at least eight characters long and conforms to your organizations password complexity policy. This password will be provided before the operating system is started so any characters you use must be able to be interpreted by the firmware. Some firmware does not support non-ASCII characters.


        >[!IMPORTANT]  
        >The BitLocker recovery password will be saved in the documents library of the computer used to create the workspace automatically. If your organization is using Active Directory Domain Services (AD DS) to store recovery passwords it will also be saved in AD DS under the computer account of the computer used to create the workspace. This password will be used only if you need to recover access to the drive because the BitLocker password specified in the previous step is not available, such as if a password is lost or forgotten. For more information about BitLocker and AD DS, see [Active Directory Domain Services considerations](https://go.microsoft.com/fwlink/p/?LinkId=619157).    

8. Verify that the USB drive inserted is the one you want to provision for Windows To Go and then click **Create** to start the Windows To Go workspace creation process.

    >[!WARNING]  
    >The USB drive identified will be reformatted as part of the Windows To Go provisioning process and any data on the drive will be erased.  

9. Wait for the creation process to complete, which can take 20 to 30 minutes. A completion page will be displayed that tells you when your Windows To Go workspace is ready to use. From the completion page you can configure the Windows To Go startup options to configure the current computer as a Windows To Go host computer.

Your Windows To Go workspace is now ready to be started. You can now [prepare a host computer](https://go.microsoft.com/fwlink/p/?LinkId=619159) using the Windows To Go startup options and boot your Windows To Go drive.

#### Windows PowerShell equivalent commands

The following Windows PowerShell cmdlet or cmdlets perform the same function as the preceding procedure. Enter each cmdlet on a single line, even though they may appear word-wrapped across several lines here because of formatting constraints. This procedure can only be used on PCs that are running Windows 10. Before starting, ensure that only the USB drive that you want to provision as a Windows To Go drive is connected to the PC.

1. Using Cortana, search for **powershell**, right-click **Windows PowerShell**, and then select **Run as administrator**.

2. In the Windows PowerShell session type the following commands to partition a master boot record (MBR) disk for use with a FAT32 system partition and an NTFS-formatted operating system partition. This disk layout can support computers that use either UEFI or BIOS firmware:

    ``` syntax
   # The following command will set $Disk to all USB drives with >20 GB of storage

    $Disk = Get-Disk | Where-Object {$_.Path -match "USBSTOR" -and $_.Size -gt 20Gb -and -not $_.IsBoot }

   #Clear the disk. This will delete any data on the disk. (and will fail if the disk is not yet initialized. If that happens, simply continue with ‘New-Partition…) Validate that this is the correct disk that you want to completely erase.
   #
   # To skip the confirmation prompt, append –confirm:$False
    Clear-Disk –InputObject $Disk[0] -RemoveData

   # This command initializes a new MBR disk
    Initialize-Disk –InputObject $Disk[0] -PartitionStyle MBR

   # This command creates a 350 MB system partition
    $SystemPartition = New-Partition –InputObject $Disk[0] -Size (350MB) -IsActive

   # This formats the volume with a FAT32 Filesystem
   # To skip the confirmation dialog, append –Confirm:$False
    Format-Volume -NewFileSystemLabel "UFD-System" -FileSystem FAT32 `
    -Partition $SystemPartition

   # This command creates the Windows volume using the maximum space available on the drive. The Windows To Go drive should not be used for other file storage.
    $OSPartition = New-Partition –InputObject $Disk[0] -UseMaximumSize
    Format-Volume -NewFileSystemLabel "UFD-Windows" -FileSystem NTFS `
    -Partition $OSPartition

   # This command assigns drive letters to the new drive, the drive letters chosen should not already be in use.
    Set-Partition -InputObject $SystemPartition -NewDriveLetter "S"
    Set-Partition -InputObject $OSPartition -NewDriveLetter "W"

   # This command sets the NODEFAULTDRIVELETTER flag on the partition which prevents drive letters being assigned to either partition when inserted into a different computer.
    Set-Partition -InputObject $OSPartition -NoDefaultDriveLetter $TRUE
    ```

3. Next you need to apply the operating system image that you want to use with Windows To Go to the operating system partition you just created on the disk (this may take 30 minutes or longer, depending on the size of the image and the speed of your USB connection). The following command shows how this can be accomplished using the [Deployment Image Servicing and Management](https://go.microsoft.com/fwlink/p/?LinkId=619161) command-line tool (DISM):

    >[!TIP]  
    >The index number must be set correctly to a valid Enterprise image in the .WIM file.

    ``` syntax
    #The WIM file must contain a sysprep generalized image.
    dism /apply-image /imagefile:n:\imagefolder\deploymentimages\mywtgimage.wim /index:1 /applydir:W:\
    ```

4.  Now use the [bcdboot](https://go.microsoft.com/fwlink/p/?LinkId=619163) command line tool to move the necessary boot components to the system partition on the disk. This helps ensure that the boot components, operating system versions, and architectures match. The `/f ALL` parameter indicates that boot components for UEFI and BIOS should be placed on the system partition of the disk. The following example illustrates this step:


    ``` syntax
    W:\Windows\System32\bcdboot W:\Windows /f ALL /s S:
    ```

5. Apply SAN policy—OFFLINE\_INTERNAL - “4” to prevent the operating system from automatically bringing online any internally connected disk. This is done by creating and saving a **san\_policy.xml** file on the disk. The following example illustrates this step:

    ``` syntax
    <?xml version='1.0' encoding='utf-8' standalone='yes'?>
    <unattend xmlns="urn:schemas-microsoft-com:unattend">
      <settings pass="offlineServicing">
        <component
            xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            language="neutral"
            name="Microsoft-Windows-PartitionManager"
            processorArchitecture="x86"
            publicKeyToken="31bf3856ad364e35"
            versionScope="nonSxS"
            >
          <SanPolicy>4</SanPolicy>
        </component>
       <component
            xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            language="neutral"
            name="Microsoft-Windows-PartitionManager"
            processorArchitecture="amd64"
            publicKeyToken="31bf3856ad364e35"
            versionScope="nonSxS"
            >
          <SanPolicy>4</SanPolicy>
        </component>
     </settings>
    </unattend>
    ```

6. Place the **san\_policy.xml** file created in the previous step into the root directory of the Windows partition on the Windows To Go drive (W: from the previous examples) and run the following command:

    ``` syntax
    Dism.exe /Image:W:\ /Apply-Unattend:W:\san_policy.xml
    ```

7. Create an answer file (unattend.xml) that disables the use of Windows Recovery Environment with Windows To Go. You can use the following code sample to create a new answer file or you can paste it into an existing answer file:

    ``` syntax
    <?xml version="1.0" encoding="utf-8"?>
    <unattend xmlns="urn:schemas-microsoft-com:unattend">
        <settings pass="oobeSystem">
            <component name="Microsoft-Windows-WinRE-RecoveryAgent"
              processorArchitecture="x86"
              publicKeyToken="31bf3856ad364e35" language="neutral"
              versionScope="nonSxS"
              xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <UninstallWindowsRE>true</UninstallWindowsRE>
            </component>
           <component name="Microsoft-Windows-WinRE-RecoveryAgent"
              processorArchitecture="amd64"
              publicKeyToken="31bf3856ad364e35" language="neutral"
              versionScope="nonSxS"
              xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                <UninstallWindowsRE>true</UninstallWindowsRE>
            </component>
        </settings>
    </unattend>
    ```

    After the answer file has been saved, copy unattend.xml into the sysprep folder on the Windows To Go drive (for example, W:\\Windows\\System32\\sysprep\)

    >[!IMPORTANT]  
    >Setup unattend files are processed based on their location. Setup will place a temporary unattend file into the **%systemroot%\\panther** folder which is the first location that setup will check for installation information. You should make sure that folder does not contain a previous version of an unattend.xml file to ensure that the one you just created is used.

    If you do not wish to boot your Windows To Go device on this computer and want to remove it to boot it on another PC, be sure to use the **Safely Remove Hardware and Eject Media** option to safely disconnect the drive before physically removing it from the PC.


Your Windows To Go workspace is now ready to be started. You can now [prepare a host computer](https://go.microsoft.com/fwlink/p/?LinkId=619165) using the Windows To Go startup options to test your workspace configuration, [configure the workspace for offline domain join](https://go.microsoft.com/fwlink/p/?LinkId=619166), or [enable BitLocker protection for your Windows To Go drive](https://go.microsoft.com/fwlink/p/?LinkId=619167).


### To prepare a host computer

Computers running Windows 8 and later can be configured as host computers that use Windows To Go automatically whenever a Windows To Go workspace is available at startup. When the Windows To Go startup options are enabled on a host computer, Windows will divert startup to the Windows To Go drive whenever it is attached to the computer. This makes it easy to switch from using the host computer to using the Windows To Go workspace.

>[!TIP]  
>If you will be using a PC running Windows 7 as your host computer, see [Tips for configuring your BIOS settings to work with Windows To Go](https://go.microsoft.com/fwlink/p/?LinkId=618951) for information to help you prepare the host computer.


If you want to use the Windows To Go workspace, simply shut down the computer, plug in the Windows To Go drive, and turn on the computer. To use the host computer, shut down the Windows To Go workspace, unplug the Windows To Go drive, and turn on the computer.

To set the Windows To Go Startup options for host computers running Windows 10:

1. Using Cortana, search for **Windows To Go startup options** and then press **Enter**.

2. In the **Windows To Go Startup Options** dialog box, select **Yes**, and then click **Save Changes** to configure the computer to boot from USB

For host computers running Windows 8 or Windows 8.1:

1. Press **Windows logo key+W**, search for **Windows To Go startup options**, and then press **Enter**.

2. In the **Windows To Go Startup Options** dialog box, select **Yes**, and then click **Save Changes** to configure the computer to boot from USB.

You can configure your organization's computers to automatically start from the USB drive by enabling the following Group Policy setting:

**\\\\Computer Configuration\\Administrative Templates\\Windows Components\\Portable Operating System\\Windows To Go Default Startup Options**

After this policy setting is enabled, automatic starting of a Windows To Go workspace will be attempted when a USB drive is connected to the computer when it is started. Users will not be able to use the Windows To Go Startup Options to change this behavior. If you disable this policy setting, booting to Windows To Go when a USB drive is connected will not occur unless a user configures the option manually in the firmware. If you do not configure this policy setting, users who are members of the Administrators group can enable or disable booting from a USB drive using the Windows To Go Startup Options.

Your host computer is now ready to boot directly into Windows To Go workspace when it is inserted prior to starting the computer. Optionally you can perform [Configure Windows To Go workspace for offline domain join](https://go.microsoft.com/fwlink/p/?LinkId=619169) and [Enable BitLocker protection for your Windows To Go drive](https://go.microsoft.com/fwlink/p/?LinkId=619152).

### Booting your Windows To Go workspace

After you have configured your host PC to boot from USB, you can use the following procedure to boot your Windows To Go workspace:

**To boot your workspace**

1.  Make sure that the host PC is not in a sleep state. If the computer is in a sleep state, either shut it down or hibernate it.

2.  Insert the Windows To Go USB drive directly into a USB 3.0 or USB 2.0 port on the PC. Do not use a USB hub or extender.

3.  Turn on the PC. If your Windows To Go drive is protected with BitLocker you will be asked to type the password, otherwise the workspace will boot directly into the Windows To Go workspace.

## Advanced deployment steps


The following steps are used for more advanced deployments where you want to have further control over the configuration of the Windows To Go drives, ensure that they are correctly configured for remote access to your organizational resources, and have been protected with BitLocker Drive Encryption.

### Configure Windows To Go workspace for remote access

Making sure that Windows To Go workspaces are effective when used off premises is essential to a successful deployment. One of the key benefits of Windows To Go is the ability for your users to use the enterprise managed domain joined workspace on an unmanaged computer which is outside your corporate network. To enable this usage, typically you would provision the USB drive as described in the basic deployment instructions and then add the configuration to support domain joining of the workspace, installation of any line-of-business applications, and configuration of your chosen remote connectivity solution such as a virtual private network client or DirectAccess. Once these configurations have been performed the user can work from the workspace using a computer that is off-premises. The following procedure allows you to provision domain joined Windows To Go workspaces for workers that do not have physical access to your corporate network.

**Prerequisites for remote access scenario**

-   A domain-joined computer running Windows 8 or later and is configured as a Windows To Go host computer

-   A Windows To Go drive that hasn’t been booted or joined to the domain using unattend settings.

-   A domain user account with rights to add computer accounts to the domain and is a member of the Administrator group on the Windows To Go host computer

-   [DirectAccess](https://go.microsoft.com/fwlink/p/?LinkId=619170) configured on the domain

**To configure your Windows To Go workspace for remote access**

1. Start the host computer and sign in using a user account with privileges to add workstations to the domain and then run the following command from an elevated command prompt replacing the example placeholder parameters (denoted by &lt;&gt;) with the ones applicable for your environment:

    ``` syntax
    djoin /provision /domain <exampledomain.com> /machine <examplewindowstogo_workspace_name> /certtemplate <WorkstationAuthentication_template> /policynames <DirectAccess Client Policy: {GUID}> /savefile <C:\example\path\domainmetadatafile> /reuse
    ```

    >[!NOTE]  
    >The **/certtemplate** parameter supports the use of certificate templates for distributing certificates for DirectAccess, if your organization is not using certificate templates you can omit this parameter. Additionally, if are using djoin.exe with Windows Server 2008-based Domain Controllers, append the /downlevel switch during provisioning. For more information see the [Offline Domain Join Step-by-Step guide](https://go.microsoft.com/fwlink/p/?LinkId=619171).

2. Insert the Windows To Go drive.

3. Launch an elevated Windows PowerShell prompt by right-clicking the Windows PowerShell shortcut in the taskbar, and then clicking **Run as Administrator**.

4. From the Windows PowerShell command prompt run:

    ``` syntax
   # The following command will set $Disk to all USB drives with >20 GB of storage

    $Disk = Get-Disk | Where-Object {$_.Path -match "USBSTOR" -and $_.Size -gt 20Gb -and -not $_.IsBoot }

   #Clear the disk. This will delete any data on the disk. (and will fail if the disk is not yet initialized. If that happens, simply continue with ‘New-Partition…) Validate that this is the correct disk that you want to completely erase.
   #
   # To skip the confirmation prompt, append –confirm:$False
    Clear-Disk –InputObject $Disk[0] -RemoveData

   # This command initializes a new MBR disk
    Initialize-Disk –InputObject $Disk[0] -PartitionStyle MBR

   # This command creates a 350 MB system partition
    $SystemPartition = New-Partition –InputObject $Disk[0] -Size (350MB) -IsActive

   # This formats the volume with a FAT32 Filesystem
   # To skip the confirmation dialog, append –Confirm:$False
    Format-Volume -NewFileSystemLabel "UFD-System" -FileSystem FAT32 `
    -Partition $SystemPartition

   # This command creates the Windows volume using the maximum space available on the drive. The Windows To Go drive should not be used for other file storage.
    $OSPartition = New-Partition –InputObject $Disk[0] -UseMaximumSize
    Format-Volume -NewFileSystemLabel "UFD-Windows" -FileSystem NTFS `
    -Partition $OSPartition

   # This command assigns drive letters to the new drive, the drive letters chosen should not already be in use.
    Set-Partition -InputObject $SystemPartition -NewDriveLetter "S"
    Set-Partition -InputObject $OSPartition -NewDriveLetter "W"

   # This command toggles the NODEFAULTDRIVELETTER flag on the partition which prevents drive letters being assigned to either partition when inserted into a different computer.
    Set-Partition -InputObject $OSPartition -NoDefaultDriveLetter $TRUE
    ```

5. Next you need to apply the operating system image that you want to use with Windows To Go to the operating system partition you just created on the disk (this may take 30 minutes or longer, depending on the size of the image and the speed of your USB connection). The following command shows how this can be accomplished using the [Deployment Image Servicing and Management](https://go.microsoft.com/fwlink/p/?LinkId=619161) command-line tool (DISM):


    >[!TIP]  
    >The index number must be set correctly to a valid Enterprise image in the .WIM file.

    ``` syntax
    #The WIM file must contain a sysprep generalized image.
    dism /apply-image /imagefile:n:\imagefolder\deploymentimages\mywtgimage.wim /index:1 /applydir:W:\
    ```

6.  After those commands have completed, run the following command:

    ``` syntax
    djoin /requestodj /loadfile C:\example\path\domainmetadatafile /windowspath W:\Windows
    ```

7.  Next, we will need to edit the unattend.xml file to configure the first run (OOBE) settings. In this example we are hiding the Microsoft Software License Terms (EULA) page, configuring automatic updates to install important and recommended updates automatically, and identifying this workspace as part of a private office network. You can use other OOBE settings that you have configured for your organization if desired. For more information about the OOBE settings, see [OOBE](https://go.microsoft.com/fwlink/p/?LinkId=619172):

    ``` syntax
    <?xml version="1.0" encoding="utf-8"?>
    <unattend xmlns="urn:schemas-microsoft-com:unattend">
        <settings pass="oobeSystem">
            <component name="Microsoft-Windows-WinRE-RecoveryAgent"
              processorArchitecture="x86"
              publicKeyToken="31bf3856ad364e35" language="neutral"
              versionScope="nonSxS"
              xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
               <UninstallWindowsRE>true</UninstallWindowsRE>
               <OOBE>
                  <HideEULAPage>true</HideEULAPage>
                  <ProtectYourPC>1</ProtectYourPC>
                  <NetworkLocation>Work</NetworkLocation>
                </OOBE>
             </component>
           <component name="Microsoft-Windows-WinRE-RecoveryAgent"
              processorArchitecture="amd64"
              publicKeyToken="31bf3856ad364e35" language="neutral"
              versionScope="nonSxS"
              xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
               <UninstallWindowsRE>true</UninstallWindowsRE>
               <OOBE>
                  <HideEULAPage>true</HideEULAPage>
                  <ProtectYourPC>1</ProtectYourPC>
                  <NetworkLocation>Work</NetworkLocation>
               </OOBE>
    </component>
        </settings>
    </unattend>
    ```

8.  Safely remove the Windows To Go drive.

9.  From a host computer, either on or off premises, start the computer and boot the Windows To Go workspace.

    * If on premises using a host computer with a direct network connection, sign on using your domain credentials.

    * If off premises, join a wired or wireless network with internet access and then sign on again using your domain credentials.

    >[!NOTE]  
    >Depending on your DirectAccess configuration you might be asked to insert your smart card to log on to the domain.

You should now be able to access your organization’s network resources and work from your Windows To Go workspace as you would normally work from your standard desktop computer on premises.

### Enable BitLocker protection for your Windows To Go drive

Enabling BitLocker on your Windows To Go drive will help ensure that your data is protected from unauthorized use and that if your Windows To Go drive is lost or stolen it will not be easy for an unauthorized person to obtain confidential data or use the workspace to gain access to protected resources in your organization. When BitLocker is enabled, each time you boot your Windows To Go drive, you will be asked to provide the BitLocker password to unlock the drive. The following procedure provides the steps for enabling BitLocker on your Windows To Go drive:

#### Prerequisites for enabling BitLocker scenario

* A Windows To Go drive that can be successfully provisioned.

* A computer running Windows 8 configured as a Windows To Go host computer

* Review the following Group Policy settings for BitLocker Drive Encryption and modify the configuration as necessary:

    **\\Windows Components\\BitLocker Drive Encryption\\Operating System Drives\\Require additional authentication at startup**. This policy allows the use of a password key protector with an operating system drive; this policy must be enabled to configure BitLocker from within the Windows To Go workspace. This policy setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a Trusted Platform Module (TPM). You must enable this setting and select the **Allow BitLocker without a compatible TPM** check box and then enable the **Configure use of passwords for operating system drives** setting.

    **\\Windows Components\\BitLocker Drive Encryption\\Operating System Drives\\Configure use of passwords for operating system drives**. This policy setting enables passwords to be used to unlock BitLocker-protected operating system drives and provides the means to configure complexity and length requirements on passwords for Windows To Go workspaces. For the complexity requirement setting to be effective the Group Policy setting **Password must meet complexity requirements** located in **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy\\** must be also enabled.

    **\\Windows Components\\BitLocker Drive Encryption\\Operating System Drives\\Enable use of BitLocker authentication requiring preboot keyboard input on slates**. This policy setting allows users to enable authentication options that require user input from the preboot environment even if the platform indicates a lack of preboot input capability. If this setting is not enabled, passwords cannot be used to unlock BitLocker-protected operating system drives.

You can choose to enable BitLocker protection on Windows To Go drives before distributing them to users as part of your provisioning process or you can allow your end-users to apply BitLocker protection to them after they have taken possession of the drive. A step-by-step procedure is provided for both scenarios.

Enabling BitLocker during provisioning ensures that your operating system image is always protected by BitLocker. When enabling BitLocker during the provisioning process you can significantly reduce the time required for encrypting the drive by enabling BitLocker after configuring the disk and just prior to applying the image. If you use this method, you will need to give users their BitLocker password when you give then their Windows To Go workspace. Also, you should instruct your users to boot their workspace and change their BitLocker password as soon as possible (this can be done with standard user privileges).

Enabling BitLocker after distribution requires that your users turn on BitLocker. This means that your Windows To Go workspaces are unprotected until the user enables BitLocker. Administrative rights on the Windows To Go workspace are required to enable BitLocker. For more information about BitLocker see the [BitLocker Overview](https://go.microsoft.com/fwlink/p/?LinkId=619173).

#### BitLocker recovery keys

BitLocker recovery keys are the keys that can be used to unlock a BitLocker protected drive if the standard unlock method fails. It is recommended that your BitLocker recovery keys be backed up to Active Directory Domain Services (AD DS). If you do not want to use AD DS to store recovery keys you can save recovery keys to a file or print them. How BitLocker recovery keys are managed differs depending on when BitLocker is enabled.

-   If BitLocker protection is enabled during provisioning, the BitLocker recovery keys will be stored under the computer account of the computer used for provisioning the drives. If backing up recovery keys to AD DS is not used, the recovery keys will need to be printed or saved to a file for each drive. The IT administrator must track which keys were assigned to which Windows To Go drive.

-   **Warning**  
    If BitLocker is enabled after distribution, the recovery key will be backed up to AD DS under the computer account of the workspace. If backing up recovery keys to AD DS is not used, they can be printed or saved to a file by the user. If the IT administrator wants a central record of recovery keys, a process by which the user provides the key to the IT department must be put in place.

#### To enable BitLocker during provisioning

1. Start the host computer that is running Windows 8.

2. Insert your Windows To Go drive.

3. Launch an elevated Windows PowerShell prompt by right-clicking the Windows PowerShell shortcut in the taskbar, and then clicking **Run as Administrator**.

4. Provision the Windows To Go drive using the following cmdlets:

    >[!NOTE]  
    >If you used the [manual method for creating a workspace](https://go.microsoft.com/fwlink/p/?LinkId=619174) you should have already provisioned the Windows To Go drive. If so, you can continue on to the next step.

   ``` syntax
   # The following command will set $Disk to all USB drives with >20 GB of storage

    $Disk = Get-Disk | Where-Object {$_.Path -match "USBSTOR" -and $_.Size -gt 20Gb -and -not $_.IsBoot }

   #Clear the disk. This will delete any data on the disk. (and will fail if the disk is not yet initialized. If that happens, simply continue with ‘New-Partition…) Validate that this is the correct disk that you want to completely erase.
   #
   # To skip the confirmation prompt, append –confirm:$False
    Clear-Disk –InputObject $Disk[0] -RemoveData

   # This command initializes a new MBR disk
    Initialize-Disk –InputObject $Disk[0] -PartitionStyle MBR

   # This command creates a 350 MB system partition
    $SystemPartition = New-Partition –InputObject $Disk[0] -Size (350MB) -IsActive

   # This formats the volume with a FAT32 Filesystem
   # To skip the confirmation dialog, append –Confirm:$False
    Format-Volume -NewFileSystemLabel "UFD-System" -FileSystem FAT32 `
    -Partition $SystemPartition

   # This command creates the Windows volume using the maximum space available on the drive. The Windows To Go drive should not be used for other file storage.
    $OSPartition = New-Partition –InputObject $Disk[0] -UseMaximumSize
    Format-Volume -NewFileSystemLabel "UFD-Windows" -FileSystem NTFS `
    -Partition $OSPartition

   # This command assigns drive letters to the new drive, the drive letters chosen should not already be in use.
    Set-Partition -InputObject $SystemPartition -NewDriveLetter "S"
    Set-Partition -InputObject $OSPartition -NewDriveLetter "W"

   # This command toggles the NODEFAULTDRIVELETTER flag on the partition which prevents drive letters being assigned to either partition when inserted into a different computer.
    Set-Partition -InputObject $OSPartition -NoDefaultDriveLetter $TRUE
    ```

   Next you need to apply the operating system image that you want to use with Windows To Go to the operating system partition you just created on the disk (this may take 30 minutes or longer, depending on the size of the image and the speed of your USB connection). The following command shows how this can be accomplished using the [Deployment Image Servicing and Management](https://go.microsoft.com/fwlink/p/?LinkId=619161) command-line tool (DISM):

   >[!TIP]  
   >The index number must be set correctly to a valid Enterprise image in the .WIM file.

   ``` syntax
   #The WIM file must contain a sysprep generalized image.
   dism /apply-image /imagefile:n:\imagefolder\deploymentimages\mywtgimage.wim /index:1 /applydir:W:\
   ```

5. In the same PowerShell session use the following cmdlet to add a recovery key to the drive:

   ``` syntax
   $BitlockerRecoveryProtector = Add-BitLockerKeyProtector W: -RecoveryPasswordProtector
   ```

6. Next, use the following cmdlets to save the recovery key to a file:

   ``` syntax
   #The BitLocker Recovery key is essential if for some reason you forget the BitLocker password
   #This recovery key can also be backed up into Active Directory using manage-bde.exe or the
   #PowerShell cmdlet Backup-BitLockerKeyProtector.
   $RecoveryPassword = $BitlockerRecoveryProtector.KeyProtector.RecoveryPassword
   $RecoveryPassword > WTG-Demo_Bitlocker_Recovery_Password.txt
   ```

7. Then, use the following cmdlets to add the password as a secure string. If you omit the password the cmdlet will prompt you for the password before continuing the operation:

   ``` syntax
   # Create a variable to store the password
   $spwd = ConvertTo-SecureString -String <password> -AsplainText –Force
   Enable-BitLocker W: -PasswordProtector $spwd
   ```

   >[!WARNING]  
   >To have BitLocker only encrypt used space on the disk append the parameter `–UsedSpaceOnly` to the `Enable-BitLocker` cmdlet. As data is added to the drive BitLocker will encrypt additional space. Using this parameter will speed up the preparation process as a smaller percentage of the disk will require encryption. If you are in a time critical situation where you cannot wait for encryption to complete you can also safely remove the Windows To Go drive during the encryption process. The next time the drive is inserted in a computer it will request the BitLocker password. Once the password is supplied, the encryption process will continue. If you do this, make sure your users know that BitLocker encryption is still in process and that they will be able to use the workspace while the encryption completes in the background.

8. Copy the numerical recovery password and save it to a file in a safe location. The recovery password will be required if the password is lost or forgotten.

   >[!WARNING]  
   >If the **Choose how BitLocker-protected removable data drives can be recovered** Group Policy setting has been configured to back up recovery information to Active Directory Domain Services, the recovery information for the drive will be stored under the account of the host computer used to apply the recovery key.

   If you want to have the recovery information stored under the account of the Windows To Go workspace you can turn BitLocker from within the Windows To Go workspace using the BitLocker Setup Wizard from the BitLocker Control Panel item as described in [To enable BitLocker after distribution](#enable-bitlocker). 

9. Safely remove the Windows To Go drive.

The Windows To Go drives are now ready to be distributed to users and are protected by BitLocker. When you distribute the drives, make sure the users know the following:

* Initial BitLocker password that they will need to boot the drives.

* Current encryption status.

* Instructions to change the BitLocker password after the initial boot.

* Instructions for how to retrieve the recovery password if necessary. This may be a help desk process, an automated password retrieval site, or a person to contact.

<a href="" id="enable-bitlocker"></a>
#### To enable BitLocker after distribution

1. Insert your Windows To Go drive into your host computer (that is currently shut down) and then turn on the computer and boot into your Windows To Go workspace

2. Press **Windows logo key+W** to open **Search Settings**, type BitLocker and then select the item for BitLocker Drive Encryption.

3. The drives on the workspace are displayed, click **Turn BitLocker On** for the C: drive. The **BitLocker Setup Wizard** appears.

4. Complete the steps in the **BitLocker Setup Wizard** selecting the password protection option.

>[!NOTE]  
>If you have not configured the Group Policy setting **\\Windows Components\\BitLocker Drive Encryption\\Operating System Drives\\Require additional authentication at startup** to specify **Allow BitLocker without a compatible TPM** you will not be able to enable BitLocker from within the Windows To Go workspace.

### Advanced deployment sample script

The following sample script supports the provisioning of multiple Windows To Go drives and the configuration of offline domain join.

The sample script creates an unattend file that streamlines the deployment process so that the initial use of the Windows To Go drive does not prompt the end user for any additional configuration information before starting up.

#### Prerequisites for running the advanced deployment sample script

* To run this sample script you must open a Windows PowerShell session as an administrator from a domain-joined computer using an account that has permission to create domain accounts.

* Using offline domain join is required by this script, since the script does not create a local administrator user account. However, domain membership will automatically put “Domain admins” into the local administrators group. Review your domain policies. If you are using DirectAccess you will need to modify the djoin.exe command to include the `policynames` and potentially the `certtemplate` parameters.

* The script needs to use drive letters, so you can only provision half as many drives as you have free drive letters.

#### To run the advanced deployment sample script

1. Copy entire the code sample titled “Windows To Go multiple drive provisioning sample script” into a PowerShell script (.ps1) file.

2. Make the modifications necessary for it to be appropriate to your deployment and save the file.

3. Configure the PowerShell execution policy. By default PowerShell’s execution policy is set to Restricted; that means that scripts won’t run until you have explicitly given them permission to. To configure PowerShell’s execution policy to allow the script to run, use the following command from an elevated PowerShell prompt:

    ``` syntax
    Set-ExecutionPolicy RemoteSigned
    ```

    The RemoteSigned execution policy will prevent unsigned scripts from the internet from running on the computer, but will allow locally created scripts to run. For more information on execution policies, see [Set-ExecutionPolicy](https://go.microsoft.com/fwlink/p/?LinkId=619175).

    >[!TIP]  
    >To get online help for any Windows PowerShell cmdlet, whether or not it is installed locally type the following cmdlet, replacing &lt;cmdlet-name&gt; with the name of the cmdlet you want to see the help for:

    >`Get-Help <cmdlet-name> -Online`

    >This command causes Windows PowerShell to open the online version of the help topic in your default Internet browser.

#### Windows To Go multiple drive provisioning sample script

``` syntax
<#
.SYNOPSIS
Windows To Go multiple drive provisioning sample script.

.DESCRIPTION
This sample script will provision one or more Windows To Go drives, configure offline domain join (using random machine names) and provides an option for BitLocker encryption. To provide a seamless first boot experience, an unattend file is created that will set the first run (OOBE) settings to defaults. To improve performance of the script, copy your install image to a local location on the computer used for provisioning the drives.

.EXAMPLE
.\WTG_MultiProvision.ps1 -InstallWIMPath c:\companyImages\amd64_enterprise.wim
provision drives connected to your machine with the provided image.
#>
param (
    [parameter(Mandatory=$true)]
    [string]
#Path to install wim.  If you have the full path to the wim or want to use a local file.
    $InstallWIMPath,

    [string]
#Domain to which to join the Windows To Go workspaces.
    $DomainName
)


<#
  In order to set BitLocker Group Policies for our offline WTG image we need to create a Registry.pol file
  in the System32\GroupPolicy folder. This file requires binary editing, which is not possible in PowerShell
  directly so we have some C# code that we can use to add a type in our PowerShell instance that will write
  the data for us.
#>
$Source = @"
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace MS.PolicyFileEditor
{
    //The PolicyEntry represents the DWORD Registry Key/Value/Data entry that will
    //be written into the file.
    public class PolicyEntry
    {
        private List<byte> byteList;

        public string KeyName { get; set; }
        public string ValueName { get; set; }

        internal List<byte> DataBytes
        {
            get { return this.byteList; }
        }

        public PolicyEntry(
            string Key,
            string Value,
            uint data)
        {
            KeyName = Key;
            ValueName = Value;
            this.byteList = new List<byte>();
            byte[] arrBytes = BitConverter.GetBytes(data);
            if (BitConverter.IsLittleEndian == false) { Array.Reverse(arrBytes); }
            this.byteList.AddRange(arrBytes);
        }

        ~PolicyEntry()
        {
            this.byteList = null;
        }
    }

    public class PolicyFile
    {
        private Dictionary<string, PolicyEntry> entries;

        public List<PolicyEntry> Entries
        {
            get
            {
                List<PolicyEntry> policyList = new List<PolicyEntry>(entries.Values);
                return policyList;
            }
        }

        public PolicyFile()
        {
            this.entries = new Dictionary<string, PolicyEntry>(StringComparer.OrdinalIgnoreCase);
        }

        public void SetDWORDValue(string key, string value, uint data)
        {
            PolicyEntry entry = new PolicyEntry(key, value, data);
            this.entries[entry.KeyName + "\\" + entry.ValueName] = entry;
        }

        public void SaveFile(string file)
        {
            using (FileStream fs = new FileStream(file, FileMode.Create, FileAccess.Write))
            {
                fs.Write(new byte[] { 0x50, 0x52, 0x65, 0x67, 0x01, 0x00, 0x00, 0x00 }, 0, 8);
                byte[] openBracket = UnicodeEncoding.Unicode.GetBytes("[");
                byte[] closeBracket = UnicodeEncoding.Unicode.GetBytes("]");
                byte[] semicolon = UnicodeEncoding.Unicode.GetBytes(";");
                byte[] nullChar = new byte[] { 0, 0 };

                byte[] bytes;

                foreach (PolicyEntry entry in this.Entries)
                {
                    fs.Write(openBracket, 0, 2);
                    bytes = UnicodeEncoding.Unicode.GetBytes(entry.KeyName);
                    fs.Write(bytes, 0, bytes.Length);
                    fs.Write(nullChar, 0, 2);

                    fs.Write(semicolon, 0, 2);
                    bytes = UnicodeEncoding.Unicode.GetBytes(entry.ValueName);
                    fs.Write(bytes, 0, bytes.Length);
                    fs.Write(nullChar, 0, 2);

                    fs.Write(semicolon, 0, 2);
                    bytes = BitConverter.GetBytes(4);
                    if (BitConverter.IsLittleEndian == false) { Array.Reverse(bytes); }
                    fs.Write(bytes, 0, 4);

                    fs.Write(semicolon, 0, 2);
                    byte[] data = entry.DataBytes.ToArray();
                    bytes = BitConverter.GetBytes((uint)data.Length);
                    if (BitConverter.IsLittleEndian == false) { Array.Reverse(bytes); }
                    fs.Write(bytes, 0, 4);

                    fs.Write(semicolon, 0, 2);
                    fs.Write(data, 0, data.Length);
                    fs.Write(closeBracket, 0, 2);
                }
                fs.Close();
            }
        }
    }
}
"@

########################################################################
#
# Helper Functions
#
Function CreateUnattendFile {
param (
    [parameter(Mandatory=$true)]
    [string]
    $Arch
)

    if ( Test-Path "WtgUnattend.xml" ) {
      del .\WtgUnattend.xml
    }
    $unattendFile = New-Item "WtgUnattend.xml" -type File
    $fileContent = @"
<?xml version="1.0" encoding="utf-8"?>
<unattend xmlns="urn:schemas-microsoft-com:unattend">
    <settings pass="oobeSystem">
        <component name="Microsoft-Windows-Shell-Setup" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="$Arch" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <OOBE>
                <HideEULAPage>true</HideEULAPage>
                <ProtectYourPC>1</ProtectYourPC>
                <NetworkLocation>Work</NetworkLocation>
            </OOBE>
        </component>
        <component name="Microsoft-Windows-International-Core" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="$Arch">
          <InputLocale>en-US</InputLocale>
          <SystemLocale>en-US</SystemLocale>
          <UILanguage>en-US</UILanguage>
          <UserLocale>en-US</UserLocale>
        </component>
        <component name="Microsoft-Windows-WinRE-RecoveryAgent" processorArchitecture="$Arch" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <UninstallWindowsRE>true</UninstallWindowsRE>
        </component>
    </settings>
</unattend>
"@

    Set-Content $unattendFile $fileContent

#return the file object
    $unattendFile
}

Function CreateRegistryPolicyFile {

    $saveFileLocaiton = "" + (get-location) + "\registry.pol"

    $policyFile = New-Object MS.PolicyFileEditor.PolicyFile
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "UseAdvancedStartup", 1)
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "EnableBDEWithNoTPM", 1)
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "UseTPM", 2)
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "UseTPMPIN", 2)
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "UseTPMKey", 2)
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "UseTPMKeyPIN", 2)
    $policyFile.SetDWORDValue("Software\Policies\Microsoft\FVE", "OSEnablePrebootInputProtectorsOnSlates", 1)
    $policyFile.SaveFile($saveFileLocaiton)

    $saveFileLocaiton
}

########################################################################

if ( Test-Path $installWIMPath ){
  write-output "Image: $installWIMPath"
}
else{
  write-output "Unable to find image: $installWIMPath" "Exiting the script"
  exit
}

if ( (Get-WindowsImage -ImagePath $InstallWIMPath -Index 1).Architecture -eq 0 ){
    $Arch = "x86"
}
else{
    $Arch = "amd64"
}

$starttime = get-date

#Add type information for modifing the Registy Policy file
Add-Type -TypeDefinition $Source -Language CSharp

#Create helper files
$unattendFile = CreateUnattendFile -Arch $Arch
$registryPolFilePath = CreateRegistryPolicyFile

$Disks = Get-Disk | Where-Object {$_.Path -match "USBSTOR" -and $_.Size -gt 20Gb -and -not $_.IsBoot }
if ($Disks -eq $null)
{
    Write-Output "No USB Disks found, exiting the script.  Please check that you have a device connected."
    exit
}

#We want to make sure that all non-boot connected USB drives are online, writeable and cleaned.
#This command will erase all data from all USB drives larger than 20Gb connected to your machine
#To automate this step you can add: -confirm:$False
Clear-Disk –InputObject $Disks -RemoveData -erroraction SilentlyContinue

# Currently the provisioning script needs drive letters (for dism and bcdboot.exe) and the script is more
# reliable when the main process determines all of the free drives and provides them to the sub-processes.
# Use a drive index starting at 1, since we need 2 free drives to proceed. (system & operating system)
$driveLetters =    68..90 | ForEach-Object { "$([char]$_):" } |
    Where-Object {
        (new-object System.IO.DriveInfo $_).DriveType -eq 'noRootdirectory'
    }
$driveIndex = 1

foreach ($disk in $Disks)
{

    if ( $driveIndex  -lt $driveLetters.count )
    {
        Start-Job -ScriptBlock {
            $installWIMPath = $args[0]
            $unattendFile = $args[1]
            $Disk = $args[2]
            $SystemDriveLetter = $args[3]
            $OSDriveLetter = $args[4]
            $DomainName = $args[5]
            $policyFilePath = $args[6]

#For compatibility between UEFI and legacy BIOS we use MBR for the disk.
            Initialize-Disk –InputObject $Disk -PartitionStyle MBR

#A short sleep between creating a new partition and formatting helps ensure the partition
#is ready before formatting.
            $SystemPartition = New-Partition –InputObject $Disk -Size (350MB) -IsActive
            Sleep 1
            Format-Volume -Partition $SystemPartition -FileSystem FAT32 -NewFileSystemLabel "UFD-System" -confirm:$False | Out-Null

            $OSPartition = New-Partition –InputObject $Disk -UseMaximumSize
            Sleep 1
            Format-Volume -NewFileSystemLabel "UFD-Windows" -FileSystem NTFS -Partition $OSPartition -confirm:$False | Out-Null


#The No default drive letter prevents other computers from displaying contents of the drive when connected as a Data drive.
            Set-Partition -InputObject $OSPartition -NoDefaultDriveLetter $TRUE
            Set-Partition -InputObject $SystemPartition -NewDriveLetter $SystemDriveLetter
            Set-Partition -InputObject $OSPartition -NewDriveLetter $OSDriveLetter

            dism /apply-image /index:1 /applydir:${OSDriveLetter}:\ /imagefile:$InstallWIMPath
            if (!$?){
                write-output "DISM image application failed, exiting."
                exit
            }

            copy $unattendFile ${OSDriveLetter}:\Windows\System32\sysprep\unattend.xml

#Create the directory for the Machine Registry Policy file, surpressing the output and any error
#and copy the pre-created Registry.pol file to that location.
            write-output "Set BitLocker default policies for WindowsToGo"
            md ${OSDriveLetter}:\windows\System32\GroupPolicy\Machine | out-null
            copy $policyFilePath ${OSDriveLetter}:\windows\System32\GroupPolicy\Machine

#modify the registry of the image to set SanPolicy.  This is also where you could set the default
#keyboard type for USB keyboards.
            write-output "Modify SAN Policy"
            reg load HKLM\PW-System ${OSDriveLetter}:\Windows\System32\config\SYSTEM > info.log
            reg add HKLM\PW-System\ControlSet001\Services\Partmgr\Parameters /v SanPolicy /d 4 /t REG_DWORD /f > info.log
            reg unload HKLM\PW-System > info.log

#We're running bcdboot from the newly applied image so we know that the correct boot files for the architecture and operating system are used.
#This will fail if we try to run an amd64 bcdboot.exe on x86.
            cmd /c "$OSDriveLetter`:\Windows\system32\bcdboot $OSDriveLetter`:\Windows /f ALL /s $SystemDriveLetter`:"
            if (!$?){
                write-output "BCDBOOT.exe failed, exiting script."
                exit
            }

            <#
               If a domain name was provided to the script, we will create a random computer name
               and perform an offline domain join for the device.  With this command we also suppress the
               Add User OOBE screen.
#>
            if ($DomainName)
            {
#using get-random, we will create a random computer name for the drive.
                $suffix = Get-Random
                $computername = "wtg-" + $suffix
                djoin /provision /domain $DomainName /savefile ${OSDriveLetter}:\tempBLOB.bin /reuse /machine $computername
                djoin /requestodj /loadfile ${OSDriveLetter}:\tempBLOB.bin /windowspath  ${OSDriveLetter}:\windows > info.log
                del ${OSDriveLetter}:\tempBLOB.bin

#add offline registry key to skip user account screen
                write-output "Add Offline Registry key for skipping UserAccount OOBE page."
                reg load HKLM\PW-Temp${OSDriveLetter}   ${OSDriveLetter}:\Windows\System32\config\SOFTWARE > info.log
                reg add HKLM\PW-Temp${OSDriveLetter}\Microsoft\Windows\CurrentVersion\Setup\OOBE /v UnattendCreatedUser /d 1 /t REG_DWORD > info.log
                reg unload HKLM\PW-Temp${OSDriveLetter} > info.log
            }

            try
            {
                Write-VolumeCache -DriveLetter ${OSDriveLetter}
                Write-Output "Disk is now ready to be removed."
            }
                catch [System.Management.Automation.CommandNotFoundException]
            {
                write-output "Flush Cache not supported, Be sure to safely remove the WTG device."
            }


       } -ArgumentList  @($installWIMPath, $unattendFile, $disk, $driveLetters[$driveIndex-1][0], $driveLetters[$driveIndex][0], $DomainName, $registryPolFilePath)
    }
    $driveIndex  = $driveIndex  + 2
}
#wait for all threads to finish
get-job | wait-job

#print output from all threads
get-job | receive-job

#delete the job objects
get-job | remove-job


#Cleanup helper files
del .\WtgUnattend.xml
del .\Registry.pol

$finishtime = get-date
$elapsedTime = new-timespan $starttime $finishtime
write-output "Provsioning completed in: $elapsedTime  (hh:mm:ss.000)"
write-output "" "Provisioning script complete."
```

## Considerations when using different USB keyboard layouts with Windows To Go


Before provisioning your Windows To Go drive you need to consider if your workspace will boot on a computer with a non-English USB keyboard attached. As described in [KB article 927824](https://go.microsoft.com/fwlink/p/?LinkId=619176) there is a known issue where the plug and play ID causes the keyboard to be incorrectly identified as an English 101 key keyboard. To avoid this problem, you can modify the provisioning script to set the override keyboard parameters.

In the PowerShell provisioning script, after the image has been applied, you can add the following commands that will correctly set the keyboard settings. The following example uses the Japanese keyboard layout:

``` syntax
            reg load HKLM\WTG-Keyboard ${OSDriveLetter}:\Windows\System32\config\SYSTEM > info.log
            reg add HKLM\WTG-Keyboard\ControlSet001\Services\i8042prt\Parameters /v LayerDriver /d JPN:kbd106dll /t REG_SZ /f
            reg add HKLM\WTG-Keyboard\ControlSet001\Services\i8042prt\Parameters /v OverrideKeyboardIdentifier /d PCAT_106KEY /t REG_SZ /f
            reg add HKLM\WTG-Keyboard\ControlSet001\Services\i8042prt\Parameters /v OverrideKeyboardSubtype /d 2 /t REG_DWORD /f
            reg add HKLM\WTG-Keyboard\ControlSet001\Services\i8042prt\Parameters /v OverrideKeyboardType /d 7 /t REG_DWORD /f
            reg unload HKLM\WTG-Keyboard
```

## Related topics


[Windows To Go: feature overview](planning/windows-to-go-overview.md)

[Windows 10 forums](https://go.microsoft.com/fwlink/p/?LinkId=618949)

[Prepare your organization for Windows To Go](planning//prepare-your-organization-for-windows-to-go.md)

[Deployment considerations for Windows To Go](planning//deployment-considerations-for-windows-to-go.md)

[Security and data protection considerations for Windows To Go](planning/security-and-data-protection-considerations-for-windows-to-go.md)

[BitLocker overview](https://go.microsoft.com/fwlink/p/?LinkId=619173)

 

 





