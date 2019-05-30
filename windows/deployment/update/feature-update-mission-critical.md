---
title: Best practices and recommendations for deploying Windows 10 Feature updates to mission critical devices
description: Learn how to deploy feature updates to your mission critical devices
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.date: 07/10/2018
ms.collection: M365-modern-desktop
ms.topic: article
---

# Best practices and recommendations for deploying Windows 10 Feature updates to mission critical devices

**Applies to**: Windows 10

Managing an environment with devices that provide mission critical services 24 hours a day, 7 days a week, can present challenges in keeping these devices current with Windows 10 feature updates. The processes that you use to keep regular devices current with Windows 10 feature updates, often aren’t the most effective to service mission critical devices. This whitepaper will focus on the recommended approach of using the System Center Configuration Manager (current branch) software updates feature to deploy Windows 10 semi-annual feature updates. 

For simplicity, we will outline the steps to deploy a feature update manually. If you prefer an automated approach, please see [Using Windows 10 servicing plans to deploy Windows 10 feature updates](waas-manage-updates-configuration-manager.md#use-windows-10-servicing-plans-to-deploy-windows-10-feature-updates). 

Devices and shared workstations that are online and available 24 hours a day, 7 days a week, can be serviced via one of two primary methods:

- **Service during maintenance windows** – Devices that have established maintenance windows will need to have feature updates scheduled to fit within these windows.
- **Service only when manually initiated** – Devices that need physical verification of the availability to update will need to have updates manually initiated by a technician.

You can use Configuration Manager to deploy feature updates to Windows 10 devices in two ways. The first option is to use the software updates feature. The second option is to use a task sequence to deploy feature updates. There are times when deploying a Windows 10 feature update requires the use of a task sequence—for example:

- **LTSC feature updates.** With the LTSC servicing branch, feature updates are never provided to the Windows clients themselves. Instead, feature updates must be installed like a traditional in-place upgrade.
- **Additional required tasks.** When deploying a feature update requires additional steps (e.g., suspending disk encryption, updating applications), you can use task sequences to orchestrate the additional steps. Software updates do not have the ability to add steps to their deployments.
- **Language pack installs.** When deploying a feature update requires the installation of additional language packs, you can use task sequences to orchestrate the installation. Software updates do not have the ability to natively install language packs.

If you need to leverage a task sequence to deploy feature updates, please see [Using a task sequence to deploy Windows 10 updates](waas-manage-updates-configuration-manager.md#use-a-task-sequence-to-deploy-windows-10-updates) for more information. If you find that your requirement for a task sequence is based solely on the need to run additional tasks preformed pre-install or pre-commit, please see the new [run custom actions](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-enable-custom-actions) functionality first introduced with Windows 10, version 1803. You may be able to leverage this functionality with the software updates deployment method. 

Use the following information:


- [Deploy feature updates during maintenance windows](feature-update-maintenance-window.md)
- [Deploy feature updates for user-initiated installations](feature-update-user-install.md)
- [Conclusion](feature-update-conclusion.md)
