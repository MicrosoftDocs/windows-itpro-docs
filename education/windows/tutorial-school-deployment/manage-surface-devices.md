---
title: Management functionalities for Surface devices
description: Learn about the management capabilities offered to Surface devices, including firmware management and the Surface Management Portal.
ms.date: 11/09/2023
ms.topic: tutorial
appliesto: 
  - ✅ <b>Surface devices</b>
---

# Management functionalities for Surface devices

Microsoft Surface devices offer advanced management functionalities, including the possibility to manage firmware settings and a web portal designed for them.

## Manage device firmware for Surface devices

Surface devices use a Unified Extensible Firmware Interface (UEFI) setting that allows you to enable or disable built-in hardware components, protect UEFI settings from being changed, and adjust device boot configuration. With [Device Firmware Configuration Interface profiles built into Intune][INT-1], Surface UEFI management extends the modern management capabilities to the hardware level. Windows can pass management commands from Intune to UEFI for Autopilot-deployed devices.

DFCI supports zero-touch provisioning, eliminates BIOS passwords, and provides control of security settings for boot options, cameras and microphones, built-in peripherals, and more. For more information, see [Manage DFCI on Surface devices][SURF-1] and [Manage DFCI with Windows Autopilot][MEM-1], which includes a list of requirements to use DFCI.

:::image type="content" source="./images/dfci-profile.png" alt-text="Creation of a DFCI profile from Microsoft Intune" lightbox="./images/dfci-profile-expanded.png" border="true":::

## Microsoft Surface Management Portal

Located in the Microsoft Intune admin center, the Microsoft Surface Management Portal enables you to self-serve, manage, and monitor your school's Intune-managed Surface devices at scale. Get insights into device compliance, support activity, warranty coverage, and more.

When Surface devices are enrolled in cloud management and users sign in for the first time, information automatically flows into the Surface Management Portal, giving you a single pane of glass for Surface-specific administration activities.

To access and use the Surface Management Portal:

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)
1. Select **All services** > **Surface Management Portal**
    :::image type="content" source="./images/surface-management-portal.png" alt-text="Surface Management Portal within Microsoft Intune" lightbox="./images/surface-management-portal-expanded.png" border="true":::
1. To obtain insights for all your Surface devices, select **Monitor**
    - Devices that are out of compliance or not registered, have critically low storage, require updates, or are currently inactive, are listed here
1. To obtain details on each insights category, select **View report**
    - This dashboard displays diagnostic information that you can customize and export
1. To obtain the device's warranty information, select **Device warranty and coverage**
1. To review a list of support requests and their status, select **Support requests**

<!-- Reference links in article -->

[INT-1]: /intune/configuration/device-firmware-configuration-interface-windows
[MEM-1]: /mem/autopilot/dfci-management
[SURF-1]: /surface/surface-manage-dfci-guide
