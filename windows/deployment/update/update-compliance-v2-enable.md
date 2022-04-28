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
date: 05/07/2022
---

# Enable Update Compliance

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

Update Compliance is offered as an Azure Marketplace application that's linked to a new or existing [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace within your Azure subscription.

## Add Update Compliance to your Azure subscription

After verifying you meet the [prerequisites], add Update Compliance to your Azure subscription by following the steps below:

### Select or create a new Log Analytics workspace

1. Sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
   - Although an Azure subscription is required, you won't be charged for ingestion of Update Compliance data.
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. If you already have a Log Analytics workspace, determine which Log Analytics workspace you'd like to use for Update Compliance. Ensure the workspace is in a **Compatible Log Analytics region** from the table listed in the [prerequisites](update-compliance-v2-prerequisites.md#log-analytics-regions).
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Update Compliance.
1. If you don't have an existing Log Analytics workspace or you don't want to use a current workspace, [create a new workspace](/azure/azure-monitor/logs/quick-create-workspace) in a [compatible region](update-compliance-v2-prerequisites.md#log-analytics-regions).

> [!Note]
> The `CommercialID` for the Log Analytics workspace is no longer required when configuring your clients.  
### Add the Update Compliance solution to the workspace

1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/Microsoft.WaaSUpdateInsights?tab=Overview). You might need to sign into your Azure subscription to access this page.
1. Select **Get it now**.
1. Select **Continue** to agree to the [terms of use](https://azure.microsoft.com/[support/legal/) and the [privacy policy](https://privacy.microsoft.com/en-us/privacystatement) to create the app in Azure.
1. Sign into the Azure portal to finish creating the Update Compliance solution.
1. Select the following settings:
   - **Subscription**: The Azure subscription to use.
   - **Resource group**: Select or [create a resource group](/azure/azure-resource-manager/management/manage-resource-groups-portal) for the Update Compliance solution.
   - **Azure Log Analytics Workspace**: The Log Analytics workspace you created or identified for use with Update Compliance.
1. Select **Review + create** to review your settings.
1. Select **Create** to add the solution. You'll receive a notification when the Updates Compliance solution has been successfully created.

> [!Note]
> You can only map one tenant to one Log Analytics workspace. Mapping one tenant to multiple workspaces isn't supported.

## Next steps

Once you've added Update Compliance to a workspace in your Azure subscription, you'll need to configure any devices you want to monitor. Enroll devices into Update Compliance using any of the following methods:

- [Configure clients with a script](update-compliance-configuration-script.md)
- [Configure clients manually](update-compliance-configuration-manual.md)
- [Configure clients with Microsoft Endpoint Manager](update-compliance-configuration-mem.md)
