---
title: Device enrollment overview
description: Options to enroll Windows devices in Microsoft Intune
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

# Device enrollment overview

Enrolling large numbers of Windows 11 SE devices to Azure Active Directory and Intune for Education can help save time, effort, and cost. There are four methods for setting up Windows 11 SE devices and enrolling them in your education tenant:

- **Windows Autopilot.** Uses cloud-based technologies and services to set up and configure Windows devices with a zero-touch deployment approach. Windows Autopilot helps simplify the Windows device lifecycle, from initial deployment to end of life, for both IT administrators and end users. For more information, see [Overview of Windows Autopilot](/mem/autopilot/windows-autopilot).

**NOTE:** There are some limitations to Windows Autopilot in Windows 11 SE. For more information, see [Device settings](https://docs.microsoft.com/intune-education/windows-11-se-overview).

- **Set Up School PCs app.** Configures devices with the apps and features students need, removing those they do not need. You create a provisioning package with the app and then automatically install the package to enroll devices into Intune for Education. For more information, see [Use the Set Up School PCs app](/education/windows/use-set-up-school-pcs-app).
- **Windows Configuration Designer.** Configures end-user devices without imaging. Using Windows provisioning, you can specify the desired configuration for enrollment and then apply those settings to target devices in minutes. Windows Configuration Designer is best suited for small to medium schools with deployments that range from tens to a few hundred computers. It is offered as an [app in the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22). For more information, see [Install Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd).
- **Manual out-of-the-box experience (OOBE).** Requires the user’s school credentials. This experience happens when a user first opens a new device preinstalled with Windows 11 SE. It enables the user to customize certain functionality before reaching the desktop. Keep in mind that when using the manual OOBE, there is a lack of support for the [Device Firmware Configuration Interface](#) (DFCI). In addition, users going through this flow will automatically become local administrators on their devices, which can cause management issues.

## Choosing the best method

 Also, note that DFCI management is not supported with Set Up School PCs enrollment.

________________________________________________________
## Section review and next steps

In this section, we reviewed four methods for device enrollment. Windows Autopilot and the Set up School PCs app are usually the most efficient options for school environments. There are various elements to take under consideration when choosing between Windows Autopilot and the Set up School PCs app. This [table](/intune-education/add-devices-windows) describes the ideal scenarios for using either method. It is recommended to review the table when making your enrollment and deployment plan.

> [!div class="nextstepaction"]
> [< Set up Microsoft Intune](set-up-microsoft-intune.md)
> [Windows Autopilot >](enrollment-oobe.md)
> [Provisioning Package>](enrollment-oobe.md)
> [Manual >](enrollment-oobe.md)