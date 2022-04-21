---
title: Microsoft admin center software updates (preview) page
manager: dougeby
description: Microsoft admin center populates Update Compliance data into the software updates page.
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.collection:
  - M365-analytics
  - highpri
ms.topic: article
ms.date: 04/10/2022
---

# Microsoft admin center software updates (preview) page
<!--37063317, 30141258, 37063041, ID2616577, ID2582518 -->
***(Applies to: Windows 11 & Windows 10 using [Update Compliance](update-compliance-v2-overview.md) and the [Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview))***

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

The **Software updates** page in the [Microsoft admin center](https://admin.microsoft.com) displays a high-level overview of the installation status for Microsoft 365 Apps and Windows updates in your environment. Installing security updates help protect you from known vulnerabilities. These updates are typically released on the second Tuesday of each month.


The **Software updates** page has following tabs to help you monitor your clients:

- **Microsoft 365 Apps**: Displays update status for Microsoft 365 Apps.
   - For more information about the **Microsoft 365 Apps** tab, see [Microsoft 365 Apps updates in the admin center](/microsoft-365/admin/admin-overview/admin-center-overview).
- **Windows**: Displays compliance charts for cumulative updates and feature updates for Windows clients. This article contains information about this tab.


:::image type="content" source="media/37063317-admin-center-software-updates.png" alt-text="Screenshot of the Microsoft 365 admin center displaying the software updates page with the Windows tab selected."  lightbox="media/37063317-admin-center-software-updates.png":::


## Windows updates in the admin center

The **Windows** tab in the **Software updates** page in the Microsoft admin center is populated by data from [Update Compliance](update-compliance-get-started.md). The tab contains a high-level overview of update compliance for Windows clients in your environment. The **Devices by update status** chart gives you a visual representation of how many devices are in the following states for the monthly cumulative updates:

- Up to date
- Missing security updates
- Unsupported operating system
