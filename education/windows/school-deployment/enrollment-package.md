---
title: # Microsoft Endpoint Manager support
description: # How to obtain Microsoft support from Microsoft Endpoint Manager admin center.
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
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

- **Set Up School PCs app** configures devices with the apps and features students need, removing those they do not need. You create a provisioning package with the app and then automatically install the package to enroll devices into Intune for Education.
- **Windows Configuration Designer.** Configures end-user devices without imaging. Using Windows provisioning, you can specify the desired configuration for enrollment and then apply those settings to target devices in minutes. Windows Configuration Designer is best suited for small to medium schools with deployments that range from tens to a few hundred computers.

## Set up School PCs

The Set Up School PCs app is especially useful in scenarios where large numbers of school-owned devices need to be enrolled. The app helps you configure Surface Laptop SE devices with the features students need, remove those they do not need, and enroll the devices into Intune for Education. With the Set Up School PCs app, you create a provisioning package to enroll devices using a USB drive.



### Create a provisioning package

The Set Up School PCs app guides you through configuration choices for school-owned devices.

![Configure device settings in Set Up School PCs app](./image12.png)

**NOTE:** Importantly, for **Configure device settings** → **OS version**, you must select **Windows 11 SE**.

The devices will be joined to Azure Active Directory and automatically enrolled in Intune. Note that the Set Up School PCs app will configure many settings, allowing you to optimize devices for shared use and other scenarios.

For more information on prerequisites, configuration, and recommendations, see [Use the Set Up School PCs app][1].



### Enroll devices with the provisioning package

To provision Windows devices with provisioning packages, insert the USB stick containing the package during the out-of-box experience. The devices will read the content of the package, join Azure AD and enroll automatically in Intune.

For more information, see [Run package - Install package on PC][1].

> [!TIP]
> To learn more and practice with Set up School PCs, try the <a href="https://www.microsoft.com/en-us/education/interactive-demos/enroll-devices-at-scale" target="_blank"><b>Set Up School PCs demo</b></a>, which provides detailed steps to create a provisioning package and deploy a device.

# Windows Configuration Designer

Windows Configuration Designer is especially useful in scenarios where a school needs to provision packages for both bring-you-own devices and school-owned devices. Ideal for small-to-medium schools that manage up to a few hundred devices, Windows Configuration Designer lets you configure devices without imaging. For more information, see [Install Windows Configuration Designer][2], which provides details about the app, its provisioning process, and considerations for its use. 

![Set up device page in Windows Configuration Designer](./image13.png)


________________________________________________________
## Section review and next steps

> [!div class="nextstepaction"]
> [< Enroll devices](enrollment-overview.md)
> [Manage devices >](management-overview.md)

<!-- Reference links in article -->

[1]: /education/windows/use-set-up-school-pcs-app
[2]: /windows/configuration/provisioning-packages/provisioning-install-icd