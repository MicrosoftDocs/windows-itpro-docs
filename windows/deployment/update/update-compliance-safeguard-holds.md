---
title: Update Compliance - Safeguard Holds report
manager: aaroncz
description: Learn how the Safeguard Holds report provides information about safeguard holds in your population.
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: article
ms.technology: itpro-updates
ms.date: 04/01/2023
---

# Safeguard Holds

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

The Safeguard Holds report provides information about devices in your population that are affected by a [safeguard hold](/windows/deployment/update/safeguard-holds). 

Microsoft uses diagnostic data to determine whether devices that use Windows Update are ready for a feature update in order to ensure a smooth experience. When Microsoft determines a device is not ready to update due to a known issue, a *safeguard hold* is generated to delay the device's upgrade and protect the end-user experience. Safeguard holds are released over time as diagnostic data is analyzed and fixes are addressed. Details are provided on some, but not all safeguard holds on the Windows client release information pages for any given release.

As part of the Safeguard Holds report, Update Compliance provides aggregated and device-specific views into the safeguard holds that apply to devices in your population. These views will show data for all devices that are configured to send diagnostic data at the *Optional* level (previously *Full*). For Windows 10 devices, devices configured to send diagnostic data at *Enhanced* level are also included. If your devices are not sending the required diagnostic data, they will be excluded from these views.

The safeguard hold report can be found in a different location from the other Update Compliance reports. To access the safeguard hold report, follow the instructions below.

1. Navigate to your Log Analytics workspace to which Update Compliance is deployed.
2. In the left-hand menu, select **Solutions**.
3. Select the solution named **WaaSUpdateInsights(\<your workspace name\>)**. (This summary page is also where the Update Compliance tile is located.)
4. In the left-hand menu, select **Workbooks**.
5. Under the subsection **WaaSUpdateInsights**, select the workbook named **Safeguard Holds**.

This report shows information for devices that are managed using the [Windows Update for Business deployment service](/windows/deployment/update/deployment-service-overview). To view information about safeguard holds for other devices, you can use the workbook named **WaaSUpdateInsights** or the [queries for safeguard holds](/windows/deployment/update/update-compliance-feature-update-status) in the Feature Update Status report.

## Safeguard hold view

![The safeguard hold view of the Safeguard Hold report.](images/uc-workspace-safeguard-holds-safeguard-hold-view.png)

The safeguard hold view shows which safeguard holds apply to devices in your population, and how many devices are affected by each safeguard hold. You can use the **Safeguard hold ID(s)** dropdown at the top of the report to filter the chart and corresponding table to show only the selected safeguard hold IDs. Note that a device can be affected by more than one safeguard hold. 

## Device view

![The device view of the Safeguard Hold report.](images/uc-workspace-safeguard-holds-device-view.png)

The device view shows which devices are affected by safeguard holds. In the **Safeguard Hold IDs** column of the table, you can find a list of the safeguard holds that apply to each device. You can also use the **Safeguard hold ID(s)** dropdown at the top of the report to filter the table to show only devices affected by the selected safeguard hold IDs.

## Getting additional information about a safeguard hold

For safeguard holds protecting devices against publicly discussed known issues, you can find their 8-digit identifier on the [Windows release health](/windows/release-health/) page under **Known issues** corresponding to the relevant release.

Devices managed by the [Windows Update for Business deployment service](/windows/deployment/update/deployment-service-overview) that are affected by a safeguard hold for a likely issue are listed in the report with the safeguard hold ID value **00000001**.

## Opt out of safeguard holds

To opt out of safeguard holds protecting against known issues, see [Opt out of safeguard holds](/windows/deployment/update/safeguard-opt-out).

To opt out of safeguard holds protecting against likely issues (applicable to devices managed by the deployment service), see [Manage safeguards for a feature update deployment using the Windows Update for Business deployment service](/graph/windowsupdates-manage-safeguards).
