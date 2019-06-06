---
title: Windows To Go frequently asked questions (Windows 10)
description: Windows To Go frequently asked questions
ms.assetid: bfdfb824-4a19-4401-b369-22c5e6ca9d6e
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: FAQ, mobile, device, USB
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: mobility
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Windows To Go: frequently asked questions


**Applies to**

-   Windows 10

>[!IMPORTANT]
>Windows To Go is no longer being developed. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

The following list identifies some commonly asked questions about Windows To Go.

-   [What is Windows To Go?](#wtg-faq-whatis)

-   [Does Windows To Go rely on virtualization?](#wtg-faq-virt)

-   [Who should use Windows To Go?](#wtg-faq-who)

-   [How can Windows To Go be deployed in an organization?](#wtg-faq-deploy)

-   [Is Windows To Go supported on both USB 2.0 and USB 3.0 drives?](#wtg-faq-usbvs)

-   [Is Windows To Go supported on USB 2.0 and USB 3.0 ports?](#wtg-faq-usbports)

-   [How do I identify a USB 3.0 port?](#wtg-faq-usb3port)

-   [Does Windows To Go run faster on a USB 3.0 port?](#wtg-faq-usb3speed)

-   [Can the user self-provision Windows To Go?](#wtg-faq-selfpro)

-   [How can Windows To Go be managed in an organization?](#wtg-faq-mng)

-   [How do I make my computer boot from USB?](#wtf-faq-startup)

-   [Why isn’t my computer booting from USB?](#wtg-faq-noboot)

-   [What happens if I remove my Windows To Go drive while it is running?](#wtg-faq-surprise)

-   [Can I use BitLocker to protect my Windows To Go drive?](#wtg-faq-bitlocker)

-   [Why can’t I enable BitLocker from Windows To Go Creator?](#wtg-faq-blfail)

-   [What power states does Windows To Go support?](#wtg-faq-power)

-   [Why is hibernation disabled in Windows To Go?](#wtg-faq-hibernate)

-   [Does Windows To Go support crash dump analysis?](#wtg-faq-crashdump)

-   [Do “Windows To Go Startup Options” work with dual boot computers?](#wtg-faq-dualboot)

-   [I plugged my Windows To Go drive into a running computer and I can’t see the partitions on the drive. Why not?](#wtg-faq-diskpart)

-   [I’m booted into Windows To Go, but I can’t browse to the internal hard drive of the host computer. Why not?](#wtg-faq-san4)

-   [Why does my Windows To Go drive have an MBR disk format with a FAT32 system partition?](#wtg-faq-fatmbr)

-   [Is Windows To Go secure if I use it on an untrusted machine?](#wtg-faq-malhost)

-   [Does Windows To Go work with ARM processors?](#wtg-faq-arm)

-   [Can I synchronize data from Windows To Go with my other computer?](#wtg-faq-datasync)

-   [What size USB Flash Drive do I need to make a Windows To Go drive?](#wtg-faq-usbsz)

-   [Do I need to activate Windows To Go every time I roam?](#wtg-faq-roamact)

-   [Can I use all Windows features on Windows To Go?](#wtg-faq-features)

-   [Can I use all my applications on Windows To Go?](#wtg-faq-approam)

-   [Does Windows To Go work slower than standard Windows?](#wtg-faq-slow)

-   [If I lose my Windows To Go drive, will my data be safe?](#wtg-faq-safeloss)

-   [Can I boot Windows To Go on a Mac?](#wtg-faq-mac)

-   [Are there any APIs that allow applications to identify a Windows To Go workspace?](#wtg-faq-api)

-   [How is Windows To Go licensed?](#wtg-faq-lic)

-   [Does Windows Recovery Environment work with Windows To Go? What’s the guidance for recovering a Windows To Go drive?](#wtg-faq-recovery)

-   [Why won’t Windows To Go work on a computer running Windows XP or Windows Vista?](#wtg-faq-oldos)

-   [Why does the operating system on the host computer matter?](#wtg-faq-oldos2)

-   [My host computer running Windows 7 is protected by BitLocker Drive Encryption. Why did I need to use the recovery key to unlock and reboot my host computer after using Windows To Go?](#wtg-faq-blreckey)

-   [I decided to stop using a drive for Windows To Go and reformatted it – why doesn’t it have a drive letter assigned and how can I fix it?](#wtg-faq-reformat)

-   [Why do I keep on getting the message “Installing devices…” when I boot Windows To Go?](#bkmk-roamconflict)

-   [How do I upgrade the operating system on my Windows To Go drive?](#bkmk-upgradewtg)

## <a href="" id="wtg-faq-whatis"></a>What is Windows To Go?


Windows To Go is a feature for users of Windows 10 Enterprise and Windows 10 Education that enables users to boot a full version of Windows from external USB drives on host PCs.

## <a href="" id="wtg-faq-virt"></a>Does Windows To Go rely on virtualization?


No. Windows To Go is a native instance of Windows 10 that runs from a USB device. It is just like a laptop hard drive with Windows 8 that has been put into a USB enclosure.

## <a href="" id="wtg-faq-who"></a>Who should use Windows To Go?


Windows To Go was designed for enterprise usage and targets scenarios such as continuance of operations, contractors, managed free seating, traveling workers, and work from home.

## <a href="" id="wtg-faq-deploy"></a>How can Windows To Go be deployed in an organization?


Windows To Go can be deployed using standard Windows deployment tools like Diskpart and DISM. The prerequisites for deploying Windows To Go are:

-   A Windows To Go recommended USB drive to provision; See the list of currently available USB drives at [Hardware considerations for Windows To Go](windows-to-go-overview.md#wtg-hardware)

-   A Windows 10 Enterprise or Windows 10 Education image

-   A Windows 10 Enterprise, Windows 10 Education or Windows 10 Professional host PC that can be used to provision new USB keys

You can use a Windows PowerShell script to target several drives and scale your deployment for a large number of Windows To Go drives. You can also use a USB duplicator to duplicate a Windows To Go drive after it has been provisioned if you are creating a large number of drives. See the [Windows To Go Step by Step](https://go.microsoft.com/fwlink/p/?LinkId=618950) article on the TechNet wiki for a walkthrough of the drive creation process.

## <a href="" id="wtg-faq-usbvs"></a>Is Windows To Go supported on both USB 2.0 and USB 3.0 drives?


No. Windows To Go is supported on USB 3.0 drives that are certified for Windows To Go.

## <a href="" id="wtg-faq-usbports"></a>Is Windows To Go supported on USB 2.0 and USB 3.0 ports?


Yes. Windows To Go is fully supported on either USB 2.0 ports or USB 3.0 ports on PCs certified for Windows 7 or later.

## <a href="" id="wtg-faq-usb3port"></a>How do I identify a USB 3.0 port?


USB 3.0 ports are usually marked blue or carry a SS marking on the side.

## <a href="" id="wtg-faq-usb3speed"></a>Does Windows To Go run faster on a USB 3.0 port?


Yes. Because USB 3.0 offers significantly faster speeds than USB 2.0, a Windows To Go drive running on a USB 3.0 port will operate considerably faster. This speed increase applies to both drive provisioning and when the drive is being used as a workspace.

## <a href="" id="wtg-faq-selfpro"></a>Can the user self-provision Windows To Go?


Yes, if the user has administrator permissions they can self-provision a Windows To Go drive using the Windows To Go Creator wizard which is included in Windows 10 Enterprise, Windows 10 Education and Windows 10 Professional. Additionally, System Center 2012 Configuration Manager SP1 and later releases includes support for user self-provisioning of Windows To Go drives. Configuration Manager can be downloaded for evaluation from the [Microsoft TechNet Evaluation Center](https://go.microsoft.com/fwlink/p/?LinkID=618746).

## <a href="" id="wtg-faq-mng"></a>How can Windows To Go be managed in an organization?


Windows To Go can be deployed and managed like a traditional desktop PC using standard Windows enterprise software distribution tools like System Center Configuration Manager. Computer and user settings for Windows To Go workspaces can be managed using Group Policy setting also in the same manner that you manage Group Policy settings for other PCs in your organization. Windows To Go workspaces can be configured to connect to the organizational resources remotely using DirectAccess or a virtual private network connection so that they can connect securely to your network.

## <a href="" id="wtf-faq-startup"></a>How do I make my computer boot from USB?


For host computers running Windows 10

-   Using Cortana, search for **Windows To Go startup options**, and then press Enter.
-   In the **Windows To Go Startup Options** dialog box, select **Yes**, and then click **Save Changes** to configure the computer to boot from USB.

For host computers running Windows 8 or Windows 8.1:

Press **Windows logo key+W** and then search for **Windows To Go startup options** and then press Enter.

In the **Windows To Go Startup Options** dialog box select **Yes** and then click **Save Changes** to configure the computer to boot from USB.

**Note**  
Your IT department can use Group Policy to configure Windows To Go Startup Options in your organization.

 

If the host computer is running an earlier version of the Windows operating system need to configure the computer to boot from USB manually.

To do this, early during boot time (usually when you see the manufacturer’s logo), enter your firmware/BIOS setup. (This method to enter firmware/BIOS setup differs with different computer manufacturers, but is usually entered by pressing one of the function keys, such as F12, F2, F1, Esc, and so forth. You should check the manufacturer’s site to be sure if you do not know which key to use to enter firmware setup.)

After you have entered firmware setup, make sure that boot from USB is enabled. Then change the boot order to boot from USB drives first.

Alternatively, if your computer supports it, you can try to use the one-time boot menu (often F12), to select USB boot on a per-boot basis.

For more detailed instructions, see the wiki article, [Tips for configuring your BIOS settings to work with Windows To Go](https://go.microsoft.com/fwlink/p/?LinkID=618951).

**Warning**  
Configuring a computer to boot from USB will cause your computer to attempt to boot from any bootable USB device connected to your computer. This potentially includes malicious devices. Users should be informed of this risk and instructed to not have any bootable USB storage devices plugged in to their computers except for their Windows To Go drive.

 

## <a href="" id="wtg-faq-noboot"></a>Why isn’t my computer booting from USB?


Computers certified for Windows 7 and later are required to have support for USB boot. Check to see if any of the following items apply to your situation:

1.  Ensure that your computer has the latest BIOS installed and the BIOS is configured to boot from a USB device.

2.  Ensure that the Windows To Go drive is connected directly to a USB port on the computer. Many computers don’t support booting from a device connected to a USB 3 PCI add-on card or external USB hubs.

3.  If the computer is not booting from a USB 3.0 port, try to boot from a USB 2.0 port.

If none of these items enable the computer to boot from USB, contact the hardware manufacturer for additional support.

## <a href="" id="wtg-faq-surprise"></a>What happens if I remove my Windows To Go drive while it is running?


If the Windows To Go drive is removed, the computer will freeze and the user will have 60 seconds to reinsert the Windows To Go drive. If the Windows To Go drive is reinserted into the same port it was removed from, Windows will resume at the point where the drive was removed. If the USB drive is not reinserted, or is reinserted into a different port, the host computer will turn off after 60 seconds.

**Warning**  
You should never remove your Windows To Go drive when your workspace is running. The computer freeze is a safety measure to help mitigate the risk of accidental removal. Removing the Windows To Go drive without shutting down the Windows To Go workspace could result in corruption of the Windows To Go drive.

 

## <a href="" id="wtg-faq-bitlocker"></a>Can I use BitLocker to protect my Windows To Go drive?


Yes. In Windows 8 and later, BitLocker has added support for using a password to protect operating system drives. This means that you can use a password to secure your Windows To Go workspace and you will be prompted to enter this password every time you use the Windows To Go workspace.

## <a href="" id="wtg-faq-blfail"></a>Why can’t I enable BitLocker from Windows To Go Creator?


Several different Group Policies control the use of BitLocker on your organizations computers. These policies are located in the **Computer Configuration\\Policies\\Administrative Templates\\Windows Components\\BitLocker Drive Encryption** folder of the local Group Policy editor. The folder contains three sub-folders for fixed, operating system and removable data drive types.

When you are using Windows To Go Creator, the Windows To Go drive is considered a removable data drive by BitLocker. Review the following setting to see if these settings apply in your situation:

1.  **Control use of BitLocker on removable drives**

    If this setting is disabled BitLocker cannot be used with removable drives, so the Windows To Go Creator wizard will fail if it attempts to enable BitLocker on the Windows To Go drive.

2.  **Configure use of smart cards on removable data drives**

    If this setting is enabled and the option **Require use of smart cards on removable data drives** is also selected the creator wizard might fail if you have not already signed on using your smart card credentials before starting the Windows To Go Creator wizard.

3.  **Configure use of passwords for removable data drives**

    If this setting is enabled and the **Require password complexity option** is selected the computer must be able to connect to the domain controller to verify that the password specified meets the password complexity requirements. If the connection is not available, the Windows To Go Creator wizard will fail to enable BitLocker.

Additionally, the Windows To Go Creator will disable the BitLocker option if the drive does not have any volumes. In this situation, you should initialize the drive and create a volume using the Disk Management console before provisioning the drive with Windows To Go.

## <a href="" id="wtg-faq-power"></a>What power states does Windows To Go support?


Windows To Go supports all power states except the hibernate class of power states, which include hybrid boot, hybrid sleep, and hibernate. This default behavior can be modified by using Group Policy settings to enable hibernation of the Windows To Go workspace.

## <a href="" id="wtg-faq-hibernate"></a>Why is hibernation disabled in Windows To Go?


When a Windows To Go workspace is hibernated, it will only successfully resume on the exact same hardware. Therefore, if a Windows To Go workspace is hibernated on one computer and roamed to another, the hibernation state (and therefore user state) will be lost. To prevent this from happening, the default settings for a Windows To Go workspace disable hibernation. If you are confident that you will only attempt to resume on the same computer, you can enable hibernation using the Windows To Go Group Policy setting, **Allow hibernate (S4) when started from a Windows To Go workspace** that is located at **\\\\Computer Configuration\\Administrative Templates\\Windows Components\\Portable Operating System\\** in the Local Group Policy Editor (gpedit.msc).

## <a href="" id="wtg-faq-crashdump"></a>Does Windows To Go support crash dump analysis?


Yes. Windows 8 and later support crash dump stack analysis for both USB 2.0 and 3.0.

## <a href="" id="wtg-faq-dualboot"></a>Do “Windows To Go Startup Options” work with dual boot computers?


Yes, if both operating systems are running the Windows 8 operating system. Enabling “Windows To Go Startup Options” should cause the computer to boot from the Windows To Go workspace when the drive is plugged in before the computer is turned on.

If you have configured a dual boot computer with a Windows operating system and another operating system it might work occasionally and fail occasionally. Using this configuration is unsupported.

## <a href="" id="wtg-faq-diskpart"></a>I plugged my Windows To Go drive into a running computer and I can’t see the partitions on the drive. Why not?


Windows To Go Creator and the recommended deployment steps for Windows To Go set the NO\_DEFAULT\_DRIVE\_LETTER flag on the Windows To Go drive. This flag prevents Windows from automatically assigning drive letters to the partitions on the Windows To Go drive. That’s why you can’t see the partitions on the drive when you plug your Windows To Go drive into a running computer. This helps prevent accidental data leakage between the Windows To Go drive and the host computer. If you really need to access the files on the Windows To Go drive from a running computer, you can use diskmgmt.msc or diskpart to assign a drive letter.

**Warning**  
It is strongly recommended that you do not plug your Windows To Go drive into a running computer. If the computer is compromised, your Windows To Go workspace can also be compromised.

 

## <a href="" id="wtg-faq-san4"></a>I’m booted into Windows To Go, but I can’t browse to the internal hard drive of the host computer. Why not?


Windows To Go Creator and the recommended deployment steps for Windows To Go set SAN Policy 4 on Windows To Go drive. This policy prevents Windows from automatically mounting internal disk drives. That’s why you can’t see the internal hard drives of the host computer when you are booted into Windows To Go. This is done to prevent accidental data leakage between Windows To Go and the host system. This policy also prevents potential corruption on the host drives or data loss if the host operating system is in a hibernation state. If you really need to access the files on the internal hard drive, you can use diskmgmt.msc to mount the internal drive.

**Warning**  
It is strongly recommended that you do not mount internal hard drives when booted into the Windows To Go workspace. If the internal drive contains a hibernated Windows 8 or later operating system, mounting the drive will lead to loss of hibernation state and therefor user state or any unsaved user data when the host operating system is booted. If the internal drive contains a hibernated Windows 7 or earlier operating system, mounting the drive will lead to corruption when the host operating system is booted.

 

## <a href="" id="wtg-faq-fatmbr"></a>Why does my Windows To Go drive have an MBR disk format with a FAT32 system partition?


This is done to allow Windows To Go to boot from UEFI and legacy systems.

## <a href="" id="wtg-faq-malhost"></a>Is Windows To Go secure if I use it on an untrusted computer?


While you are more secure than if you use a completely untrusted operating system, you are still vulnerable to attacks from the firmware or anything that runs before Windows To Go starts. If you plug your Windows To Go drive into a running untrusted computer, your Windows To Go drive can be compromised because any malicious software that might be active on the computer can access the drive.

## <a href="" id="wtg-faq-arm"></a>Does Windows To Go work with ARM processors?


No. Windows RT is a specialized version of Windows designed for ARM processors. Windows To Go is currently only supported on PCs with x86 or x64-based processors.

## <a href="" id="wtg-faq-datasync"></a>Can I synchronize data from Windows To Go with my other computer?


To get your data across all your computers, we recommend using folder redirection and client side caching to store copies of your data on a server while giving you offline access to the files you need.

## <a href="" id="wtg-faq-usbsz"></a>What size USB flash drive do I need to make a Windows To Go drive?


The size constraints are the same as full Windows. To ensure that you have enough space for Windows, your data, and your applications, we recommend USB drives that are a minimum of 20 GB in size.

## <a href="" id="wtg-faq-roamact"></a>Do I need to activate Windows To Go every time I roam?


No, Windows To Go requires volume activation; either using the [Key Management Service](https://go.microsoft.com/fwlink/p/?LinkId=619051) (KMS) server in your organization or using [Active Directory](https://go.microsoft.com/fwlink/p/?LinkId=619053) based volume activation. The Windows To Go workspace will not need to be reactivated every time you roam. KMS activates Windows on a local network, eliminating the need for individual computers to connect to Microsoft. To remain activated, KMS client computers must renew their activation by connecting to the KMS host on periodic basis. This typically occurs as soon as the user has access to the corporate network (either through a direct connection on-premises or a through remote connection using DirectAccess or a virtual private network connection), once activated the machine will not need to be activated again until the activation validity interval has passed. In a KMS configuration the activation validity interval is 180 days.

## <a href="" id="wtg-faq-features"></a>Can I use all Windows features on Windows To Go?


Yes, with some minor exceptions, you can use all Windows features with your Windows To Go workspace. The only currently unsupported features are using the Windows Recovery Environment and PC Reset & Refresh.

## <a href="" id="wtg-faq-approam"></a>Can I use all my applications on Windows To Go?


Yes. Because your Windows To Go workspace is a full Windows 10 environment, all applications that work with Windows 10 should work in your Windows To Go workspace. However, any applications that use hardware binding (usually for licensing and/or digital rights management reasons) may not run when you roam your Windows To Go drive between different host computers, and you may have to use those applications on the same host computer every time.

## <a href="" id="wtg-faq-slow"></a>Does Windows To Go work slower than standard Windows?


If you are using a USB 3.0 port and a Windows To Go certified device, there should be no perceivable difference between standard Windows and Windows To Go. However, if you are booting from a USB 2.0 port, you may notice some slowdown since USB 2.0 transfer speeds are slower than SATA speeds.

## <a href="" id="wtg-faq-safeloss"></a>If I lose my Windows To Go drive, will my data be safe?


Yes! If you enable BitLocker on your Windows To Go drive, all your data will be encrypted and protected and a malicious user will not be able to access your data without your password. If you don’t enable BitLocker, your data will be vulnerable if you lose your Windows To Go drive.

## <a href="" id="wtg-faq-mac"></a>Can I boot Windows To Go on a Mac?


We are committed to give customers a consistent and quality Windows 10 experience with Windows To Go. Windows To Go supports host devices certified for use with Windows 7 or later. Because Mac computers are not certified for use with Windows 7 or later, using Windows To Go is not supported on a Mac.

## <a href="" id="wtg-faq-api"></a>Are there any APIs that allow applications to identify a Windows To Go workspace?


Yes. You can use a combination of identifiers to determine if the currently running operating system is a Windows To Go workspace. First, check if the **PortableOperatingSystem** property is true. When that value is true it means that the operating system was booted from an external USB device.

Next, check if the **OperatingSystemSKU** property is equal to **4** (for Windows 10 Enterprise) or **121** (for Windows 10 Education). The combination of those two properties represents a Windows To Go workspace environment.

For more information, see the MSDN article on the [Win32\_OperatingSystem class](https://go.microsoft.com/fwlink/p/?LinkId=619059).

## <a href="" id="wtg-faq-lic"></a>How is Windows To Go licensed?


Windows To Go allows organization to support the use of privately owned PCs at the home or office with more secure access to their organizational resources. With Windows To Go use rights under [Software Assurance](https://go.microsoft.com/fwlink/p/?LinkId=619062), an employee will be able to use Windows To Go on any company PC licensed with Software Assurance as well as from their home PC.

## <a href="" id="wtg-faq-recovery"></a>Does Windows Recovery Environment work with Windows To Go? What’s the guidance for recovering a Windows To Go drive?


No, use of Windows Recovery Environment is not supported on Windows To Go. It is recommended that you implement user state virtualization technologies like Folder Redirection to centralize and back up user data in the data center. If any corruption occurs on a Windows To Go drive, you should re-provision the workspace.

## <a href="" id="wtg-faq-oldos"></a>Why won’t Windows To Go work on a computer running Windows XP or Windows Vista?


Actually it might. If you have purchased a computer certified for Windows 7 or later and then installed an older operating system, Windows To Go will boot and run as expected as long as you have configured the firmware to boot from USB. However, if the computer was certified for Windows XP or Windows Vista, it might not meet the hardware requirements for Windows To Go to run. Typically computers certified for Windows Vista and earlier operating systems have less memory, less processing power, reduced video rendering, and slower USB ports.

## <a href="" id="wtg-faq-oldos2"></a>Why does the operating system on the host computer matter?


It doesn’t other than to help visually identify if the PC has compatible hardware. For a PC to be certified for Windows 7 or later it had to support booting from USB. If a computer cannot boot from USB there is no way that it can be used with Windows To Go. The Windows To Go workspace is a full Windows 10 environment, so all of the hardware requirements of Windows 10 with respect to processing speed, memory usage, and graphics rendering need to be supported to be assured that it will work as expected.

## <a href="" id="wtg-faq-blreckey"></a>My host computer running Windows 7 is protected by BitLocker Drive Encryption. Why did I need to use the recovery key to unlock and reboot my host computer after using Windows To Go?


The default BitLocker protection profile in Windows 7 monitors the host computer for changes to the boot order as part of protecting the computer from tampering. When you change the boot order of the host computer to enable it to boot from the Windows To Go drive, the BitLocker system measurements will reflect that change and boot into recovery mode so that the computer can be inspected if necessary.

You can reset the BitLocker system measurements to incorporate the new boot order using the following steps:

1.  Log on to the host computer using an account with administrator privileges.

2.  Click **Start**, click **Control Panel**, click **System and Security**, and then click **BitLocker Drive Encryption**.

3.  Click **Suspend Protection** for the operating system drive.

    A message is displayed, informing you that your data will not be protected while BitLocker is suspended and asking if you want to suspend BitLocker Drive Encryption. Click **Yes** to continue and suspend BitLocker on the drive.

4.  Restart the computer and enter the firmware settings to reset the boot order to boot from USB first. For more information on changing the boot order in the BIOS, see [Tips for configuring your BIOS settings to work with Windows To Go](https://go.microsoft.com/fwlink/p/?LinkId=618951) on the TechNet wiki.

5.  Restart the computer again and then log on to the host computer using an account with administrator privileges. (Neither your Windows To Go drive nor any other USB drive should be inserted.)

6.  Click **Start**, click **Control Panel**, click **System and Security**, and then click **BitLocker Drive Encryption**.

7.  Click **Resume Protection** to re-enable BitLocker protection.

The host computer will now be able to be booted from a USB drive without triggering recovery mode.

**Note**  
The default BitLocker protection profile in Windows 8 or later does not monitor the boot order.

 

## <a href="" id="wtg-faq-reformat"></a>I decided to stop using a drive for Windows To Go and reformatted it – why doesn’t it have a drive letter assigned and how can I fix it?


Reformatting the drive erases the data on the drive, but doesn’t reconfigure the volume attributes. When a drive is provisioned for use as a Windows To Go drive the NODEFAULTDRIVELETTER attribute is set on the volume. To remove this attribute, use the following steps:

1.  Open a command prompt with full administrator permissions.

    **Note**  
    If your user account is a member of the Administrators group, but is not the Administrator account itself, then, by default, the programs that you run only have standard user permissions unless you explicitly choose to elevate them.

     

2.  Start the [diskpart](https://go.microsoft.com/fwlink/p/?LinkId=619070) command interpreter, by typing `diskpart` at the command prompt.

3.  Use the `select disk` command to identify the drive. If you do not know the drive number, use the `list` command to display the list of disks available.

4.  After selecting the disk, run the `clean` command to remove all data, formatting, and initialization information from the drive.

## <a href="" id="bkmk-roamconflict"></a>Why do I keep on getting the message “Installing devices…” when I boot Windows To Go?


One of the challenges involved in moving the Windows To Go drive between PCs while seamlessly booting Windows with access to all of their applications and data is that for Windows to be fully functional, specific drivers need to be installed for the hardware in each machine that runs Windows. Windows 8 or later has a process called respecialize which will identify new drivers that need to be loaded for the new PC and disable drivers which are not present on the new configuration. In general this feature is reliable and efficient when roaming between PCs of widely varying hardware configurations.

In certain cases, third party drivers for different hardware models or versions can reuse device ID’s, driver file names, registry keys (or any other operating system constructs which do not support side-by-side storage) for similar hardware. For example, Touchpad drivers on different laptops often reuse the same device ID’s, and video cards from the same manufacturer may often reuse service names. Windows handles these situations by marking the non-present device node with a flag that indicates the existing driver needs to be reinstalled before continuing to install the new driver.

This process will occur on any boot that a new driver is found and a driver conflict is detected. In some cases that will result in a respecialize progress message “Installing devices…” displaying every time that a Windows to Go drive is roamed between two PCs which require conflicting drivers.

## <a href="" id="bkmk-upgradewtg"></a>How do I upgrade the operating system on my Windows To Go drive?


There is no support in Windows for upgrading a Windows To Go drive. Deployed Windows To Go drives with older versions of Windows will need to be re-imaged with a new version of Windows in order to transition to the new operating system version.

## Additional resources


-   [Windows 10 forums](https://go.microsoft.com/fwlink/p/?LinkId=618949)

-   [Windows To Go Step by Step Wiki](https://go.microsoft.com/fwlink/p/?LinkId=618950)

-   [Windows To Go: feature overview](windows-to-go-overview.md)

-   [Prepare your organization for Windows To Go](prepare-your-organization-for-windows-to-go.md)

-   [Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

-   [Security and data protection considerations for Windows To Go](security-and-data-protection-considerations-for-windows-to-go.md)

 

 





