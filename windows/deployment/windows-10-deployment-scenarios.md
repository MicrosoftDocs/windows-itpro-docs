---
title: Windows 10 deployment scenarios (Windows 10)
description: To successfully deploy the Windows 10 operating system in your organization, it is important to understand the different ways that it can be deployed, especially now that there are new scenarios to consider.
ms.assetid: 7A29D546-52CC-482C-8870-8123C7DC04B5
ms.reviewer: 
manager: dansimp
ms.author: dansimp
keywords: upgrade, in-place, configuration, deploy
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.date: 11/06/2018
author: dansimp
ms.topic: article
---

# Windows 10 deployment scenarios

**Applies to**
-   Windows 10

To successfully deploy the Windows 10 operating system in your organization, it is important to understand the different ways that it can be deployed, especially now that there are new scenarios to consider. Choosing among these scenarios, and understanding the capabilities and limitations of each, is a key task.

The following table summarizes various Windows 10 deployment scenarios. The scenarios are each assigned to one of three categories. 
- Modern deployment methods are recommended unless you have a specific need to use a different procedure. These methods are supported with existing tools such as Microsoft Deployment Toolkit (MDT) and System Center Configuration Manager. These methods are discussed in detail on the [Modern Desktop Deployment Center](https://docs.microsoft.com/microsoft-365/enterprise/desktop-deployment-center-home).
- Dynamic deployment methods enable you to configure applications and settings for specific use cases. 
- Traditional deployment methods use existing tools to deploy operating system images.<br>&nbsp;

<table border="0">
  <tr><td align="center" style="width:16%; border:1;" bgcolor='#a0e4fa'><b>Category</b></td>
     <td align="center" style="width:16%; border:1;" bgcolor='#a0e4fa'><b>Scenario</b></td>
     <td align="center" style="width:16%; border:1;" bgcolor='#a0e4fa'><b>Description</b></td>
     <td align="center" style="width:16%; border:1;" bgcolor='#a0e4fa'><b>More information</b></td></tr>
  <tr><td align='center' valign='middle' style='width:16%; border:1;' rowspan="2">Modern</td>
    <td align="center">

[Windows Autopilot](#windows-autopilot)</td>
    <td align="center" style="width:16%; border:1;"> 
      Customize the out-of-box-experience (OOBE) for your organization, and deploy a new system with apps and settings already configured.
    </td>
    <td align="center" style="width:16%; border:1;"> 
<a href="https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot">Overview of Windows Autopilot</a>
    </td>
  </tr>
  <tr>
    <td align="center" style="width:16%; border:1;"> 

[In-place upgrade](#in-place-upgrade)

 </td>
    <td align="center" style="width:16%; border:1;"> 
      Use Windows Setup to update your OS and migrate apps and settings. Rollback data is saved in Windows.old.
    </td>
    <td align="center" style="width:16%; border:1;"> 
<a href="https://docs.microsoft.com/windows/deployment/upgrade/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit">Perform an in-place upgrade to Windows 10 with MDT</a><br><a href="https://docs.microsoft.com/windows/deployment/upgrade/upgrade-to-windows-10-with-system-center-configuraton-manager">Perform an in-place upgrade to Windows 10 using Configuration Manager</a>
    </td>
  </tr>
  <tr>
    <td align="center" style="width:16%; border:1;" rowspan="3"> 
      Dynamic
    </td>
    <td align="center" style="width:16%; border:1;"> 

[Subscription Activation](#windows-10-subscription-activation)
    </td>
    <td align="center" style="width:16%; border:1;"> 
      Switch from Windows 10 Pro to Enterprise when a subscribed user signs in. 
    </td>
    <td align="center" style="width:16%; border:1;"> 
<a href="https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation">Windows 10 Subscription Activation</a>
    </td>
  </tr>
  <tr>
    <td align="center" style="width:16%; border:1;"> 

 [AAD / MDM](#dynamic-provisioning)
    </td>
    <td align="center" style="width:16%; border:1;"> 
      The device is automatically joined to AAD and configured by MDM.
    </td>
    <td align="center" style="width:16%; border:1;"> 
<a href="https://docs.microsoft.com/windows/client-management/mdm/azure-active-directory-integration-with-mdm">Azure Active Directory integration with MDM</a>
    </td>
   </tr>
  <tr>
    <td align="center" style="width:16%; border:1;"> 

   [Provisioning packages](#dynamic-provisioning)
    </td>
    <td align="center" style="width:16%; border:1;"> 
      Using the Windows Imaging and Configuration Designer tool, create provisioning packages that can be applied to devices.
    </td>
    <td align="center" style="width:16%; border:1;"> 
<a href="https://docs.microsoft.com/windows/configuration/configure-devices-without-mdm">Configure devices without MDM</a>
    </td>
  </tr>
  <tr>
    <td align="center" style="width:16%; border:1;" rowspan="3"> 
      Traditional
    </td>
    <td align="center" style="width:16%; border:1;">

   [Bare metal](#new-computer)
    </td>
    <td align="center" style="width:16%; border:1;"> 
      Deploy a new device, or wipe an existing device and deploy with a fresh image. 
    </td>
    <td align="center" style="width:16%; border:1;"> 
 <a href="https://docs.microsoft.com/windows/deployment/deploy-windows-mdt/deploy-a-windows-10-image-using-mdt">Deploy a Windows 10 image using MDT</a><br><a href="https://docs.microsoft.com/sccm/osd/deploy-use/install-new-windows-version-new-computer-bare-metal">Install a new version of Windows on a new computer with System Center Configuration Manager</a>
    </td>
  </tr>
  <tr>
    <td align="center" style="width:16%; border:1;"> 

   [Refresh](#computer-refresh)
    </td>
    <td align="center" style="width:16%; border:1;"> 
      Also called wipe and load. Redeploy a device by saving the user state, wiping the disk, then restoring the user state. 
    </td>
    <td align="center" style="width:16%; border:1;"> 
 <a href="https://docs.microsoft.com/windows/deployment/deploy-windows-mdt/refresh-a-windows-7-computer-with-windows-10">Refresh a Windows 7 computer with Windows 10</a><br><a href="https://docs.microsoft.com/windows/deployment/deploy-windows-sccm/refresh-a-windows-7-client-with-windows-10-using-configuration-manager">Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager</a>
    </td>
  </tr>
  <tr>
    <td align="center" style="width:16%; border:1;"> 

  [Replace](#computer-replace)
    </td>
    <td align="center" style="width:16%; border:1;"> 
      Replace an existing device with a new one by saving the user state on the old device and then restoring it to the new device.
    </td>
    <td align="center" style="width:16%; border:1;"> 
 <a href="https://docs.microsoft.com/windows/deployment/deploy-windows-mdt/replace-a-windows-7-computer-with-a-windows-10-computer">Replace a Windows 7 computer with a Windows 10 computer</a><br><a href="https://docs.microsoft.com/windows/deployment/deploy-windows-sccm/replace-a-windows-7-client-with-windows-10-using-configuration-manager">Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager</a>
    </td>
  </tr>
</table>

<br>&nbsp;


>[!IMPORTANT]
>The Windows Autopilot and Subscription Activation scenarios require that the beginning OS be Windows 10 version 1703, or later.<br>
>Except for clean install scenarios such as traditional bare metal and Windows Autopilot, all the methods described can optionally migrate apps and settings to the new OS. 

## Modern deployment methods

Modern deployment methods embrace both traditional on-prem and cloud services to deliver a simple, streamlined, cost effective deployment experience.

### Windows Autopilot

Windows Autopilot is a new suite of capabilities designed to simplify and modernize the deployment and management of new Windows 10 PCs. Windows Autopilot enables IT professionals to customize the Out of Box Experience (OOBE) for Windows 10 PCs and provide end users with a fully configured new Windows 10 device after just a few clicks. There are no images to deploy, no drivers to inject, and no infrastructure to manage. Users can go through the deployment process independently, without the need consult their IT administrator.

For more information about Windows Autopilot, see [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-10-auto-pilot) and [Modernizing Windows deployment with Windows Autopilot](https://blogs.technet.microsoft.com/windowsitpro/2017/06/29/modernizing-windows-deployment-with-windows-autopilot/).

### In-place upgrade

For existing computers running Windows 7, Windows 8, or Windows 8.1, the recommended path for organizations deploying Windows 10 leverages the Windows installation program (Setup.exe) to perform an in-place upgrade, which automatically preserves all data, settings, applications, and drivers from the existing operating system version. This requires the least IT effort, because there is no need for any complex deployment infrastructure.

Although consumer PCs will be upgraded using Windows Update, organizations want more control over the process. This is accomplished by leveraging tools like System Center Configuration Manager or the Microsoft Deployment Toolkit to completely automate the upgrade process through simple task sequences.

The in-place upgrade process is designed to be extremely reliable, with the ability to automatically roll back to the previous operating system if any issues are encountered during the deployment process, without any IT staff involvement. Rolling back manually can also be done by leveraging the automatically-created recovery information (stored in the Windows.old folder), in case any issues are encountered after the upgrade is finished. The upgrade process is also typically faster than traditional deployments, because applications do not need to be reinstalled as part of the process.

Because existing applications are preserved through the process, the upgrade process uses the standard Windows installation media image (Install.wim); custom images are not needed and cannot be used because the upgrade process is unable to deal with conflicts between apps in the old and new operating system. (For example, Contoso Timecard 1.0 in Windows 7 and Contoso Timecard 3.0 in the Windows 10 image.)

Scenarios that support in-place upgrade with some additional procedures include changing from BIOS to UEFI boot mode and upgrade of devices that use non-Microsoft disk encryption software.

- **Legacy BIOS to UEFI booting**: To perform an in-place upgrade on a UEFI-capable system that currently boots using legacy BIOS, first perform the in-place upgrade to Windows 10, maintaining the legacy BIOS boot mode. Windows 10 does not require UEFI, so it will work fine to upgrade a system using legacy BIOS emulation. After the upgrade, if you wish to enable Windows 10 features that require UEFI (such as Secure Boot), you can convert the system disk to a format that supports UEFI boot using the [MBR2GPT](https://docs.microsoft.com/windows/deployment/mbr-to-gpt) tool. Note: [UEFI specification](http://www.uefi.org/specifications) requires GPT disk layout. After the disk has been converted, you must also configure the firmware to boot in UEFI mode.

-   **Non-Microsoft disk encryption software**: While devices encrypted with BitLocker can easily be upgraded, more work is necessary for non-Microsoft disk encryption tools. Some ISVs will provide instructions on how to integrate their software into the in-place upgrade process. Check with your ISV to see if they have instructions. The following articles provide details on how to provision encryption drivers for use during Windows Setup via the ReflectDrivers setting:
    - [Windows Setup Automation Overview](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-automation-overview)
    - [Windows Setup Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options)

There are some situations where you cannot use in-place upgrade; in these situations, you can use traditional deployment (wipe-and-load) instead. Examples of these situations include:

-   Changing from Windows 7, Windows 8, or Windows 8.1 x86 to Windows 10 x64. The upgrade process cannot change from a 32-bit operating system to a 64-bit operating system, because of possible complications with installed applications and drivers.
-   Windows To Go and Boot from VHD installations. The upgrade process is unable to upgrade these installations. Instead, new installations would need to be performed.
-   Updating existing images. While it might be tempting to try to upgrade existing Windows 7, Windows 8, or Windows 8.1 images to Windows 10 by installing the old image, upgrading it, and then recapturing the new Windows 10 image, this is not supported – preparing an upgraded OS for imaging (using Sysprep.exe) is not supported and will not work when it detects the upgraded OS.
-   Dual-boot and multi-boot systems. The upgrade process is designed for devices running a single OS; if using dual-boot or multi-boot systems with multiple operating systems (not leveraging virtual machines for the second and subsequent operating systems), additional care should be taken.


## Dynamic provisioning

For new PCs, organizations have historically replaced the version of Windows included on the device with their own custom Windows image, because this was often faster and easier than leveraging the preinstalled version. But this is an added expense due to the time and effort required. With the new dynamic provisioning capabilities and tools provided with Windows 10, it is now possible to avoid this.

The goal of dynamic provisioning is to take a new PC out of the box, turn it on, and transform it into a productive organization device, with minimal time and effort. The types of transformations that are available include:

### Windows 10 Subscription Activation<A ID="windows-10-subscription-activation"></A>

Windows 10 Subscription Activation is a modern deployment method that enables you to change the SKU from Pro to Enterprise with no keys and no reboots. For more information about Subscription Activation, see [Windows 10 Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation).


### Azure Active Directory (AAD) join with automatic mobile device management (MDM) enrollment

In this scenario, the organization member just needs to provide their work or school user ID and password; the device can then be automatically joined to Azure Active Directory and enrolled in a mobile device management (MDM) solution with no additional user interaction. Once done, the MDM solution can finish configuring the device as needed. For more information, see [Azure Active Directory integration with MDM](https://docs.microsoft.com/windows/client-management/mdm/azure-active-directory-integration-with-mdm).

### Provisioning package configuration

Using the [Windows Imaging and Configuration Designer (ICD)](https://go.microsoft.com/fwlink/p/?LinkId=619358), IT administrators can create a self-contained package that contains all of the configuration, settings, and apps that need to be applied to a machine. These packages can then be deployed to new PCs through a variety of means, typically by IT professionals. For more information, see [Configure devices without MDM](/windows/configuration/configure-devices-without-mdm).

These scenarios can be used to enable “choose your own device” (CYOD) programs where the organization’s users can pick their own PC and not be restricted to a small list of approved or certified models (programs that are difficult to implement using traditional deployment scenarios).

While the initial Windows 10 release includes a variety of provisioning settings and deployment mechanisms, these will continue to be enhanced and extended based on feedback from organizations. As with all Windows features, organizations can submit suggestions for additional features through the Windows Feedback app or through their Microsoft Support contacts.

## Traditional deployment: 

New versions of Windows have typically been deployed by organizations using an image-based process built on top of tools provided in the [Windows Assessment and Deployment Kit](windows-adk-scenarios-for-it-pros.md), Windows Deployment Services, the [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md), and [System Center Configuration Manager](deploy-windows-sccm/deploy-windows-10-with-system-center-2012-r2-configuration-manager.md).

With the release of Windows 10, all of these tools are being updated to fully support Windows 10. Although newer scenarios such as in-place upgrade and dynamic provisioning may reduce the need for traditional deployment capabilities in some organizations, these traditional methods remain important and will continue to be available to organizations that need them.

The traditional deployment scenario can be divided into different sub-scenarios. These are explained in detail in the following sections, but the following provides a brief summary:

-   **New computer.** A bare-metal deployment of a new machine.

-   **Computer refresh.** A reinstall of the same machine (with user-state migration and an optional full Windows Imaging (WIM) image backup).

-   **Computer replace.** A replacement of the old machine with a new machine (with user-state migration and an optional full WIM image backup).

### New computer

Also called a "bare metal" deployment. This scenario occurs when you have a blank machine you need to deploy, or an existing machine you want to wipe and redeploy without needing to preserve any existing data. The setup starts from a boot media, using CD, USB, ISO, or Pre-Boot Execution Environment (PXE). You can also generate a full offline media that includes all the files needed for a client deployment, allowing you to deploy without having to connect to a central deployment share. The target can be a physical computer, a virtual machine, or a Virtual Hard Disk (VHD) running on a physical computer (boot from VHD).

The deployment process for the new machine scenario is as follows:

1.  Start the setup from boot media (CD, USB, ISO, or PXE).

2.  Wipe the hard disk clean and create new volume(s).

3.  Install the operating system image.

4.  Install other applications (as part of the task sequence).

After taking these steps, the computer is ready for use.

### Computer refresh

A refresh is sometimes called wipe-and-load. The process is normally initiated in the running operating system. User data and settings are backed up and restored later as part of the deployment process. The target can be the same as for the new computer scenario.

The deployment process for the wipe-and-load scenario is as follows:

1.  Start the setup on a running operating system.

2.  Save the user state locally.

3.  Wipe the hard disk clean (except for the folder containing the backup).

4.  Install the operating system image.

5.  Install other applications.

6.  Restore the user state.

After taking these steps, the machine is ready for use.

### Computer replace

A computer replace is similar to the refresh scenario. However, since we are replacing the machine, we divide this scenario into two main tasks: backup of the old client and bare-metal deployment of the new client. As with the refresh scenario, user data and settings are backed up and restored.

The deployment process for the replace scenario is as follows:

1.  Save the user state (data and settings) on the server through a backup job on the running operating system.

2.  Deploy the new computer as a bare-metal deployment.

    **Note**<br>In some situations, you can use the replace scenario even if the target is the same machine. For example, you can use replace if you want to modify the disk layout from the master boot record (MBR) to the GUID partition table (GPT), which will allow you to take advantage of the Unified Extensible Firmware Interface (UEFI) functionality. You can also use replace if the disk needs to be repartitioned since user data needs to be transferred off the disk.

## Related topics

- [Upgrade to Windows 10 with the Microsoft Deployment Toolkit](upgrade/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit.md)
- [Upgrade to Windows 10 with System Center Configuration Manager](upgrade/upgrade-to-windows-10-with-system-center-configuraton-manager.md)
- [Deploy Windows 10 with System Center 2012 R2 Configuration Manager](https://go.microsoft.com/fwlink/p/?LinkId=620230)
- [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md)
- [Windows setup technical reference](https://go.microsoft.com/fwlink/p/?LinkId=619357)
- [Windows Imaging and Configuration Designer](https://go.microsoft.com/fwlink/p/?LinkId=619358)
- [UEFI firmware](https://go.microsoft.com/fwlink/p/?LinkId=619359)
