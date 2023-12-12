---
title: Manage multi-user and guest Windows devices
description: options to optimize Windows devices used in shared scenarios, such touchdown spaces in an enterprise, temporary customer use in retail or shared devices in a school.
ms.date: 11/08/2023
ms.topic: concept-article
author: paolomatarazzo
ms.author: paoloma
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows 11 SE</b>
---

# Manage multi-user and guest Windows devices with Shared PC

Windows allows multiple users to sign in and use the same device, which is useful in scenarios like touchdown spaces in an enterprise, temporary customer use in retail or shared devices in a school.
As more users access the same device, more resources on the devices are used. This can lead to performance issues and a degraded user experience.

To optimize multi-user and guest devices, Windows provides options through a feature called *Shared PC*. These settings are designed to improve the experience for all users on the device, and to reduce the administrative overhead caused by the maintenance of multiple user profiles.

This article describes the different options available in Shared PC.

## Shared PC mode

A Windows device enabled for *Shared PC mode* is designed to be maintenance-free with high reliability. Devices configured in Shared PC mode have different settings designed to improve the experience for all users accessing a shared device.

## Account management

When *Account management* is configured, user profiles are automatically deleted to free up disk space and resources. Account management is performed both at sign-out time and during system maintenance time periods. Shared PC mode can be configured to delete accounts immediately at sign-out, based on disk space thresholds, or based on inactivity thresholds.

> [!IMPORTANT]
> Shared PC is designed to take advantage of maintenance time periods, which run while the device is not in use. Therefore, devices should be put to **sleep** instead of shut down, so that they can wake up to perform maintenance tasks.

> [!TIP]
> While Shared PC does not configure the Windows Update client, it is recommended to configure Windows Update to automatically install updates and reboot during maintenance hours. This will help ensure the device is always up to date without interrupting users when the device is in use.

### Account models

Shared PC offers the possibility to enable a **Guest** option on the sign-in screen. The Guest option doesn't require any user credentials or authentication, and creates a new local account each time it's used with access to the desktop. A **Guest button** is shown on the sign-in screen that a user can select.

:::image type="content" source="./images/sharedpc-guest-win11.png" alt-text="Windows 11 sign-in screen with Guest option enabled." border="True":::

Shared PC also offers a **Kiosk** mode, which automatically executes a specific application when the kiosk account signs-in. This is useful in scenarios where the device is accessed for a specific purpose, such as test taking in a school.

:::image type="content" source="./images/sharedpc-kiosk-win11se.png" alt-text="Windows 11 sign-in screen with Guest and Kiosk options enabled." border="True":::

## Advanced customizations

Shared PC offers advanced customizations for shared devices, such as specific settings for education devices, low end devices, and more.

Shared devices require special considerations regarding power settings. Shared PC makes it easy to configure power settings for shared devices. The power settings are configured in the local group policy object (LGPO).

> [!NOTE]
> For devices without Advanced Configuration and Power Interface (ACPI) wake alarms, Shared PC will override real-time clock (RTC) wake alarms to be allowed to wake the PC from sleep (by default, RTC wake alarms are off). This ensures that the widest variety of hardware will take advantage of maintenance periods.

## Additional information

- To learn how to configure Shared PC, see [Set up a shared or guest Windows device](set-up-shared-or-guest-pc.md).
- For a list of settings configured by the different options offered by Shared PC, see the [Shared PC technical reference](shared-pc-technical.md).
- For a list of settings exposed by the SharedPC configuration service provider, see [SharedPC CSP][WIN-1].
- For a list of settings exposed by Windows Configuration Designer, see [SharedPC CSP][WIN-2].

<!--links-->

[WIN-1]: /windows/client-management/mdm/sharedpc-csp
[WIN-2]: /windows/configuration/wcd/wcd-sharedpc