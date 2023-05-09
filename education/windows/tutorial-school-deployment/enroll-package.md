---
title: Enrollment of Windows devices with provisioning packages
description: Learn about how to enroll Windows devices with provisioning packages using SUSPCs and Windows Configuration Designer.
ms.date: 08/31/2022
ms.topic: tutorial
---

# Enrollment with provisioning packages

Enrolling devices with provisioning packages is an efficient way to deploy a large number of Windows devices. Some of the benefits of provisioning packages are:

- There are no particular hardware dependencies on the devices to complete the enrollment process
- Devices don't need to be registered in advance
- Enrollment is a simple task: just open a provisioning package and the process is automated

You can create provisioning packages using either **Set Up School PCs** or **Windows Configuration Designer** applications, which are described in the following sections.

## Set up School PCs

With Set up School PCs, you can create a package containing the most common device configurations that students need, and enroll devices in Intune. The package is saved on a USB stick, which can then be plugged into devices during OOBE. Applications and settings will be automatically applied to the devices, including the Azure AD join and Intune enrollment process.

### Create a provisioning package

The Set Up School PCs app guides you through configuration choices for school-owned devices.

:::image type="content" source="./images/supcs-win11se.png" alt-text="Configure device settings in Set Up School PCs app" border="false":::

> [!CAUTION]
> If you are creating a provisioning package for **Windows 11 SE** devices, ensure to select the correct *OS version* in the *Configure device settings* page.

Set Up School PCs will configure many settings, allowing you to optimize devices for shared use and other scenarios.

For more information on prerequisites, configuration, and recommendations, see [Use the Set Up School PCs app][EDU-1].

> [!TIP]
> To learn more and practice with Set up School PCs, try the <a href="https://www.microsoft.com/en-us/education/interactive-demos/enroll-devices-at-scale" target="_blank"><u>Set Up School PCs demo</u></a>, which provides detailed steps to create a provisioning package and deploy a device.
## Windows Configuration Designer

Windows Configuration Designer is especially useful in scenarios where a school needs to provision packages for both bring-you-own devices and school-owned devices. Differently from Set Up School PCs, Windows Configuration Designer doesn't offer a guided experience, and allows granular customizations, including the possibility to embed scripts in the package.

:::image type="content" source="./images/wcd.png" alt-text="Set up device page in Windows Configuration Designer" border="false":::

For more information, see [Install Windows Configuration Designer][WIN-1], which provides details about the app, its provisioning process, and considerations for its use.

## Enroll devices with the provisioning package

To provision Windows devices with provisioning packages, insert the USB stick containing the package during the out-of-box experience. The devices will read the content of the package, join Azure AD and automatically enroll in Intune.
All settings defined in the package and in Intune will be applied to the device, and the device will be ready to use.

:::image type="content" source="./images/win11-oobe-ppkg.gif" alt-text="Windows 11 OOBE - enrollment with provisioning package animation." border="false":::

________________________________________________________
## Next steps

With the devices joined to Azure AD tenant and managed by Intune, you can use Intune to maintain them and report on their status.

> [!div class="nextstepaction"]
> [Next: Manage devices >](manage-overview.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/use-set-up-school-pcs-app

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-install-icd