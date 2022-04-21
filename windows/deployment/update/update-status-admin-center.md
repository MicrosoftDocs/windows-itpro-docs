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

The **Software updates** page in the [Microsoft admin center](https://admin.microsoft.com) displays a high-level overview of the installation status for Microsoft 365 Apps and Windows updates in your environment. Security updates are typically released on the second Tuesday of each month and they help protect you from known vulnerabilities. The **Software updates** page allows you to easily determine the overall update compliance for your devices.

The **Software updates** page has following tabs to assist you in monitoring update status for your devices:

- **Microsoft 365 Apps**: Displays update status for Microsoft 365 Apps.
   - For more information about the **Microsoft 365 Apps** tab, see [Microsoft 365 Apps updates in the admin center](/microsoft-365/admin/admin-overview/admin-center-overview).
- **Windows**: Displays compliance charts for cumulative updates and feature updates for Windows clients. This article contains information about the **Windows** tab.

:::image type="content" source="media/37063317-admin-center-software-updates.png" alt-text="Screenshot of the Microsoft 365 admin center displaying the software updates page with the Windows tab selected."  lightbox="media/37063317-admin-center-software-updates.png":::

## Prerequisites

- [Update Compliance](update-compliance-v2-overview.md) needs to be configured
- Read access to the [Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview).
 
## Get started

When you first select the **Windows** tab, you'll be asked to **Configure Settings**. This tab is populated by data from [Update Compliance](update-compliance-v2-overview.md). Supply your  

## The Windows tab 

The **Windows** tab in the **Software updates** page in the Microsoft admin center is populated by data from [Update Compliance](update-compliance-get-started.md). The tab contains a high-level overview of update compliance for Windows clients in your environment. The tab displays two charts **Windows update status** and **End of service**. 


### Windows update status chart 

The **Windows update status** chart gives you a visual representation of how many devices are in the following states for the monthly cumulative updates:

- Up to date
- Missing security updates
- Unsupported operating system

A device is considered **Up to date** in this chart if it has installed security updates released within the past two months. Devices that are more two months behind on installation are in the **Missing security updates** classification. An **Unsupported operating system** is either no longer supported by the [Microsoft Product Lifecycle](lifecycle/products/).

The **End of service** chart list the number of devices running an operating system version that's near or past the product lifecycle. 

