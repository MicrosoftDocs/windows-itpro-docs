---
title: Best practices and recommendations for deploying Windows 10 Feature updates to mission-critical devices
description: Learn how to use the Microsoft Endpoint Manager (current branch) software updates feature to deploy Windows 10 semi-annual feature updates.
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.collection: M365-modern-desktop
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Best practices and recommendations for deploying Windows 10 Feature updates to mission critical devices

**Applies to**: Windows 10

Managing an environment with devices that provide mission critical services 24 hours a day, 7 days a week, can present challenges in keeping these devices current with Windows 10 feature updates. The processes that you use to keep regular devices current with Windows 10 feature updates, often aren't the most effective to service mission critical devices. This whitepaper will focus on the recommended approach of using the Microsoft Endpoint Manager (current branch) software updates feature to deploy Windows 10 semi-annual feature updates. 

For simplicity, we will outline the steps to deploy a feature update manually. If you prefer an automated approach, see [Manage Windows as a service using Configuration Manager](/configmgr/osd/deploy-use/manage-windows-as-a-service). 

Devices and shared workstations that are online and available 24 hours a day, 7 days a week, can be serviced via one of two primary methods:

- **Service during maintenance windows** – Devices that have established maintenance windows will need to have feature updates scheduled to fit within these windows.
- **Service only when manually initiated** – Devices that need physical verification of the availability to update will need to have updates manually initiated by a technician.

You can use Configuration Manager to deploy feature updates to Windows 10 devices in two ways. The first option is to use the software updates feature. The second option is to use a task sequence to deploy feature updates. There are times when deploying a Windows 10 feature update requires the use of a task sequence—for example:

- **Upgrade to the next LTSC release.** With the LTSC servicing branch, feature updates are never provided to the Windows clients themselves. Instead, feature updates must be installed like a traditional in-place upgrade.
- **Additional required tasks.** When deploying a feature update requires additional steps (for example, suspending disk encryption, updating applications), you can use task sequences to orchestrate the additional steps. Software updates do not have the ability to add steps to their deployments.
- **Language pack installations.** When deploying a feature update requires the installation of additional language packs, you can use task sequences to orchestrate the installation. Software updates do not have the ability to natively install language packs.

If you need to use a task sequence to deploy feature updates, see [Manage Windows as a service using Configuration Manager](/configmgr/osd/deploy-use/manage-windows-as-a-service) for more information. If you find that your requirement for a task sequence is based solely on the need to run additional tasks performed pre-install or pre-commit, see the new [run custom actions](/windows-hardware/manufacture/desktop/windows-setup-enable-custom-actions) functionality first introduced with Windows 10, version 1803. You might find this option useful in deploying software updates. 

Use the following information:


- [Deploy feature updates during maintenance windows](feature-update-maintenance-window.md)
- [Deploy feature updates for user-initiated installations](feature-update-user-install.md)
- [Conclusion](feature-update-conclusion.md)