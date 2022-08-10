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
ms.collection: # education
# highpri - high priority, strategic, important, current, etc. articles
# openauth - the article is owned by PM or community for open authoring
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
---

# Device enrollment overview

Enrolling large numbers of Windows 11 SE devices to Azure Active Directory and Intune for Education can help save time, effort, and cost. There are four methods for setting up Windows 11 SE devices and enrolling them in your education tenant:

- **Windows Autopilot.** Uses cloud-based technologies and services to set up and configure Windows devices with a zero-touch deployment approach. Windows Autopilot helps simplify the Windows device lifecycle, from initial deployment to end of life, for both IT administrators and end users. For more information, see [Overview of Windows Autopilot](https://docs.microsoft.com/en-us/mem/autopilot/windows-autopilot).

**NOTE:** There are some limitations to Windows Autopilot in Windows 11 SE. For more information, see [Device settings](https://docs.microsoft.com/intune-education/windows-11-se-overview).

- **Set Up School PCs app.** Configures devices with the apps and features students need, removing those they do not need. You create a provisioning package with the app and then automatically install the package to enroll devices into Intune for Education. For more information, see [Use the Set Up School PCs app](https://docs.microsoft.com/en-us/education/windows/use-set-up-school-pcs-app).
- **Windows Configuration Designer.** Configures end-user devices without imaging. Using Windows provisioning, you can specify the desired configuration for enrollment and then apply those settings to target devices in minutes. Windows Configuration Designer is best suited for small to medium schools with deployments that range from tens to a few hundred computers. It is offered as an [app in the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22). For more information, see [Install Windows Configuration Designer](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-install-icd).
- **Manual out-of-the-box experience (OOBE).** Requires the user’s school credentials. This experience happens when a user first opens a new device preinstalled with Windows 11 SE. It enables the user to customize certain functionality before reaching the desktop. Keep in mind that when using the manual OOBE, there is a lack of support for the [Device Firmware Configuration Interface](#) (DFCI). In addition, users going through this flow will automatically become local administrators on their devices, which can cause management issues.

## Choosing the best method

In this section of the cookbook, we review four methods for device enrollment. While all will work, Windows Autopilot and the Set Up School PCs app are usually easier, faster, and more efficient for school environments. There are various points to consider when choosing between Windows Autopilot and the Set Up School PCs app. This [table](https://docs.microsoft.com/en-us/intune-education/add-devices-windows) describes the ideal scenarios for using either method. We recommend reviewing the table when making your enrollment and deployment plan. Also, note that DFCI management is not supported with Set Up School PCs enrollment.