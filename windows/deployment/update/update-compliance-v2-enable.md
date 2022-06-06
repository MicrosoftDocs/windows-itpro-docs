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
ms.date: 06/06/2022
---

# Enable Update Compliance
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

After verifying the [prerequisites](update-compliance-v2-prerequisites.md) are met, you can start to set up Update Compliance. The two main steps for setting up the Update Compliance solution are:

1. [Add Update Compliance](#bkmk_add) to your Azure subscription. This step has the following two phases:
   1. [Select or create a new Log Analytics workspace](#bkmk_workspace) for use with Update Compliance.
   1. [Add the Update Compliance solution](#bkmk_solution) to the Log Analytics workspace.
1. Configure the clients to send data to Update compliance. You can configure clients in the following three ways:
    - Use a [script](update-compliance-v2-configuration-script.md)
    - Use [Microsoft Endpoint Manager](update-compliance-v2-configuration-mem.md)
    - Configure [manually](update-compliance-v2-configuration-manual.md)

## <a name="bkmk_add"></a> Add Update Compliance to your Azure subscription

Before you configure clients to send data, you'll need to add the Update Compliance solution to your Azure subscription so the data can be received. First, you'll select or create a new Log Analytics workspace to use. Second, you'll add the Update Compliance solution to the workspace.

### <a name="bkmk_workspace"></a> Select or create a new Log Analytics workspace for Update Compliance

Update Compliance uses an [Azure Log Analytics workspaces](/azure/azure-monitor/logs/log-analytics-overview) that you own for storing the client diagnostic data. Identify an existing workspace or create a new one using the following steps:

1. Sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
   - Although an Azure subscription is required, you won't be charged for ingestion of Update Compliance data.
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. If you already have a Log Analytics workspace, determine which Log Analytics workspace you'd like to use for Update Compliance. Ensure the workspace is in a **Compatible Log Analytics region** from the table listed in the [prerequisites](update-compliance-v2-prerequisites.md#log-analytics-regions).
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Update Compliance.
1. If you don't have an existing Log Analytics workspace or you don't want to use a current workspace, [create a new workspace](/azure/azure-monitor/logs/quick-create-workspace) in a [compatible region](update-compliance-v2-prerequisites.md#log-analytics-regions).



### <a name="bkmk_solution"></a> Add the Update Compliance solution to the Log Analytics workspace

Update Compliance is offered as an Azure Marketplace application that's linked to a new or existing Azure Log Analytics workspace within your Azure subscription. Follow the steps below to add the solution, to the workspace:

1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/Microsoft.WaaSUpdateInsights?tab=Overview). You might need to sign into your Azure subscription to access this page.
1. Select **Get it now**.
1. Select **Continue** to agree to the [terms of use](https://azure.microsoft.com/[support/legal/) and the [privacy policy](https://privacy.microsoft.com/en-us/privacystatement) to create the app in Azure.
1. Sign into the [Azure portal](https://portal.azure.com) to finish creating the Update Compliance solution.
1. Select the following settings:
   - **Subscription**: The Azure subscription to use.
   - **Resource group**: Select or [create a resource group](/azure/azure-resource-manager/management/manage-resource-groups-portal) for the Update Compliance solution.
   - **Azure Log Analytics Workspace**: The Log Analytics workspace you created or identified for use with Update Compliance.
1. Select **Review + create** to review your settings.
1. Select **Create** to add the solution. You'll receive a notification when the Updates Compliance solution has been successfully created.

> [!Note]
> - You can only map one tenant to one Log Analytics workspace. Mapping one tenant to multiple workspaces isn't supported.
> - If you change the Log Analytics workspace for Update Compliance, stale data will be displayed for about 24 hours until the new workspace is fully onboarded.

### <a name="bkmk_id"></a> Get the Commercial ID for the Update Compliance solution

The **Commercial ID** directs your clients to the Update Compliance solution in your Log Analytics workspace. You'll need this ID when you configure clients to send data to Update Compliance.

1. If needed, sign into the [Azure portal](https://portal.azure.com).
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. Select the Log Analytics workspace that you added the Update Compliance solution to.
1. Select **Solutions** from the Log Analytics workspace, then select **WaaSUpdateInsights(&lt;Log Analytics workspace name>)** to go to the summary page for the solution. 
1. Select **Update Compliance Settings** from the **WaaSUpdateInsights(&lt;Log Analytics workspace name>)** summary page.
1. The **Commercial Id Key** is listed in the text box with an option to copy the ID. The **Commercial Id Key** is commonly referred to as the `CommercialID` or **Commercial ID** in Update Compliance.

   > [!Warning]
   > Regenerate a Commercial ID only if your original ID can no longer be used. Regenerating a Commercial ID requires you to deploy the new commercial ID to your computers in order to continue to collect data and can result in data loss.


## Next steps

Once you've added Update Compliance to a workspace in your Azure subscription, you'll need to configure any devices you want to monitor. Enroll devices into Update Compliance using any of the following methods:

- [Configure clients with a script](update-compliance-v2-configuration-script.md)
- [Configure clients manually](update-compliance-v2-configuration-manual.md)
- [Configure clients with Microsoft Endpoint Manager](update-compliance-v2-configuration-mem.md)
