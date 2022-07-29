---
title: Use the workbook for Update Compliance (preview)
ms.reviewer: 
manager: dougeby
description: How to use the Update Compliance (preview) workbook.
ms.prod: w10
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 08/09/2022
---

# Update Compliance (preview) workbook
<!-- MAX6325272, OS33771278 -->
***(Applies to: Windows 11 & Windows 10)***

> [!IMPORTANT]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

[Update Compliance](update-compliance-v2-overview.md) presents information commonly needed by updates administrators in an easy to use format. Update Compliance uses [Azure Workbooks](/azure/azure-monitor/visualize/workbooks-getting-started) to give you a visual representation of your compliance data. The workbook is broken down into three tab sections:

- [Summary](#summary-tab)
- [Quality updates](#quality-updates-tab)
- [Feature updates](#feature-updates-tab)

:::image type="content" source="media/33771278-update-compliance-workbook-summary.png" alt-text="Screenshot of the summary tab in the Update Compliance workbook":::

## Open the Update Compliance workbook

To access the Update Compliance workbook:

1. In the [Azure portal](https://portal.azure.com), select **Monitor** > **Workbooks** from the menu bar.
   - You can also type **Monitor** in the search bar. As you begin typing, the list filters based on your input.

1. When the gallery opens, select the **Update Compliance** workbook. If needed, you can filter workbooks by name in the gallery.
1. When the workbook opens, you may need to specify which **Subscription** and **Workspace** you used when [enabling Update Compliance](update-compliance-v2-enable.md).

## Summary tab

The **Summary** tab gives you a brief high-level overview of the devices that you've enrolled into Update Compliance.  The **Summary** tab contains tiles above the **Overall security update status** chart.

### Summary tab tiles

Each of these tiles contains an option to **View details**. When **View details** is selected for a tile, a flyout appears with additional information.

| Tile name | Description | View details description |
|---|---|------|
| **Enrolled devices** | Total number of devices that are enrolled into Update Compliance | Displays multiple charts about the operating systems (OS) for enrolled clients: </br> **OS Version** </br> **OS Edition** </br> **OS Servicing Channel** </br> **OS Architecture**|
|**Active alerts** | Total number of active alerts on enrolled devices | Displays the top three active alert subtypes and the count of devices in each. </br> </br> Select the device count to display a table of the devices. You can also export the list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial). </br> </br> Select an **AlertSubtype** to display a list containing: </br> - Each **Error Code** in the alert subtype </br>- A **Description** of the error code </br> - A **Recommendation** to help you remediate the error code </br> - A count of **Devices** with the specific error code |
|  **Windows 11 eligibility** | Percentage of devices that are capable of running Windows 11 | Displays the following items: </br> - **Windows 11 Readiness Status** chart </br> - **Readiness Reason(s) Breakdown** chart that displays  Windows 11 requirements that aren't met. </br> - A table for **Readiness reason**. Select a reason to display a list of devices that don't meet a specific requirement for Windows 11. |

### Summary tab chart

The **Overall security update status** chart is displayed in the **Summary** tab. This chart gives you a general idea of the current update compliance state of your enrolled devices. For instance, if the chart shows a large number of devices are missing multiple security updates, it may indicate an issue in the software update process.
  
:::image type="content" source="media/33771278-overall-security-update-status.png" alt-text="Screenshot of the Overall security update status chart in the workbook's summary tab":::

## Quality updates tab


## Feature updates tab



## Next steps