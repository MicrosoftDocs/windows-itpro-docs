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
ms.date: 08/10/2022
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
|**Active alerts** | Total number of active alerts on enrolled devices | Displays the top three active alert subtypes and the count of devices in each. </br> </br> Select the count of **Devices** to display a table of the devices. This table is limited to the first 250 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial). </br> </br> Select an **AlertSubtype** to display a list containing: </br> - Each **Error Code** in the alert subtype </br>- A **Description** of the error code </br> - A **Recommendation** to help you remediate the error code </br> - A count of **Devices** with the specific error code |
|  **Windows 11 eligibility** | Percentage of devices that are capable of running Windows 11 | Displays the following items: </br> - **Windows 11 Readiness Status** chart </br> - **Readiness Reason(s) Breakdown** chart that displays  Windows 11 requirements that aren't met. </br> - A table for **Readiness reason**. Select a reason to display a list of devices that don't meet a specific requirement for Windows 11. |

### Summary tab charts

The charts displayed in the **Summary** tab give you a general idea of the overall status of your devices. The two charts displayed include:

- **Overall security update status**: Gives you general insight into of the current update compliance state of your enrolled devices. For instance, if the chart shows a large number of devices are missing multiple security updates, it may indicate an issue in the software update process.

- **Feature update status**: Gives you a general understanding of how many devices are eligible for feature updates based on the operating system lifecycle.
  
:::image type="content" source="media/33771278-overall-security-update-status.png" alt-text="Screenshot of the charts in the workbook's summary tab":::

## Quality updates tab

The **Quality updates** tab displays generalized data at the top by using tiles. The quality update data becomes more specific as you navigate lower in this tab. The top of the **Quality updates** tab contains tiles with the following information:

- **Devices count**: Count of devices that have reported at least one of the latest security updates is or was applicable in the past 30 days, regardless of installation state of the update.
- **Latest security update**: Count of devices that have installed the latest security update.
- **Security update status**: Count of devices that haven't installed a security update released within the last 60 days.
- **Total alerts**: Count of active alerts that are for quality updates.

Below the tiles, the **Quality updates** tab is subdivided into **Update status** and **Device status** groups. These different chart groups allow you to easily discover trends in compliance data. For instance, you may remember that about third of your devices were in the installing state yesterday, but this number didn't change as much as you were expecting. That unexpected trend may cause you to investigate and resolve a potential issue before end-users are impacted.

### <a name="bkmk_update-group-quality"></a> Update status group for quality updates

The **Update status** group for quality updates contains the following items:

- **Update states for all security releases**: Chart containing the number of clients in a specific state for security updates. Possible states include:
   - Installed
   - Installing
   - Offering
   - Canceled
- **Update states for the latest security releases**: Chart containing the number of clients in a specific state for the most recent security update.
- **Update alerts for all security releases**: Chart containing the count of active errors and warnings for security updates.


The **Update deployment status** table displays the quality updates for each operating system version that were released within the last 60 days. For each update, drill-in further by selecting a value from the following columns:

| Column name | Description | Drill-in description |
|---|---|---|
|**Alerts**| Number of different error codes encountered by clients for the update. | Selecting this number lists the alert name for each error code and a count of devices with the error. Select the device count to display a list of devices that have an active alert for the error code.  
| **KB Number** | KB number for the update |  Selecting the KB number will open the support information webpage for the update.|
| **Total devices** | Number of devices that are installing for have installed the update. | Selecting the device count opens a device list table. This table is limited to the first 250 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).  |

### <a name="bkmk_device-group-quality"></a> Device status group for quality updates

The **Device status** group for quality updates contains the following items:

- **OS build number**: Chart containing a count of clients by OS build that are getting security updates.
- **Target version**: Chart containing how many clients by operating system version that are getting security updates.
- **Device compliance status**: Table containing a list of devices getting security updates and update installation information including active alerts for the devices.
  - This table is limited to the first 250 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).

## Feature updates tab

The **Feature updates** tab displays generalized data at the top by using tiles. The feature update data becomes more specific as you navigate lower in this tab. The top of the **Feature updates** tab contains tiles with the following information:

- **Devices count**: Count of devices that have reported a feature update is or was applicable in the past 30 days, regardless of installation state of the update.
- **Feature update status**: Count of the devices that installed an applicable feature update in the past 30 days.
- **End Of Service**: Count of devices running an operating system version that no longer receives feature updates. For more information, see the [Windows lifecycle FAQ](/lifecycle/faq/windows).
- **Nearing EOS** Count of devices that are within 18 months of their end of service date.
- **Total alerts**: Count of active alerts that are for feature updates.

Just like the [**Quality updates** tab](##quality-updates-tab), the **Feature updates** tab is also subdivided into **Update status** and **Device status** groups below the tiles.

### <a name="bkmk_update-group-feature"></a> Update status group for feature updates

The **Update status** group for feature updates contains the following items:

- **Target version**: Chart containing count of clients per operating system version that are getting a feature update
- **Safeguard holds**: Chart containing count of clients per operating system version that are under a safeguard hold for a feature update
- **Update alerts**: Chart containing the count of active errors and warnings for feature updates.

**Update deployment status** table for feature updates displays the installation status by operating system version. For each operating system version targeted with 

<!-- The **Update deployment status** table displays the quality updates for each operating system version that were released within the last 60 days. For each update, drill-in further by selecting a value from the following columns:

| Column name | Description | Drill-in description |
|---|---|---|
|**Alerts**| Number of different error codes encountered by clients for the update. | Selecting this number lists the alert name for each error code and a count of devices with the error. Select the device count to display a list of devices that have an active alert for the error code.  
| **KB Number** | KB number for the update |  Selecting the KB number will open the support information webpage for the update.|
| **Total devices** | Number of devices that are installing for have installed the update. | Selecting the device count opens a device list table. This table is limited to the first 250 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).  |
-->
### <a name="bkmk_device-group-feature"></a>Device status group for feature updates



## Customize the workbook


## Next steps