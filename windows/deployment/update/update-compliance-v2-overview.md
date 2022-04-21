---
title: Update Compliance overview
ms.reviewer: 
manager: dougeby
description: Overview of Update Compliance to explain what it's used for and the cloud services it relies on. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
---

# Update Compliance overview
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

Update Compliance is a cloud-based solution that provides information about the compliance of your Azure Active Directory joined devices with Windows updates. Update Compliance is offered through the [Azure portal](https://portal.azure.com), and it's included as part of the Windows 10 or Windows 11 prerequisite licenses. Update Compliance helps you:

- Monitor security, quality, and feature updates for Windows 11 and Windows 10 devices
- Report on devices with update compliance issues
- Review [Delivery Optimization](../do/waas-delivery-optimization.md) bandwidth savings across multiple content types

:::image type="content" source="media/37063317-update-compliance-overview.png" alt-text="Screenshot showing Update Compliance dashboard in the Azure portal"  lightbox="media/37063317-update-compliance-overview.png":::

## How Update Compliance works

You'll set up Update Compliance by enrolling into the solution from the Azure portal. You'll then configure your Azure AD joined devices to send Windows client diagnostic data to the solution. Update Compliance uses the diagnostic data the clients send for all of its reporting. It collects system data such as:

- Update deployment progress
- Delivery Optimization usage data
- Windows Update for Business configuration data

Update Compliance sends this client diagnostic data to an [Azure Log Analytics workspace](/azure/azure-monitor/logs/log-analytics-overview) that you own. It sorts and analyzes the data then presents it to you using rich visual reports within the Azure portal. The Azure Log Analytics ingestion and retention charges aren't incurred on your Azure subscription for Update Compliance data.

## Use your Update Compliance data

Since the data from your clients is stored in a Log Analytics workspace, you can go beyond the standard reports to analyze and display your data in multiple ways. Some of the ways you could display your data include:

- Using the built-in or [custom workbooks](/azure/azure-monitor/visualize/workbooks-overview)
   :::image type="content" source="media/37063317-update-compliance-workbooks.png" alt-text="Screenshot showing a a list of the built-in workbooks that come with the Update Compliance solution."  lightbox="media/37063317-update-compliance-workbooks.png":::
- Using the built-in Kusto (KQL) queries or [custom queries](/azure/azure-monitor/logs/log-query-overview)
   :::image type="content" source="media/37063317-update-compliance-kusto-query.png" alt-text="Screenshot showing a built-in Kusto query being run against the Update Compliance data."  lightbox="media/37063317-update-compliance-kusto-query.png":::
- Developing your own custom views by integrating the [Log Analytics data](/azure/azure-monitor/visualize/tutorial-logs-dashboards) into other tools such as:
   - [Operations Management Suite](/azure/azure-monitor/agents/om-agents)
   - [Power BI](/azure/azure-monitor/logs/log-powerbi)
   - Other tools for [querying the data](/azure/azure-monitor/logs/log-query-overview)

## Next steps

- Review the [Update Compliance prerequisites](update-compliance-v2-prerequisites.md)

