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
ms.date: 05/07/2022
---

# Microsoft admin center software updates (preview) page
<!--37063317, 30141258, 37063041, ID2616577, ID2582518 -->
***(Applies to: Windows 11 & Windows 10 using [Update Compliance](update-compliance-v2-overview.md) and the [Microsoft 365 admin center](/microsoft-365/admin/admin-overview/admin-center-overview))***

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

The **Software updates** page in the [Microsoft 365 admin center](https://admin.microsoft.com) displays a high-level overview of the installation status for Microsoft 365 Apps and Windows updates in your environment. [Quality updates](quality-updates.md) that contain security fixes are typically released on the second Tuesday of each month. Ensuring these updates are installed is important because they help protect you from known vulnerabilities. The **Software updates** page allows you to easily determine the overall update compliance for your devices.

The **Software updates** page has following tabs to assist you in monitoring update status for your devices:

- **Microsoft 365 Apps**: Displays update status for Microsoft 365 Apps.
   - For more information about the **Microsoft 365 Apps** tab, see [Microsoft 365 Apps updates in the admin center](/microsoft-365/admin/admin-overview/admin-center-overview).
- **Windows**: Displays compliance charts for cumulative updates and feature updates for Windows clients. This article contains information about the **Windows** tab.

:::image type="content" source="media/37063317-admin-center-software-updates.png" alt-text="Screenshot of the Microsoft 365 admin center displaying the software updates page with the Windows tab selected." lightbox="media/37063317-admin-center-software-updates.png":::

## Prerequisites

- [Update Compliance](update-compliance-v2-overview.md) needs to be enabled with clients sending data to the solution
- An appropriate role assigned for the [Microsoft 365 admin center](https://admin.microsoft.com) **???**
   - To configure settings for the **Software Updates** page: [Windows Update Deployment Administrator role](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator)
   - To view the **Software Updates** page: [Global Reader role](/microsoft-365/admin/add-users/about-admin-roles)

## Limitations

Update Compliance is a Windows service hosted in Azure that uses Windows diagnostic data. Update Compliance is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers since it doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home).

## Get started

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/) and sign in. 
1. Expand **Health**, then select **Software Updates**.
1. In the **Software Updates** page, select the **Windows** tab.
1. When you select the **Windows** tab for the first time, you'll be asked to **Configure Settings**. This tab is populated by data from [Update Compliance](update-compliance-v2-overview.md). Verify or supply the following information about the settings for Update Compliance:

    - The Azure subscription
    - The Log Analytics workspace
1. The initial setup can take up to 24 hours. During this time, the **Windows** tab will display that it's **Waiting for Update Compliance data**.
1. After the initial setup is complete, the **Windows** tab will display your Update Compliance data in the charts.

## The Windows tab

The **Windows** tab in the **Software updates** page in the Microsoft admin center is populated by data from [Update Compliance](update-compliance-v2-overview.md). The tab contains a high-level overview of update compliance for Windows clients in your environment. The tab displays two charts **Windows update status** and **End of service**.

### Windows update status chart

The **Windows update status** chart gives you a visual representation of how many devices are in the following states for the monthly cumulative updates:

- Up to date
- Missing security updates
- Unsupported operating system

A device is considered **Up to date** in this chart if it has installed [security updates](quality-updates.md) released within the past two months. Devices that are more two months behind on installation are in the **Missing security updates** classification. An **Unsupported operating system** is no longer supported by the [Microsoft Product Lifecycle](/lifecycle/products/).

:::image type="content" source="media/37063317-windows-update-status-chart.png" alt-text="Screenshot of the Windows update status chart that is displayed in the Microsoft 365 admin center." lightbox="media/37063317-windows-update-status-chart.png":::

### End of service chart

The **End of service** chart list the number of devices running an operating system version that's near or past the [Microsoft Product Lifecycle](/lifecycle/products/). The **End of service** chart lists all operating system versions that aren't the latest version and counts the number of devices for each version. This chart can help you determine how many of your devices need to install the latest operating system [feature update](waas-quick-start.md#definitions). If you're currently deploying feature updates to these devices, the chart can also give you insight into how the deployment is progressing.

:::image type="content" source="media/37063317-end-of-service-chart.png" alt-text="Screenshot of the end of service chart that is displayed in the Microsoft 365 admin center." lightbox="media/37063317-end-of-service-chart.png":::

## Next steps

Use [Update Compliance](update-compliance-v2-overview.md) to display additional data about the status of Windows updates.