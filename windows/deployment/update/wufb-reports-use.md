---
title: Use the Windows Update for Business reports data
manager: aaroncz
description: How to use the Windows Update for Business reports data for custom solutions using tools like Azure Monitor Logs.
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: article
ms.date: 11/15/2022
ms.technology: itpro-updates
---

# Use Windows Update for Business reports
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

In this article, you'll learn how to use Windows Update for Business reports to monitor Windows updates for your devices. To configure your environment for use with Windows Update for Business reports, see [Enable Windows Update for Business reports](wufb-reports-enable.md).

## Display Windows Update for Business reports data

1. Sign into the [Azure portal](https://portal.azure.com). 
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. Select the workspace that you use for Windows Update for Business reports.
1. Select **Logs** under the **General** group in your workspace.
1. If the **Always show Queries** option is enabled in Log Analytics, close the query window to access the schema.
1. Under **Schemas and filter**, select **Group by: Solution** and then expand the **Log Management** schema. If the **Group by: Category** is selected, the schema is listed under the **Other** category.
1. Use the [Windows Update for Business reports schema](wufb-reports-schema.md) for [custom Kusto (KQL) queries](/azure/data-explorer/kusto/query/), to build [custom workbooks](/azure/azure-monitor/visualize/workbooks-overview), or to build your own solution to display the Windows Update for Business reports data. For example, you might query the data to review information for different types of alerts in the past 7 days and how many times each alert occurred.

```kusto
UCUpdateAlert
| summarize count=count() by AlertClassification, AlertSubtype, ErrorCode, Description
```

:::image type="content" source="media/wufb-reports-query-table.png" alt-text="Screenshot of using a custom Kusto (KQL) query on Windows Update for Business reports data in Log Analytics." lightbox="media/wufb-reports-query-table.png":::

## Data latency

Windows Update for Business reports uses Windows client diagnostic data as its data source. After you add Windows Update for Business reports and appropriately configure your devices, it could take 48-72 hours before they first appear.

The data powering Windows Update for Business reports is refreshed every 24 hours, and refreshes with the latest data from all of your organization's devices that have been seen in the past 28 days. The entire set of data is refreshed in each daily snapshot, which means that the same data can be ingested again even if no new data arrived from the device since the last snapshot. Snapshot time can be determined by the TimeGenerated field for each record, while LastScan can be used to roughly determine the freshness of each record's data. Device connectivity to the internet and generally how active the device is influences how long it will take before it appears in Windows Update for Business reports.

| Data Type | Data upload rate from device | Data Latency |
|--|--|--|
| UCClient | Once per day |4 hours |
| UCClientUpdateStatus|Every update event (Download, install, etc.)|24-36 hours |
| UCServiceUpdateStatus| Every update event (Download, install, etc.)|24-36 hours |
| UCUpdateAlert | Every event | 24-36 hours |
| UCDeviceAlert | Every event | 24-36 hours |
| UCClientReadinessStatus | After Windows 11 readiness assessment |24-36 hours |
| UCDOStatus | Download Events | 24-36 hours |
| UCDOAggregatedStatus | Download Events | 24-36 hours |

## Working with Azure Monitor Logs

Windows Update for Business reports is built on the Azure Monitor Logs platform. All Windows Update for Business reports-related data is collected in a Log Analytics workspace, where the data is available for querying. Understanding the Azure Monitor Logs tools and features at your disposal, all integrated within Azure portal, can deeply enhance your experience and complement Windows Update for Business reports.

See the following Azure Monitor Logs articles to learn how to:
- [Query log data effectively in Azure Monitor Logs](/azure/log-analytics/log-analytics-log-searches).
- [Create and share dashboards of data in a Log Analytics workspace](/azure/log-analytics/log-analytics-dashboards).
- [Set up alerts in Azure Monitor](/azure/log-analytics/log-analytics-alerts) to always stay informed about the critical issues you care about most.
