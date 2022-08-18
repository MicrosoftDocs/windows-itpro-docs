---
title: Update Compliance overview
ms.reviewer: 
manager: dougeby
description: Overview of Update Compliance to explain what it's used for and the cloud services it relies on. 
ms.prod: w10
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 08/09/2022
---

# Update Compliance overview
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> - As of August 17, 2022, a new step needs to be taken to ensure access to the preview version of Update Compliance and the `CommercialID` is no longer required. For more information, see [Configure Update Compliance settings through the Microsoft 365 admin center](update-compliance-v2-enable.md#bkmk_admin-center).
> - This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

Update Compliance is a cloud-based solution that provides information about the compliance of your Azure Active Directory-joined devices with Windows updates. Update Compliance is offered through the [Azure portal](https://portal.azure.com), and it's included as part of the Windows 10 or Windows 11 prerequisite licenses. Update Compliance helps you:

- Monitor security, quality, and feature updates for Windows 11 and Windows 10 devices
- Report on devices with update compliance issues
- Analyze and display your data in multiple ways


## Preview information for Update Compliance

The new version of Update Compliance is in preview. Some of the benefits of this new version include:

- Integration with [Windows Update for Business deployment service](deployment-service-overview.md) to enable per deployment reporting, monitoring, and troubleshooting.
- Compatibility with [Feature updates](/mem/intune/protect/windows-10-feature-updates) and [Expedite Windows quality updates](/mem/intune/protect/windows-10-expedite-updates) policies in Intune.
- A new **Alerts** data type to assist you with identifying devices that encounter issues during the update process. Error code information is provided to help troubleshoot update issues.

Currently, the preview contains the following features:

- [Update Compliance workbook](update-compliance-v2-workbook.md)
- Update Compliance status [charts in the Microsoft 365 admin](update-status-admin-center.md)
- Access to the following new [Update Compliance tables](update-compliance-v2-schema.md):
    - UCClient
    - UCClientReadinessStatus
    - UCClientUpdateStatus
    - UCDeviceAlert
    - UCServiceUpdateStatus
    - UCUpdateAlert
- Client data collection to populate the new Update Compliance tables

Currently, these new tables are available to all Updates Compliance users. They will be displayed along with the original Updates Compliance tables.

:::image type="content" source="media/update-compliance-v2-query-table.png" alt-text="Screenshot of using a custom Kusto (KQL) query on Update Compliance data in Log Analytics." lightbox="media/update-compliance-v2-query-table.png":::

## Limitations

Update Compliance is a Windows service hosted in Azure that uses Windows diagnostic data. You should be aware that Update Compliance doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home). Update Compliance is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers.


## How Update Compliance works

You'll set up Update Compliance by enrolling into the solution from the Azure portal. Then you'll configure your Azure AD-joined devices to send Windows client diagnostic data to the solution. Update Compliance uses [Log Analytics in Azure Monitor](/azure/azure-monitor/logs/log-analytics-overview) to store the diagnostic data the clients send. You can use this data for reporting on updates for your devices. Update Compliance collects system data such as:

- Update deployment progress
- Delivery Optimization usage data
- Windows Update for Business configuration data

The Azure Log Analytics ingestion and retention charges aren't incurred on your Azure subscription for Update Compliance data. You also choose an [Azure Log Analytics workspaces](/azure/azure-monitor/logs/log-analytics-overview) that you own for your client diagnostic data. The collected diagnostic data populates the Update Compliance tables so you can easily query your data.

## Use your Update Compliance data

Since the data from your clients is stored in a Log Analytics workspace, you can go beyond the standard reports to analyze and display your data in multiple ways. Some of the ways you could display your data include:

- Using the data in [custom workbooks](/azure/azure-monitor/visualize/workbooks-overview) that you create
- Building [custom Kusto (KQL) queries](/azure/azure-monitor/logs/log-query-overview)
- Developing your own custom views by integrating the [Log Analytics data](/azure/azure-monitor/visualize/tutorial-logs-dashboards) into other tools such as:
   - [Operations Management Suite](/azure/azure-monitor/agents/om-agents)
   - [Power BI](/azure/azure-monitor/logs/log-powerbi)
   - Other tools for [querying the data](/azure/azure-monitor/logs/log-query-overview)



## Next steps

- Review the [Update Compliance prerequisites](update-compliance-v2-prerequisites.md)
