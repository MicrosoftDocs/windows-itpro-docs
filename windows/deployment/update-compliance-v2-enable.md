---
title: Enable the Update Compliance solution
ms.reviewer: 
manager: dougeby
description: How to enable the Update Compliance through the Azure portal
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
---

# Enable Update Compliance

Update Compliance is offered as an Azure Marketplace application that's is linked to a new or existing [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace within your Azure subscription. Note that, for the following steps, you must have either an Owner or Contributor [Azure role](/azure/role-based-access-control/rbac-and-directory-admin-roles#azure-roles) as a minimum in order to add the solution.

## Add Update Compliance to your Azure subscription

To add Update Compliance to your Azure subscription, follow these steps:

### Select or create a new Log Analytics workspace

1. Sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. If you already have a Log Analytics workspace, determine which Log Analytics workspace you'd like to use for Update Compliance. Ensure the workspace is in a **Compatible Log Analytics region** from the table listed in the [prerequisites](update-compliance-v2-prerequisites.md#log-analytics-regions).
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Update Compliance.
1. If you don't have an existing Log Analytics workspace or you don't want to use a current workspaces, [create a new workspace](/azure/azure-monitor/logs/quick-create-workspace) in a [compatible region](update-compliance-v2-prerequisites.md#log-analytics-regions).

### 
1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/Microsoft.WaaSUpdateInsights?tab=Overview). You might need to sign into your Azure subscription to access this.
1. Select **Get it now**. 
1. 
<!--
1. Choose an existing or configure a new Log Analytics Workspace, ensuring it is in a **Compatible Log Analytics region** from the table listed in the [prerequisites](update-compliance-v2-prerequisites.md#log-analytics-regions). Although an Azure subscription is required, you won't be charged for ingestion of Update Compliance data.
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Update Compliance.
1. After your workspace is configured and selected, select **Create**. You'll receive a notification when the solution has been successfully created.  -->

> [!Note]
> The `CommercialID` for the Log Analytics workspace is no longer required when configuring your clients.  


## Next steps

Once you've added Update Compliance to a workspace in your Azure subscription, you'll need to configure any devices you want to monitor. Enroll devices into Update Compliance using any of the following methods:

- [Configure clients with a script](update-compliance-configuration-script.md)
- [Configure clients manually](update-compliance-configuration-manual.md)
- [Configure clients with Microsoft Endpoint Manager](update-compliance-configuration-mem.md)
