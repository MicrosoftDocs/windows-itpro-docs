---
title: Manage devices with Microsoft Intune
description: Manage devices with Microsoft Intune
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: tutorial
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Manage devices with Microsoft Intune

Microsoft Intune delivers streamlined remote management throughout the school year, giving IT the ability to manage apps, control security and privacy remotely, and generate compliance reports.

:::image type="content" source="./images/protect-manage.png" alt-text="The device lifecycle for Intune-managed devices - protect and manage devices" border="false":::

## Remote device management

With Intune for Education, you can manage groups, applications, resources, and individual needs of multiple students. There are several ways to manage students' devices, including organizing what groups they belong to; determining what apps they have access to; and configuring device settings, customizations, and restrictions. You can also monitor when users sign in and troubleshoot devices remotely.

## Remote assistance

With devices managed by Intune for Education, you can remotely assist students and teachers with device issues. For more information, see [Remote assistance for managed devices - Intune for Education](/intune-education/remote-assist-mobile-devices).

## Manage device firmware for Surface devices

Managing devices from the cloud has dramatically simplified IT deployment and provisioning. Surface devices are designed to use a unique Unified Extensible Firmware Interface (UEFI) setting that provides the ability to enable or disable built-in devices and components, protect UEFI settings from being changed, and adjust device boot settings. With [Device Firmware Configuration Interface profiles built into Intune](/intune/configuration/device-firmware-configuration-interface-windows), Surface UEFI management extends the modern management stack down to the UEFI hardware level. DFCI enables Windows to pass management commands from Intune to UEFI for Autopilot-deployed devices. DFCI also supports zero-touch provisioning, eliminates BIOS passwords, and provides control of security settings for boot options, cameras and microphones, built-in peripherals, and more. For more information, see [Manage DFCI with Windows Autopilot](/mem/autopilot/dfci-management) and [Manage DFCI on Surface devices](/surface/surface-manage-dfci-guide). Then, return to this document to continue with the steps below. 

### Prerequisites

The following prerequisites are required to manage DFCI with Intune:

- The device must be managed with Intune, as DFCI management is not supported with Set Up School PCs (provisioning package) enrollments. For more information, see [DFCI Management](/mem/autopilot/dfci-management). 
- The device should be registered through Windows Autopilot in Intune. The device must be registered for Windows Autopilot by a [Microsoft CSP partner](https://partner.microsoft.com/membership/cloud-solution-provider) or registered directly by the OEM. **NOTE:** Devices manually registered for Autopilot (such as by importing a CSV file) are not allowed to use DFCI. By design, DFCI management requires external attestation of the device's commercial acquisition through an OEM or a Microsoft CSP partner registration to Windows Autopilot.
- The device manufacturer must have DFCI added to their UEFI firmware in the manufacturing process or as a firmware update that you install. Work with your device vendors to determine the [manufacturers that support DFCI](/mem/autopilot/dfci-management). 

### Manage DFCI profiles with Autopilot

There are four basic parts to managing a DFCI profile with Windows Autopilot:

- Create a DFCI profile.
- Create an Autopilot profile. 
- Create an enrollment status profile.
- Configure DFCI settings on Surface devices.

The DFCI environment requires creating a DFCI profile that contains settings and an Autopilot profile to apply those settings to registered devices. An enrollment status profile is also recommended to ensure settings are pushed down during OOBE setup when users start the device.

#### Create a DFCI profile

Create a [DFCI profile](/surface/surface-manage-dfci-guide), and then assign it to the Azure AD security group that contains your targeted Surface devices: 

1. In Microsoft Endpoint Manager, select **Devices** → **Configuration profiles** → **Create profile**. 
1. In the **Create a profile** pane:
1. For the platform, select **Windows 10 and later**. 
1. For the profile type, select **Templates**, and then select **Device Firmware Configuration Interface**. 
1. Enter a name and description for the profile. 

## ADD PIC HERE Profile creation page for devices in Microsoft Endpoint Manager admin center

6. In **Configuration settings**, review the available settings in the UEFI configuration.
1. Select **Assignments**.
1. Under **Select groups to include**, select the Azure AD security group that contains your target devices.
1. Select **Next** to continue through **applicability rules**.
1. Review the group settings, and then select **Create**.

#### Create an Autopilot profile

To create an Autopilot profile:

1. In Microsoft Endpoint Manager, choose **Select devices** → **Windows enrollment**. 
1. Scroll to **Deployment profiles**, and then follow the on-screen prompts.

For more information, see [How to create Autopilot Profile](/surface/surface-manage-dfci-guide). Then, return to this document to continue with the steps below. 

#### Create an enrollment status profile

To ensure devices apply the DFCI configuration during OOBE before users sign in, you must configure enrollment status. For more information, see [Set up an enrollment status page](/intune/enrollment/windows-enrollment-status).

#### Configure DFCI settings on Surface devices

You can configure DFCI policy settings by editing the DFCI profile from Microsoft Endpoint Manager:

1. In the Microsoft Endpoint Manager admin center, select **Devices** → **Windows** → **Configuration profiles**.
1. Select the **DFCI profile name** → **Properties** → **Settings**.

## [PICTURE HERE] Device Firmware Configuration Interface page in Microsoft Endpoint Manager admin center

For more information, see [Configuring the DFCI environment and managing UEFI configuration settings for targeted Surface devices](/surface/surface-manage-dfci-guide). 

## Microsoft Surface Management Portal

Located in the Microsoft Endpoint Manager admin center, the Microsoft Surface Management Portal enables you to self-serve, manage, and monitor your school's Intune-managed Surface devices at scale. Get insights into device compliance, support activity, warranty coverage, and more. When Surface Laptop SE devices are enrolled in cloud management and users sign in for the first time, information automatically flows into the Surface Management Portal, giving you a single pane of glass for Surface-specific administration activities.

To access and use the Surface Management Portal: 

1. In the Microsoft Endpoint Manager admin center, select **All services** → **Surface Management Portal**.

## ADD PIC HERE Surface Management Portal monitoring page in Microsoft Endpoint Manager admin center

2. To display insights for all your Surface devices, select **Monitor**. This shows devices that are out of compliance or not registered, have critically low storage, require updates, or are currently inactive. 
1. To see details on each insights category, select **View report**. This displays diagnostic information that you can customize and export. 

To see the device's warranty information, select **Device warranty and coverage**.

5. To see support requests and their status, select **Support requests**.