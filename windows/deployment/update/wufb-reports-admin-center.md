---
title: Microsoft 365 admin center software updates page
titleSuffix: Windows Update for Business reports
manager: aaroncz
description: Microsoft admin center populates Windows Update for Business reports data into the software updates page.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows Update for Business reports</a>	
- ✅ <a href=https://learn.microsoft.com/microsoft-365/admin/admin-overview/admin-center-overview >Microsoft 365 admin center</a>	
ms.date: 04/26/2023
---

# Microsoft 365 admin center software updates page
<!--37063317, 30141258, 37063041, ID2616577, ID2582518 -->

The **Software updates** page in the [Microsoft 365 admin center](https://admin.microsoft.com) displays a high-level overview of the installation status for Microsoft 365 Apps and Windows updates in your environment. [Quality updates](quality-updates.md) that contain security fixes are typically released on the second Tuesday of each month. Ensuring these updates are installed is important because they help protect you from known vulnerabilities. The **Software updates** page allows you to easily determine the overall update compliance for your devices.

The **Software updates** page has following tabs to assist you in monitoring update status for your devices:

- **Microsoft 365 Apps**: Displays update status for Microsoft 365 Apps.
   - For more information about the **Microsoft 365 Apps** tab, see [Microsoft 365 Apps updates in the admin center](/DeployOffice/updates/software-update-status).
- **Windows**: Displays compliance charts for cumulative updates and feature updates for Windows clients. This article contains information about the **Windows** tab.

  :::image type="content" source="media/37063317-admin-center-software-updates.png" alt-text="Screenshot of the Microsoft 365 admin center displaying the software updates page with the Windows tab selected." lightbox="media/37063317-admin-center-software-updates.png":::

## Limitations

Windows Update for Business reports is a Windows service hosted in Azure that uses Windows diagnostic data. Windows Update for Business reports is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers since it doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home).

## Get started

After verifying that you've met the [prerequisites and permissions](wufb-reports-prerequisites.md) for Windows Update for Business reports, enroll using the instructions below if needed: 

<!--Using include for onboarding Windows Update for Business reports through the Microsoft 365 admin center-->
[!INCLUDE [Onboarding Windows Update for Business reports through the Microsoft 365 admin center](./includes/wufb-reports-onboard-admin-center.md)]

## The Windows tab

The **Windows** tab in the **Software updates** page in the Microsoft admin center is populated by data from [Windows Update for Business reports](wufb-reports-overview.md). The tab contains a high-level overview of update compliance for Windows clients in your environment. The tab displays two charts **Windows update status** and **End of service**. The Windows Update for Business reports data that populates these charts refreshes every 24 hours. For more information, see [Windows Update for Business reports data latency](wufb-reports-use.md#data-latency).

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

Use [Windows Update for Business reports](wufb-reports-overview.md) to display additional data about the status of Windows updates.
