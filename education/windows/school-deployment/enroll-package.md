---
title: Enrollment of Windows devices with provisioning packages
description: options how to enroll Windows devices with provisioning packages, using Set 
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual
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

# Enrollment with provisioning packages

Enrolling devices with provisioning packages is an efficient way to deploy a large number of Windows devices. Some of the benefits of provisioning packages are:

- There are no particular hardware dependencies on the devices to complete the enrollment process
- Devices do not need to be registered in advance
- Enrollment is a simple task: just open a provisioning package and the process is automated

You can create provisioning packages using either **Set Up School PCs** or **Windows Configuration Designer** applications, which are described in the following sections.

## Set up School PCs

With a guided experience, Set up School PCs app helps an IT administrator to create a package containing the most common features and settings that students need, and enroll the devices in Intune. The package is saved on a USB stick, which can then be plugged into devices during OOBE to complete the enrollment process.

### Create a provisioning package

The Set Up School PCs app guides you through configuration choices for school-owned devices.

:::image type="content" source="./images/supcs-win11se.png" alt-text="Configure device settings in Set Up School PCs app" border="false":::

> [!IMPORTANT]
> If you are creating a provisioning package for **Windows 11 SE** devices, ensure to select the correct **OS version** in the **Configure device settings** page.

Note that the Set Up School PCs app will configure many settings, allowing you to optimize devices for shared use and other scenarios.

For more information on prerequisites, configuration, and recommendations, see [Use the Set Up School PCs app][1].

### Enroll devices with the provisioning package

To provision Windows devices with provisioning packages, insert the USB stick containing the package during the out-of-box experience. The devices will read the content of the package, join Azure AD and automatically enroll in Intune.

:::image type="content" source="./images/win11-oobe-ppkg.png" alt-text="Windows 11 OOBE - enrollment with provisioning package" border="false":::

For more information, see [Run package - Install package on PC][EDU-1].

> [!TIP]
> To learn more and practice with Set up School PCs, try the <a href="https://www.microsoft.com/en-us/education/interactive-demos/enroll-devices-at-scale" target="_blank"><u>Set Up School PCs demo</u></a>, which provides detailed steps to create a provisioning package and deploy a device.
## Windows Configuration Designer

Windows Configuration Designer is especially useful in scenarios where a school needs to provision packages for both bring-you-own devices and school-owned devices. Differently from Set Up School PCs, Windows Configuration Designer doesn't offer a guided experience, and allows granular customizations, including the possibility to embed scripts in the package.

:::image type="content" source="./images/wcd.png" alt-text="Set up device page in Windows Configuration Designer" border="false":::

For more information, see [Install Windows Configuration Designer][WIN-1], which provides details about the app, its provisioning process, and considerations for its use.

________________________________________________________
## Next steps

With the devices joined to Azure AD tenant and managed by Intune, you can use Intune to maintain them and report on their status.

> [!div class="nextstepaction"]
> [Next: Manage devices >](manage-overview.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/use-set-up-school-pcs-app

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-install-icd