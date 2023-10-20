---
title: Windows 10 deployment scenarios (Windows 10)
description: Understand the different ways Windows 10 operating system can be deployed in your organization. Explore several Windows 10 deployment scenarios.
manager: aaroncz
ms.author: frankroj
author: frankroj
ms.prod: windows-client
ms.localizationpriority: medium
ms.topic: article
ms.date: 11/23/2022
ms.technology: itpro-deploy
---

# Windows 10 deployment scenarios

*Applies to:*

- Windows 10

To successfully deploy the Windows 10 operating system in your organization, it's important to understand the different ways that it can be deployed, especially now that there are new scenarios to consider. Key tasks include choosing among these scenarios and understanding the capabilities and limitations of each.

## Deployment categories

The following tables summarize various Windows 10 deployment scenarios. The scenarios are each assigned to one of three categories.

- Modern deployment methods are recommended unless you have a specific need to use a different procedure. These methods are supported with existing tools such as Microsoft Deployment Toolkit (MDT) and Microsoft Configuration Manager. These methods are discussed in detail on the [Modern Desktop Deployment Center](/microsoft-365/enterprise/desktop-deployment-center-home).

   > [!NOTE]
   > Once you have deployed Windows 10 in your organization, it is important to stay up to date by [creating a deployment plan](update/create-deployment-plan.md) for Windows 10 feature updates.

- Dynamic deployment methods enable you to configure applications and settings for specific use cases.

- Traditional deployment methods use existing tools to deploy operating system images.

### Modern

|Scenario|Description|More information|
|--- |--- |--- |
|[Windows Autopilot](#windows-autopilot)|Customize the out-of-box-experience (OOBE) for your organization, and deploy a new system with apps and settings already configured|[Overview of Windows Autopilot](/windows/deployment/windows-autopilot/windows-10-autopilot)|
|[In-place upgrade](#in-place-upgrade)|Use Windows Setup to update your OS and migrate apps and settings. Rollback data is saved in Windows.old.|[Perform an in-place upgrade to Windows 10 with MDT](/windows/deployment/deploy-windows-mdt/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit)<br>[Perform an in-place upgrade to Windows 10 using Configuration Manager](/windows/deployment/deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager)|

### Dynamic

|Scenario|Description|More information|
|--- |--- |--- |
|[Subscription Activation](#windows-10-subscription-activation)|Switch from Windows 10 Pro to Enterprise when a subscribed user signs in.|[Windows 10 Subscription Activation](/windows/deployment/windows-10-enterprise-subscription-activation)|
|[Microsoft Entra ID / MDM](#dynamic-provisioning)|The device is automatically joined to Microsoft Entra ID and configured by MDM.|[Microsoft Entra integration with MDM](/windows/client-management/mdm/azure-active-directory-integration-with-mdm)|
|[Provisioning packages](#dynamic-provisioning)|Using the Windows Imaging and Configuration Designer tool, create provisioning packages that can be applied to devices.|[Configure devices without MDM](/windows/configuration/configure-devices-without-mdm)|

### Traditional

|Scenario|Description|More information|
|--- |--- |--- |
|[Bare metal](#new-computer)|Deploy a new device, or wipe an existing device and deploy with a fresh image. |[Deploy a Windows 10 image using MDT](/windows/deployment/deploy-windows-mdt/deploy-a-windows-10-image-using-mdt)<br>[Deploy Windows 10 using PXE and Configuration Manager](/windows/deployment/deploy-windows-cm/deploy-windows-10-using-pxe-and-configuration-manager)|
|[Refresh](#computer-refresh)|Also called wipe and load. Redeploy a device by saving the user state, wiping the disk, then restoring the user state. | [Refresh a Windows 7 computer with Windows 10](/windows/deployment/deploy-windows-mdt/refresh-a-windows-7-computer-with-windows-10)<br>[Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager](/windows/deployment/deploy-windows-cm/refresh-a-windows-7-client-with-windows-10-using-configuration-manager)|
|[Replace](#computer-replace)|Replace an existing device with a new one by saving the user state on the old device and then restoring it to the new device.| [Replace a Windows 7 computer with a Windows 10 computer](/windows/deployment/deploy-windows-mdt/replace-a-windows-7-computer-with-a-windows-10-computer)<br>[Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](/windows/deployment/deploy-windows-cm/replace-a-windows-7-client-with-windows-10-using-configuration-manager)|

> [!IMPORTANT]
> The Windows Autopilot and Subscription Activation scenarios require that the beginning OS be Windows 10 version 1703, or later.<br>
> Except for clean install scenarios such as traditional bare metal and Windows Autopilot, all the methods described can optionally migrate apps and settings to the new OS.

## Modern deployment methods

Modern deployment methods embrace both traditional on-premises and cloud services to deliver a simple, streamlined, and cost effective deployment experience.

### Windows Autopilot

Windows Autopilot is a new suite of capabilities designed to simplify and modernize the deployment and management of new Windows 10 PCs. Windows Autopilot enables IT professionals to customize the Out of Box Experience (OOBE) for Windows 10 PCs and provide end users with a fully configured new Windows 10 device. There are no images to deploy, no drivers to inject, and no infrastructure to manage. Users can go through the deployment process independently, without the need consult their IT administrator.

For more information about Windows Autopilot, see [Overview of Windows Autopilot](/windows/deployment/windows-10-auto-pilot) and [Modernizing Windows deployment with Windows Autopilot](https://blogs.technet.microsoft.com/windowsitpro/2017/06/29/modernizing-windows-deployment-with-windows-autopilot/).

### In-place upgrade

For existing computers running Windows 7, Windows 8, or Windows 8.1, the recommended path for organizations deploying Windows 10 uses the Windows installation program (Setup.exe) is to perform an in-place upgrade. An in-place upgrade:

- Automatically preserves all data, settings, applications, and drivers from the existing operating system version
- Requires the least IT effort, because there's no need for any complex deployment infrastructure

Although consumer PCs will be upgraded using Windows Update, organizations want more control over the process. Control is accomplished by using tools like Microsoft Configuration Manager or the Microsoft Deployment Toolkit to completely automate the upgrade process through simple task sequences.

The in-place upgrade process is designed to be reliable, with the ability to automatically roll back to the previous operating system if any issues are encountered during the deployment process, without any IT staff involvement. Rolling back manually can also be done by using the automatically created recovery information (stored in the Windows.old folder), in case any issues are encountered after the upgrade is finished. The upgrade process is also typically faster than traditional deployments, because applications don't need to be reinstalled as part of the process.

Existing applications are preserved through the process. So, the upgrade process uses the standard Windows installation media image (Install.wim). Custom images aren't needed and can't be used because the upgrade process is unable to deal with conflicts between apps in the old and new operating system. (For example, Contoso Timecard 1.0 in Windows 7 and Contoso Timecard 3.0 in the Windows 10 image.)

Scenarios that support in-place upgrade with some other procedures include changing from BIOS to UEFI boot mode and upgrade of devices that use non-Microsoft disk encryption software.

- **Legacy BIOS to UEFI booting**: To perform an in-place upgrade on a UEFI-capable system that currently boots using legacy BIOS, first perform the in-place upgrade to Windows 10, maintaining the legacy BIOS boot mode. Windows 10 doesn't require UEFI, so it will work fine to upgrade a system using legacy BIOS emulation. After the upgrade, if you wish to enable Windows 10 features that require UEFI (such as Secure Boot), you can convert the system disk to a format that supports UEFI boot using the [MBR2GPT](./mbr-to-gpt.md) tool. Note: [UEFI specification](http://www.uefi.org/specifications) requires GPT disk layout. After the disk has been converted, you must also configure the firmware to boot in UEFI mode.

- **Non-Microsoft disk encryption software**: While devices encrypted with BitLocker can easily be upgraded, more work is necessary for non-Microsoft disk encryption tools. Some ISVs will provide instructions on how to integrate their software into the in-place upgrade process. Check with your ISV to see if they have instructions. The following articles provide details on how to provision encryption drivers for use during Windows Setup via the ReflectDrivers setting:
  - [Windows Setup Automation Overview](/windows-hardware/manufacture/desktop/windows-setup-automation-overview)
  - [Windows Setup Command-Line Options](/windows-hardware/manufacture/desktop/windows-setup-command-line-options)

There are some situations where you can't use in-place upgrade; in these situations, you can use traditional deployment (wipe-and-load) instead. Examples of these situations include:

- Changing from Windows 7, Windows 8, or Windows 8.1 x86 to Windows 10 x64. The upgrade process can't change from a 32-bit operating system to a 64-bit operating system, because of possible complications with installed applications and drivers.

- Windows To Go and Boot from VHD installations. The upgrade process is unable to upgrade these installations. Instead, new installations would need to be performed.

- Updating existing images. It can be tempting to try to upgrade existing Windows 7, Windows 8, or Windows 8.1 images to Windows 10 by installing the old image, upgrading it, and then recapturing the new Windows 10 image. But, it's not supported. Preparing an upgraded OS via `Sysprep.exe` before capturing an image isn't supported and won't work. When `Sysprep.exe` detects the upgraded OS, it will fail.

- Dual-boot and multi-boot systems. The upgrade process is designed for devices running a single OS. If you use dual-boot or multi-boot systems with multiple operating systems (not using virtual machines for the second and subsequent operating systems), then extra care should be taken.

## Dynamic provisioning

For new PCs, organizations have historically replaced the version of Windows included on the device with their own custom Windows image. A custom image was used because a custom image was often faster and easier than using the preinstalled version. However, reimaging with a custom image is an added expense due to the time and effort required. With the new dynamic provisioning capabilities and tools provided with Windows 10, it's now possible to avoid using custom images.

The goal of dynamic provisioning is to take a new PC out of the box, turn it on, and transform it into a productive organization device, with minimal time and effort. The types of transformations that are available include:

### Windows 10 Subscription Activation

Windows 10 Subscription Activation is a dynamic deployment method that enables you to change the SKU from Pro to Enterprise with no keys and no reboots. For more information about Subscription Activation, see [Windows 10 Subscription Activation](/windows/deployment/windows-10-enterprise-subscription-activation).

<a name='azure-active-directory-azure-ad-join-with-automatic-mobile-device-management-mdm-enrollment'></a>

### Microsoft Entra join with automatic mobile device management (MDM) enrollment

In this scenario, the organization member just needs to provide their work or school user ID and password. The device can then be automatically joined to Microsoft Entra ID and enrolled in a mobile device management (MDM) solution with no other user interaction. Once done, the MDM solution can finish configuring the device as needed. For more information, see [Microsoft Entra integration with MDM](/windows/client-management/mdm/azure-active-directory-integration-with-mdm).

### Provisioning package configuration

When you use the [Windows Imaging and Configuration Designer (ICD)](/windows/configuration/provisioning-packages/provisioning-install-icd), IT administrators can create a self-contained package that contains all of the configuration, settings, and apps that need to be applied to a machine. These packages can then be deployed to new PCs through various means, typically by IT professionals. For more information, see [Configure devices without MDM](/windows/configuration/configure-devices-without-mdm).

These scenarios can be used to enable "choose your own device" (CYOD) programs. With these programs, organization users can pick their own PC and aren't restricted to a small list of approved or certified models (programs that are difficult to implement using traditional deployment scenarios).

While the initial Windows 10 release includes various provisioning settings and deployment mechanisms, provisioning settings and deployment mechanisms will continue to be enhanced and extended based on feedback from organizations. As with all Windows features, organizations can submit suggestions for more features through the Windows Feedback app or through their Microsoft Support contacts.

## Traditional deployment

New versions of Windows have typically been deployed by organizations using an image-based process built on top of tools provided in the [Windows Assessment and Deployment Kit](windows-adk-scenarios-for-it-pros.md), Windows Deployment Services, the [Microsoft Deployment Toolkit](./deploy-windows-mdt/prepare-for-windows-deployment-with-mdt.md), and [Microsoft Configuration Manager](deploy-windows-cm/prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md).

With the release of Windows 10, all of these tools are being updated to fully support Windows 10. Although newer scenarios such as in-place upgrade and dynamic provisioning may reduce the need for traditional deployment capabilities in some organizations, these traditional methods remain important, and will continue to be available to organizations that need them.

The traditional deployment scenario can be divided into different sub-scenarios. These sub-scenarios are explained in detail in the following sections, but the following list provides a brief summary:

- **New computer**: A bare-metal deployment of a new machine.
- **Computer refresh**: A reinstall of the same machine (with user-state migration and an optional full Windows Imaging (WIM) image backup).
- **Computer replace**: A replacement of the old machine with a new machine (with user-state migration and an optional full WIM image backup).

### New computer

Also called a "bare metal" deployment. This scenario occurs when you have a blank machine you need to deploy, or an existing machine you want to wipe and redeploy without needing to preserve any existing data. The setup starts from a boot media, using CD, USB, ISO, or Pre-Boot Execution Environment (PXE). You can also generate a full offline media that includes all the files needed for a client deployment, allowing you to deploy without having to connect to a central deployment share. The target can be a physical computer, a virtual machine, or a Virtual Hard Disk (VHD) running on a physical computer (boot from VHD).

The deployment process for the new machine scenario is as follows:

1. Start the setup from boot media (CD, USB, ISO, or PXE).

2. Wipe the hard disk clean and create new volume(s).

3. Install the operating system image.

4. Install other applications (as part of the task sequence).

After you follow these steps, the computer is ready for use.

### Computer refresh

A refresh is sometimes called wipe-and-load. The process is normally initiated in the running operating system. User data and settings are backed up and restored later as part of the deployment process. The target can be the same as for the new computer scenario.

The deployment process for the wipe-and-load scenario is as follows:

1. Start the setup on a running operating system.

2. Save the user state locally.

3. Wipe the hard disk clean (except for the folder containing the backup).

4. Install the operating system image.

5. Install other applications.

6. Restore the user state.

After you follow these steps, the machine is ready for use.

### Computer replace

A computer replace is similar to the refresh scenario. However, since we're replacing the machine, we divide this scenario into two main tasks: backup of the old client and bare-metal deployment of the new client. As with the refresh scenario, user data and settings are backed up and restored.

The deployment process for the replace scenario is as follows:

1. Save the user state (data and settings) on the server through a backup job on the running operating system.

2. Deploy the new computer as a bare-metal deployment.

    > [!NOTE]
    > In some situations, you can use the replace scenario even if the target is the same machine. For example, you can use replace if you want to modify the disk layout from the master boot record (MBR) to the GUID partition table (GPT), which will allow you to take advantage of the Unified Extensible Firmware Interface (UEFI) functionality. You can also use replace if the disk needs to be repartitioned since user data needs to be transferred off the disk.

## Related articles

- [Upgrade to Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-mdt/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit.md)
- [Upgrade to Windows 10 with Microsoft Configuration Manager](./deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager.md)
- [Deploy Windows 10 using PXE and Configuration Manager](deploy-windows-cm/deploy-windows-10-using-pxe-and-configuration-manager.md)
- [Deploy Windows 10 with the Microsoft Deployment Toolkit](./deploy-windows-mdt/prepare-for-windows-deployment-with-mdt.md)
- [Windows setup technical reference](/windows-hardware/manufacture/desktop/windows-setup-technical-reference)
- [Windows Imaging and Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd)
- [UEFI firmware](/windows-hardware/design/device-experiences/oem-uefi)
