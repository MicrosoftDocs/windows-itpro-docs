---
title: Use the workbook for Windows Update for Business reports
titleSuffix: Windows Update for Business reports
description: How to use the Windows Update for Business reports workbook from the Azure portal.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 01/29/2024
---

# Windows Update for Business reports workbook
<!-- MAX6325272, OS33771278 -->
[Windows Update for Business reports](wufb-reports-overview.md) presents information commonly needed by updates administrators in an easy-to-use format. Windows Update for Business reports uses [Azure Workbooks](/azure/azure-monitor/visualize/workbooks-getting-started) to give you a visual representation of your compliance data. The workbook is broken down into tab sections:

- [Summary](#summary-tab)
- [Quality updates](#quality-updates-tab)
- [Feature updates](#feature-updates-tab)
- [Delivery Optimization](#bkmk_do)
- [Driver updates](#driver-updates-tab)

:::image type="content" source="media/33771278-wufb-reports-workbook-summary.png" alt-text="Screenshot of the summary tab in the Windows Update for Business reports workbook. The three tabbed sections are outlined in red." lightbox="media/33771278-wufb-reports-workbook-summary.png":::

## Open the Windows Update for Business reports workbook

To access the Windows Update for Business reports workbook:

1. In the [Azure portal](https://portal.azure.com), select **Monitor** > **Workbooks** from the menu bar.
   - You can also type **Monitor** in the search bar. As you begin typing, the list filters based on your input.

1. When the gallery opens, select the **Windows Update for Business reports** workbook. If needed, you can filter workbooks by name in the gallery.
1. When the workbook opens, you may need to specify which **Subscription** and **Workspace** you used when [enabling Windows Update for Business reports](wufb-reports-enable.md).

> [!Important]
> Don't pin the Windows Update for Business reports workbook to an Azure dashboard. Using a pinned report loads an older copy of the report and it won't display any updates to the report template. <!--8689121-->

## Summary tab

The **Summary** tab gives you a brief high-level overview of the devices that you've enrolled into Windows Update for Business reports.  The **Summary** tab contains tiles above the **Overall security update status** chart.

### Summary tab tiles

Each of these tiles contains an option to **View details**. When **View details** is selected for a tile, a flyout appears with additional information.

:::image type="content" source="media/8037522-workbook-summary-tab-tiles.png" alt-text="Screenshot of the summary tab tiles in the Windows Update for Business reports workbook":::

| Tile name | Description | View details description |
|---|---|------|
| **Enrolled devices** | Total number of devices that are enrolled into Windows Update for Business reports | Displays multiple charts about the operating systems (OS) for enrolled devices: </br> **OS Version** </br> **OS Edition** </br> **OS Servicing Channel** </br> **OS Architecture**|
|**Active alerts** | Total number of active alerts on enrolled devices | Displays the top three active alert subtypes and the count of devices in each. </br> </br> Select the count of **Devices** to display a table of the devices. This table is limited to the first 1000 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial). </br> </br> Select an **AlertSubtype** to display a list containing: </br> - Each **Error Code** in the alert subtype </br>- A **Description** of the error code </br> - A **Recommendation** to help you remediate the error code </br> - A count of **Devices** with the specific error code |
|  **Windows 11 adoption** | Number of devices that are running Windows 11 | Displays the following items: </br> - **Windows 11 Device Count** chart, broken down by Windows 11 version </br> - **Windows 11 Eligibility Status** contains a **Readiness status** chart that lists the count of devices by OS version that are either capable or not capable of running Windows 11. </br> - The **Device List** allows you to choose a Windows 11 **Ineligibility Reason** to display devices that don't meet the selected requirement. <!--8037522-->|

### Summary tab charts

The charts displayed in the **Summary** tab give you a general idea of the overall status of your devices. The two charts displayed include:

- **Overall security update status**: Gives you general insight into of the current update compliance state of your enrolled devices. For instance, if the chart shows a large number of devices are missing multiple security updates, it may indicate an issue in the software update process.

- **Feature update status**: Gives you a general understanding of how many devices are eligible for feature updates based on the operating system lifecycle.
  
:::image type="content" source="media/33771278-overall-security-update-status.png" alt-text="Screenshot of the charts in the workbook's summary tab" lightbox="media/33771278-overall-security-update-status.png":::

## Quality updates tab

The **Quality updates** tab displays generalized data at the top by using tiles. The quality update data becomes more specific as you navigate lower in this tab. The top of the **Quality updates** tab contains tiles with the following information and drill-down options:

| Tile name | Description | Drill-in description |
|---|---|---|
|**Latest security update**| Count of devices that have reported successful installation of the latest security update. | - Select **View details** to display a flyout with a chart that displays the first 1000 items. </br> - Select `...` from the flyout to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial). | 
| **Missing one security update** | Count of devices that haven't installed the latest security update.| - Select **View details** to display a flyout with a chart that displays the first 1000 items. </br> - Select `...` from the flyout to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).|
| **Missing multiple security updates** | Count of devices that are missing two or more security updates. | - Select **View details** to display a flyout with a chart that displays the first 1000 items. </br> - Select `...` from the flyout to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial). |
| **Active alerts** | Count of active update and device alerts for quality updates. | |
| **Expedite status** | Overview of the progress for the expedited deployments of the latest security update. | Select **View details** to display a flyout with two tabs: **Deployments** and **Readiness** </br> </br> - The **Deployments** tab contains a chart that displays the total progress of each deployment, number of alerts, and count of devices.  <ul><li> Select the count from the **Alerts** column to display the alerts, by name, for the deployment. Selecting the device count for the alert name displays a list of devices with the alert.</li><li> Select the count in the **TotalDevices** column to display a list of clients and their information for the deployment. <!--7626683--> </li></ul> </br> - The **Readiness** tab contains a chart that displays the number of devices that are **Eligible** and **Ineligible** to install expedited updates. The **Readiness** tab also contains a table listing the deployments for expedited updates. <!--8682382--> <ul><li> Select the count from the **Alerts** column to display devices with a status of **RegistrationMissingUpdateClient**, which means the device is missing the Update Health Tools. The Update Health Tools are installed starting with [KB4023057](https://support.microsoft.com/kb/4023057) or from a [stand-alone package from the Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=103324). Example PowerShell script to verify tools installation: `Get-CimInstance -ClassName Win32_Product \| Where-Object {$_.Name -match "Microsoft Update Health Tools"}` </li><li> Select the count of **TotalDevices** to display a list of devices in the deployment. <!--8682382-->|

Below the tiles, the **Quality updates** tab is subdivided into **Update status** and **Device status** groups. These different chart groups allow you to easily discover trends in compliance data. For instance, you may remember that about third of your devices were in the installing state yesterday, but this number didn't change as much as you were expecting. That unexpected trend may cause you to investigate and resolve a potential issue before end users are impacted.

### <a name="bkmk_update-group-quality"></a> Update status group for quality updates

The **Update status** group for quality updates contains the following items:

- **Update states for all security releases**: The update states for the last 3 security updates are used to populate this chart. The total number of update states is approximately 3 times the number of devices that have reported update data to Windows Update for Business reports in the past 30 days.
- **Update alerts for all security releases**: Chart containing the count of active errors and warnings for security updates.


The **Update deployment status** table displays the quality updates for each operating system version that were released within the last 60 days. For each update, drill-in further by selecting a value from the following columns:

| Column name | Description | Drill-in description |
|---|---|---|
|**Alerts**| Number of different error codes encountered by devices for the update. | Selecting this number lists the alert name for each error code and a count of devices with the error. Select the device count to display a list of devices that have an active alert for the error code.  
| **KB Number** | KB number for the update |  Selecting the KB number will open the support information webpage for the update.|
| **Total devices** | Number of devices that have been offered the update, or are installing, have installed, or canceled the update. | Selecting the device count opens a device list table. This table is limited to the first 1000 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).  |

### <a name="bkmk_device-group-quality"></a> Device status group for quality updates

The **Device status** group for quality updates contains the following items:

- **OS build number**: Chart containing a count of devices by OS build that are getting security updates.
- **Device alerts**: Chart containing the count of active device errors and warnings for quality updates.
- **Device compliance status**: Table containing a list of devices getting security updates and update installation information including active alerts for the devices.
  - This table is limited to the first 1000 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).

## Feature updates tab

The **Feature updates** tab displays generalized data at the top by using tiles. The feature update data becomes more specific as you navigate lower in this tab. The top of the **Feature updates** tab contains tiles with the following information:

- **In service feature update**: Count of devices that are installed with a supported version of a Windows feature update.
- **End of service feature update**: Count of devices that don't have a supported version of a Windows feature update installed. For more information, see the [Windows lifecycle FAQ](/lifecycle/faq/windows).
- **Nearing EOS** Count of devices that are within 18 months of their end of service date.
- **Active alerts**: Count of active update and device alerts for feature updates.

Just like the [**Quality updates** tab](#quality-updates-tab), the **Feature updates** tab is also subdivided into **Update status** and **Device status** groups below the tiles. Selecting **View details** on any of the tiles displays a flyout with a chart that displays the first 1000 items. Select `...` from the flyout to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).

### <a name="bkmk_update-group-feature"></a> Update status group for feature updates

The **Update status** group for feature updates contains the following items:

- **Target version**: Chart containing count of devices per targeted operating system version.
- **Safeguard holds**: Chart containing count of devices per operating system version that are under a safeguard hold for a feature update
- **Update alerts**: Chart containing the count of active errors and warnings for feature updates.

**Update deployment status** table for feature updates displays the installation status by targeted operating system version. For each operating system version targeted, the following columns are available:

| Column name | Description | Drill-in description |
|---|---|---|
| **Total progress** | Percentage of devices that installed the targeted operating system version feature update within the last 30 days. | A bar graph is included in this column. Use the **Total devices** drill-in for additional information. |
|**Alerts**| Number of different error codes encountered by devices for the update. | Selecting this number lists the alert name for each error code and a count of devices with the error. Select the device count to display a list of devices that have an active alert for the error code.  |
| **Total Devices** | Count of devices for each targeted operating system version that have been offered the update, or are installing, have installed, or canceled the feature update.| Selecting the device count opens a device list table. This table is limited to the first 1000 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial). |

### <a name="bkmk_device-group-feature"></a> Device status group for feature updates

The **Device status** group for feature updates contains the following items:

- **Windows 11 readiness status**: Chart containing how many devices that have a status of capable, not capable, or unknown for Windows 11 readiness.
- **Device alerts**: Count of active device alerts for feature updates in each alert classification.
- **Device compliance status**: Table containing a list of devices getting a feature update and installation information including active alerts for the devices.
  - This table is limited to the first 1000 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).

## Driver updates tab

The **Driver update** tab provides information on driver and firmware update deployments from [Windows Autopatch](/windows/deployment/windows-autopatch/overview/windows-autopatch-overview). Generalized data is at the top of the page in tiles. The data becomes more specific as you navigate lower in this tab. The top of the driver updates tab contains tiles with the following information:

**Devices taking driver updates**: Count of devices that are installing driver and firmware updates.
**Approved updates**: Count of approved driver updates
**Total policies**: The total number of deployment polices for driver and firmware updates from [Windows Autopatch](/windows/deployment/windows-autopatch/overview/windows-autopatch-overview)
**Active alerts**: Count of active alerts for driver deployments

Selecting **View details** on any of the tiles displays a flyout with a chart that displays the first 1000 items. Select `...` from the flyout to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).

:::image type="content" source="media/7539531-wufb-reports-workbook-drivers.png" alt-text="Screenshot of the update status tab for driver updates." lightbox="media/7539531-wufb-reports-workbook-drivers.png":::

Just like the [**Quality updates**](#quality-updates-tab) and [**Feature updates**](#feature-updates-tab) tabs, the **Driver updates** tab is also subdivided into **Update status** and **Device status** groups below the tiles. These different chart groups allow you to easily discover trends in compliance data.

### <a name="bkmk_update-group-driver"></a> Update status group for drivers

The **Update status** group for driver updates contains the following items:

- **Update states for all driver updates**: Chart containing the number of devices in a specific state, such as installing, for driver updates.
- **Distribution of Driver Classes**: Chart containing the number of drivers in a specific class.
- **Update alerts for all driver updates**: Chart containing the count of active errors and warnings for driver updates.

The **Update deployment status** table displays information about deployed driver updates for your devices. Drill-in further by selecting a value from the **TotalDevices** column to display the status of a specific driver for a specific policy along with information about the installation status for each device.

### <a name="bkmk_device-group-driver"></a> Device status group for driver updates

The **Device status** group for driver updates contains the following items:

- **Device alerts**: Count of active device alerts for driver updates in each alert classification.
- **Device compliance status**: Table containing a list of devices getting a driver update and installation information including active alerts for the devices.
  - This table is limited to the first 1000 rows. Select `...` to export the full list, or display the query in [Log Analytics](/azure/azure-monitor/logs/log-analytics-tutorial).

## <a name="bkmk_do"></a> Delivery Optimization

The **Delivery Optimization** tab provides a summarized view of bandwidth efficiencies. This new revised report also includes [Microsoft Connected Cache](/windows/deployment/do/waas-microsoft-connected-cache) information. For more information, see [Delivery Optimization data in Windows Update for Business reports](/windows/deployment/update/waas-delivery-optimization).

At the top of the report, tiles display the following information:

- Total bandwidth savings percentage
- The percentage of the saved bandwidth broken down by peer-to-peer and MCC
- Device counts showing percentages of bytes delivered between peer-to-peer and MCC
- The breakdown of total downloaded GBs.

The Delivery Optimization tab is further divided into the following groups:

- **Device Configuration**: A chart differentiating the number of devices with and without peer-to-peer. And, a table of Download Mode configuration breakdown between numbers of devices. When selected, the devices within that group can be viewed, filtered in a separate table.
- **Content Distribution**: Includes charts showing percentage volumes and GB volumes by source by content types. All content types are linked to a table for deeper filtering by **ContentType**, **AzureADTenantId**, and **GroupID**.
- **Efficiency By Group**: This view provides filters commonly used ways of grouping devices. The provided filters include: **GroupID**, **City**, **Country**, and **ISP**.

:::image type="content" source="media/wufb-do-overview.png" alt-text="Screenshot of the summary tab in the Windows Update for Business reports workbook for Delivery Optimization." lightbox="media/wufb-do-overview.png":::

## Understanding update states

Updates can go though many phases from when they're initially deployed to being installed on the device. Transition from one state to another can be rapid, which makes some states less likely to be displayed in reports. The workbook can report the following high-level states for a device update: <!--8052067-->

- **Offering**: The update is being offered to the device for installation
- **Installing**: The update is in the process of being installed on the device
- **Installed**: The update has been installed on the device
- **Canceled**: The update was canceled from the [deployment service](deployment-service-overview.md) before it was installed
- **Uninstalled**: The update was uninstalled from the device by either an admin or a user
- **OnHold**: The update was put on hold from the [deployment service](deployment-service-overview.md) before it was installed
- **Unknown**: This state occurs when there's a record for the device in the [UCClient](wufb-reports-schema-ucclient.md) table, but there isn't a record for the specific update for the specific device in the [UCClientUpdateStatus](wufb-reports-schema-ucclientupdatestatus.md) table. This means that there is no record of the update for the device in question.

## Customize the workbook

Since the Windows Update for Business reports workbook is an [Azure Workbook template](/azure/azure-monitor/visualize/workbooks-templates), it can be customized to suit your needs. If you open a template, make some adjustments, and save it, the template is saved as a workbook. This workbook appears in green. The original template is left untouched. For more information about workbooks, see [Get started with Azure Workbooks](/azure/azure-monitor/visualize/workbooks-getting-started).

## Next steps

- Explore the [Windows Update for Business reports schema](wufb-reports-schema.md)
- Review [Feedback, support, and troubleshooting](wufb-reports-help.md) information for Windows Update for Business reports
