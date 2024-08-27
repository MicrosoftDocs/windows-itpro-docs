---
title: Windows deployment scenarios
description: Understand the different ways Windows operating system can be deployed in an organization. Explore several Windows deployment scenarios.
manager: aaroncz
ms.author: frankroj
author: frankroj
ms.service: windows-client
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 02/13/2024
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Windows deployment scenarios

To successfully deploy the Windows operating system in an organization, it's important to understand the different ways that it can be deployed. Key tasks include choosing among these scenarios and understanding the capabilities and limitations of each.

## Deployment categories

The following tables summarize various Windows deployment scenarios. The scenarios are each assigned to one of three categories.

- Modern deployment methods are recommended unless a specific need requires use of a different procedure. These methods are supported with existing tools such as Microsoft Configuration Manager.

   > [!NOTE]
   >
   > Once Windows is deployed in an organization, it's important to stay up to date by [creating a deployment plan](update/create-deployment-plan.md) for Windows feature updates.

- Dynamic deployment methods enable configuration of applications and settings for specific use cases.

- Traditional deployment methods use existing tools to deploy operating system images.

### Modern

|Scenario|Description|More information|
|--- |--- |--- |
|[Windows Autopilot](#windows-autopilot)|Customize the out-of-box-experience (OOBE) for an organization, and deploy a new system with apps and settings already configured|[Overview of Windows Autopilot](/autopilot/windows-autopilot)|
|[In-place upgrade](#in-place-upgrade)|Use Windows Setup to update the Windows version and migrate apps and settings. Rollback data is saved in Windows.old.|[Perform an in-place upgrade to Windows using Configuration Manager](/mem/configmgr/osd/deploy-use/upgrade-windows-to-the-latest-version)|

### Dynamic

|Scenario|Description|More information|
|--- |--- |--- |
|[Subscription Activation](#windows-subscription-activation)|Switch from Windows Pro to Enterprise when a subscribed user signs in.|[Windows Subscription Activation](windows-subscription-activation.md)|
|[Microsoft Entra ID / MDM](#dynamic-provisioning)|The device is automatically joined to Microsoft Entra ID and configured by MDM.|[Microsoft Entra integration with MDM](/windows/client-management/mdm/azure-active-directory-integration-with-mdm)|
|[Provisioning packages](#dynamic-provisioning)|Using the Windows Imaging and Configuration Designer tool, create provisioning packages that can be applied to devices.|[Configure devices without MDM](/windows/configuration/configure-devices-without-mdm)|

### Traditional

|Scenario|Description|More information|
|--- |--- |--- |
|[Bare metal](#new-computer)|Deploy a new device, or wipe an existing device and deploy with a fresh image. |[Deploy Windows using PXE and Configuration Manager](/previous-versions/windows/it-pro/windows-10/deployment/deploy-windows-cm/deploy-windows-10-using-pxe-and-configuration-manager)|
|[Refresh](#computer-refresh)|Also called wipe and load. Redeploy a device by saving the user state, wiping the disk, then restoring the user state. | [Refresh a Windows client with a currently supported version of Windows using Configuration Manager](/previous-versions/windows/it-pro/windows-10/deployment/deploy-windows-cm/refresh-a-windows-7-client-with-windows-10-using-configuration-manager)|
|[Replace](#computer-replace)|Replace an existing device with a new one by saving the user state on the old device and then restoring it to the new device.| [Replace a Windows client with a currently supported version of Windows using Configuration Manager](/previous-versions/windows/it-pro/windows-10/deployment/deploy-windows-cm/replace-a-windows-7-client-with-windows-10-using-configuration-manager)|

> [!IMPORTANT]
>
> The Windows Autopilot and Subscription Activation scenarios require that the beginning OS is a currently supported version of Windows.
>
> Except for clean install scenarios such as traditional bare metal and Windows Autopilot, all the methods described can optionally migrate apps and settings to the new OS.

## Modern deployment methods

Modern deployment methods embrace both traditional on-premises and cloud services to deliver a streamlined and cost effective deployment experience.

### Windows Autopilot

Windows Autopilot is a new suite of capabilities designed to simplify and modernize the deployment and management of new Windows PCs. Windows Autopilot enables IT professionals to customize the Out of Box Experience (OOBE) for Windows PCs and provide end users with a fully configured new Windows device. There are no images to deploy, no drivers to inject, and no infrastructure to manage. Users can go through the deployment process independently, without the need consult their IT administrator.

For more information about Windows Autopilot, see [Overview of Windows Autopilot](/autopilot/windows-autopilot) and [Modernizing Windows deployment with Windows Autopilot](https://techcommunity.microsoft.com/t5/windows-blog-archive/modernizing-windows-deployment-with-windows-autopilot/ba-p/167042).

### In-place upgrade

For existing computers running out of support versions of Windows, the recommended path for organizations deploying Windows is to perform an in-place upgrade. An in-place upgrade uses the Windows installation program (`Setup.exe`) to:

- Automatically preserves all data, settings, applications, and drivers from the existing operating system version
- Requires the least IT effort, because there's no need for any complex deployment infrastructure

Although consumer PCs are upgraded using Windows Update, organizations want more control over the process. Control is accomplished by using tools like Microsoft Configuration Manager to completely automate the upgrade process through simple task sequences.

The in-place upgrade process is designed to be reliable. An in-place upgrade has the ability to automatically roll back to the previous operating system if any issues are encountered during the deployment process, without any IT staff involvement. Rolling back manually can also be done by using the automatically created recovery information (stored in the Windows.old folder), in case any issues are encountered after the upgrade is finished. The upgrade process is also typically faster than traditional deployments, because applications don't need to be reinstalled as part of the process.

Existing applications are preserved through the process. The upgrade process uses the standard Windows installation media image (Install.wim). Custom images not only aren't needed, but they also can't be used. Custom images can't be used because the upgrade process is unable to deal with conflicts between apps in the old and new operating system. For example, Contoso Timecard 1.0 in Windows 10 and Contoso Timecard 3.0 in the Windows 11 image.

Scenarios that support in-place upgrade with some other procedures include changing from BIOS to UEFI boot mode and upgrade of devices that use non-Microsoft disk encryption software.

- **Legacy BIOS to UEFI booting**: To perform an in-place upgrade on a UEFI-capable system that currently boots using legacy BIOS, first perform the in-place upgrade to Windows 10, maintaining the legacy BIOS boot mode. Windows 10 doesn't require UEFI, so it works fine to upgrade a system using legacy BIOS emulation. After the upgrade, the system disk can be converted to a format that supports UEFI boot using the [MBR2GPT](./mbr-to-gpt.md) tool. [UEFI specification](http://www.uefi.org/specifications) requires GPT disk layout. After the disk is converted, the firmware of the device must also be configured to boot in UEFI mode. Enabling UEFI also UEFI features such as Secure Boot to be enabled.

> [!IMPORTANT]
>
> Performing an in-place upgrade on a UEFI-capable system that currently boots using legacy BIOS is only possible with Windows 10. Windows versions newer than Windows 10 only support UEFI-capable systems and don't support legacy BIOS or MBR.

- **Non-Microsoft disk encryption software**: While devices encrypted with BitLocker can easily be upgraded, more work is necessary for non-Microsoft disk encryption tools. Some ISVs might provide instructions on how to integrate their software into the in-place upgrade process. Check with the ISV to see if they have instructions. The following articles provide details on how to provision encryption drivers for use during Windows Setup via the ReflectDrivers setting:

  - [Windows Setup Automation Overview](/windows-hardware/manufacture/desktop/windows-setup-automation-overview)
  - [Windows Setup Command-Line Options](/windows-hardware/manufacture/desktop/windows-setup-command-line-options)

There are some situations where an in-place upgrade can't be used. In these situations, use traditional deployment methods instead. Examples of these situations include:

- Changing from an x86 version of Windows 10 to an x64 version of Windows. Versions of Windows newer than Windows 10 are only x64 and don't have an x86 version. The upgrade process can't change from a 32-bit operating system to a 64-bit operating system, because of possible complications with installed applications and drivers.

- Boot from VHD installations. The upgrade process is unable to upgrade these installations. Instead, new installations would need to be performed.

- Updating existing images. It can be tempting to try to upgrade existing Windows images to a newer version of Windows by installing the old image, upgrading it, and then recapturing the new Windows image. However, this scenario isn't supported. Preparing an upgraded OS via `Sysprep.exe` before capturing an image isn't supported and doesn't work. When `Sysprep.exe` detects the upgraded OS, it fails.

- Dual-boot and multi-boot systems. The upgrade process is designed for devices running a single OS. If using dual-boot or multi-boot systems with multiple operating systems, then extra care should be taken. Dual-boot and multi-boot systems doesn't include using virtual machines for the second and subsequent operating systems.

## Dynamic provisioning

For new PCs, organizations historically replaced the version of Windows included on the device with their own custom Windows image. A custom image was used because a custom image was often faster and easier than using the preinstalled version. However, reimaging with a custom image is an added expense due to the time and effort required. With the new dynamic provisioning capabilities and tools provided with Windows, it's now possible to avoid using custom images.

The goal of dynamic provisioning is to take a new PC out of the box, turn it on, and transform it into a productive organization device, with minimal time and effort. The types of transformations that are available include:

### Windows Subscription Activation

Windows Subscription Activation is a dynamic deployment method that enables changing the edition of Windows from Pro to Enterprise. Windows Subscription Activation requires no keys and no reboots. For more information about Subscription Activation, see [Windows Subscription Activation](windows-subscription-activation.md).

### Microsoft Entra join with automatic mobile device management (MDM) enrollment

In this scenario, the organization member just needs to provide their work or school user ID and password. The device can then be automatically joined to Microsoft Entra ID and enrolled in a mobile device management (MDM) solution with no other user interaction. Once done, the MDM solution can finish configuring the device as needed. For more information, see [Microsoft Entra integration with MDM](/windows/client-management/mdm/azure-active-directory-integration-with-mdm).

### Provisioning package configuration

With the [Windows Imaging and Configuration Designer (ICD)](/windows/configuration/provisioning-packages/provisioning-install-icd), IT administrators can create a self-contained package that contains all of the configuration, settings, and apps that need to be applied to a device. These packages can then be deployed to new PCs through various means, typically by IT professionals. For more information, see [Provisioning packages for Windows](/windows/configuration/provisioning-packages/provisioning-packages).

These scenarios can be used to enable "Bring Your Own Device" (BYOD) or "Choose Your Own Device" (CYOD) programs. With these programs, an organization's users can pick their own PC. They aren't restricted to a small list of approved or certified models. These programs are difficult to implement using traditional deployment scenarios.

While Windows includes various provisioning settings and deployment mechanisms, provisioning settings and deployment mechanisms continue to be enhanced and extended based on feedback from organizations. As with all Windows features, organizations can submit suggestions for more features through the Windows Feedback app or through their Microsoft Support contacts.

## Traditional deployment

In the past, organizations typically deployed Windows using an image-based process built on top of tools provided in:

- [Windows Assessment and Deployment Kit](windows-adk-scenarios-for-it-pros.md).
- [Microsoft Configuration Manager](/mem/configmgr).
- Windows Deployment Services (WDS).
- Microsoft Deployment Toolkit.

Scenarios such as in-place upgrade and dynamic provisioning might reduce the need for traditional deployment capabilities in some organizations. However, traditional methods might still need to be used under certain circumstances.

The traditional deployment scenario can be divided into different sub-scenarios. These sub-scenarios are explained in detail in the following sections, but the following list provides a brief summary:

- **New computer**: A bare-metal deployment of a new device.
- **Computer refresh**: A reinstall of the same device (with user-state migration and an optional full Windows Imaging (WIM) image backup).
- **Computer replace**: A replacement of the old device with a new device (with user-state migration and an optional full WIM image backup).

### New computer

Also called a "bare metal" deployment. This scenario occurs when there's a device with no OS installed on it that needs to be deployed. This scenario can also be an existing device that needs to be wiped and redeployed without needing to preserve any existing data. The setup starts from a boot media, using CD, USB, ISO, or Pre-Boot Execution Environment (PXE). A full offline media that includes all the files needed for a client deployment can also be generated, allowing deployment without having to connect to a central deployment share. The target can be a physical computer, a virtual machine, or a Virtual Hard Disk (VHD) running on a physical computer (boot from VHD).

The deployment process for the new device scenario is as follows:

1. Start the setup from boot media (CD, USB, ISO, or PXE).

1. Wipe the hard disk clean and create new volume(s).

1. Install the operating system image.

1. Install other applications (as part of the task sequence).

After following these steps, the computer is ready for use.

### Computer refresh

A refresh is sometimes called wipe-and-load. The process is normally initiated in the running operating system. User data and settings are backed up and restored later as part of the deployment process. The target can be the same as for the new computer scenario.

The deployment process for the wipe-and-load scenario is as follows:

1. Start the setup on a running operating system.

1. Save the user state locally.

1. Wipe the hard disk clean (except for the folder containing the backup).

1. Install the operating system image.

1. Install other applications.

1. Restore the user state.

After following these steps, the device is ready for use.

### Computer replace

A computer replace is similar to the refresh scenario. However, since we're replacing the device, we divide this scenario into two main tasks: backup of the old client and bare-metal deployment of the new client. As with the refresh scenario, user data and settings are backed up and restored.

The deployment process for the replace scenario is as follows:

1. Save the user state (data and settings) on the server through a backup job on the running operating system.

1. Deploy the new computer as a bare-metal deployment.

    > [!NOTE]
    >
    > In some situations, the replace scenario can be used even if the target is the same device. For example, replace can be used if disk layout needs to be changed from master boot record (MBR) to GUID partition table (GPT). This conversion allows taking advantage of Unified Extensible Firmware Interface (UEFI) functionality.

## Related articles

- [Upgrade to Windows with Microsoft Configuration Manager](/mem/configmgr/osd/deploy-use/upgrade-windows-to-the-latest-version).
- [Deploy Windows using PXE and Configuration Manager](/previous-versions/windows/it-pro/windows-10/deployment/deploy-windows-cm/deploy-windows-10-using-pxe-and-configuration-manager).
- [Windows setup technical reference](/windows-hardware/manufacture/desktop/windows-setup-technical-reference).
- [Windows Imaging and Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd).
- [UEFI firmware](/windows-hardware/design/device-experiences/oem-uefi).
