---
title: Windows Update for Business reports overview
titleSuffix: Windows Update for Business reports
description: Overview of Windows Update for Business reports to explain what it's used for and the cloud services it relies on.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 11/15/2022
---

# Windows Update for Business reports overview
<!--37063317, 30141258, 37063041-->
Windows Update for Business reports is a cloud-based solution that provides information about your Microsoft Entra joined devices' compliance with Windows updates. Windows Update for Business reports is offered through the [Azure portal](https://portal.azure.com), and it's included as part of the Windows 10 or Windows 11 prerequisite licenses. Windows Update for Business reports helps you:

- Monitor security, quality, driver, and feature updates for Windows 11 and Windows 10 devices
- Report on devices with update compliance issues
- Analyze and display your data in multiple ways


## Benefits of Windows Update for Business reports

Some of the benefits of Windows Update for Business reports are:

- Compatibility with [feature updates](/mem/intune/protect/windows-10-feature-updates) and [Expedite Windows quality updates](/mem/intune/protect/windows-10-expedite-updates) policies in Intune.
- A new **Alerts** data type to assist you with identifying devices that encounter issues during the update process. Error code information is provided to help troubleshoot update issues.

Currently, Windows Update for Business reports contains the following features:

- [Windows Update for Business reports workbook](wufb-reports-workbook.md)
- Compliance status [charts in the Microsoft 365 admin](wufb-reports-admin-center.md)
- Access to the following [Windows Update for Business reports tables](wufb-reports-schema.md):
    - UCClient
    - UCClientReadinessStatus
    - UCClientUpdateStatus
    - UCDeviceAlert
    - UCDOAggregatedStatus
    - UCDOStatus
    - UCServiceUpdateStatus
    - UCUpdateAlert

- Client data collection to populate the Windows Update for Business reports tables

:::image type="content" source="media/wufb-reports-query-table.png" alt-text="Screenshot of using a custom Kusto (KQL) query on Windows Update for Business reports data in Log Analytics." lightbox="media/wufb-reports-query-table.png":::

## Limitations

Windows Update for Business reports is a Windows service hosted in Azure that uses Windows diagnostic data. You should be aware that Windows Update for Business reports doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home). Windows Update for Business reports is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers.


## How Windows Update for Business reports works

You'll set up Windows Update for Business reports by enrolling into the service from the Azure portal. Then you'll configure your Microsoft Entra joined devices to send Windows client diagnostic data to the service. Windows Update for Business reports uses [Log Analytics in Azure Monitor](/azure/azure-monitor/logs/log-analytics-overview) to store the diagnostic data the clients send. You can use this data for reporting on updates for your devices. Windows Update for Business reports collects system data such as:

- Update deployment progress
- Delivery Optimization usage data
- Windows Update for Business configuration data

The Azure Log Analytics ingestion and retention charges aren't incurred on your Azure subscription for Windows Update for Business reports data. You also choose an [Azure Log Analytics workspaces](/azure/azure-monitor/logs/log-analytics-overview) that you own for your client diagnostic data. The collected diagnostic data populates the Windows Update for Business reports tables so you can easily query your data.

## Use your Windows Update for Business reports data

Since the data from your clients is stored in a Log Analytics workspace, you can go beyond the standard reports to analyze and display your data in multiple ways. Some of the ways you could display your data include:

- Using the data in [custom workbooks](/azure/azure-monitor/visualize/workbooks-overview) that you create
- Building [custom Kusto (KQL) queries](/azure/azure-monitor/logs/log-query-overview)
- Developing your own custom views by integrating the [Log Analytics data](/azure/azure-monitor/visualize/tutorial-logs-dashboards) into other tools such as:
   - [Operations Management Suite](/azure/azure-monitor/agents/om-agents)
   - [Power BI](/azure/azure-monitor/logs/log-powerbi)
   - Other tools for [querying the data](/azure/azure-monitor/logs/log-query-overview)



## Next steps

- Review the [Windows Update for Business reports prerequisites](wufb-reports-prerequisites.md)
