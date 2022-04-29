---
title: Use the Update Compliance (preview) solution
ms.reviewer: 
manager: dougeby
description: How to use the Update Compliance (preview) solution.
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
date: 05/07/2022
---

# Use Update Compliance (preview)
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

In this article, you'll learn how to use Update Compliance to monitor Windows updates for your devices. To configure your environment for use with Update Compliance, see [Enable Update Compliance](update-compliance-v2-enable.md).

## Display Update Compliance data

1. Sign into the [Azure portal](https://portal.azure.com). 
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. Select the workspace that you use for Updates Compliance.
1. Select **Logs** under the **General** group in your workspace.
1. If the **Always show Queries** option is enabled in Log Analytics, close the query window to access the schema.
1. Under **Schemas and filter**, select **Group by: Solution** and then expand the **Update Compliance** schema. If the **Group by: Category** is selected, the **Update Compliance** schema is listed under the **Other** category.
1. Use the [Update Compliance schema](update-compliance-v2-schema.md) for [custom Kusto (KQL) queries](/azure/data-explorer/kusto/query/), to build [custom workbooks](/azure/azure-monitor/visualize/workbooks-overview), or to build your own solution to display the Update Compliance data. For example, you might query the data to review information for different types of alerts in the past 7 days and how many times each alert occurred.

```kusto
UCUpdateAlert
| summarize count=count() by AlertClassification, AlertSubtype, ErrorCode, Description
```

:::image type="content" source="media/update-compliance-v2-query-table.png" alt-text="Screenshot of using a custom Kusto (KQL) query on Update Compliance data in Log Analytics." lightbox="media/update-compliance-v2-query-table.png":::

## Update Compliance data latency

Update Compliance uses Windows client diagnostic data as its data source. After you add Update Compliance and appropriately configure your devices, it could take 48-72 hours before they first appear.

The data powering Update Compliance is refreshed every 24 hours, and refreshes with the latest data from all of your organization's devices that have been seen in the past 28 days. The entire set of data is refreshed in each daily snapshot, which means that the same data can be reingested even if no new data actually arrived from the device since the last snapshot. Snapshot time can be determined by the TimeGenerated field for each record, while LastScan can be used to roughly determine the freshness of each record's data.  

| Data Type | Data upload rate from device | Data Latency |
|--|--|--|
|WaaSUpdateStatus | Once per day |4 hours |
|WaaSInsiderStatus| Once per day |4 hours |
|WaaSDeploymentStatus|Every update event (Download, install, etc.)|24-36 hours |
|WUDOAggregatedStatus|On update event, aggregated over time|24-36 hours |
|WUDOStatus|Once per day|12 hours |

This latency means you should generally expect to see new data device data every 24 hours, except for WaaSDeploymentStatus and WUDOAggregatedStatus, which may take 36-48 hours.

## Using Log Analytics

Update Compliance is built on the Log Analytics platform that is integrated into Operations Management Suite. All data in the workspace is the direct result of a query. Understanding the tools and features at your disposal, all integrated within Azure portal, can deeply enhance your experience and complement Update Compliance. 

See below for a few articles related to Log Analytics: 
- Learn how to effectively execute custom Log Searches by referring to Microsoft Azure's excellent documentation on [querying data in Log Analytics](/azure/log-analytics/log-analytics-log-searches).
- Review the documentation on [analyzing data for use in Log Analytics](/azure/log-analytics/log-analytics-dashboards) to develop your own custom data views in Operations Management Suite or [Power BI](https://powerbi.microsoft.com/).
- [Gain an overview of Log Analytics' alerts](/azure/log-analytics/log-analytics-alerts) and learn how to use it to always stay informed about the most critical issues you care about.
