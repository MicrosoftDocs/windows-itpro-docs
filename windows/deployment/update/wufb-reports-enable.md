---
title: Enable Windows Update for Business reports
ms.reviewer: 
manager: dougeby
description: How to enable Windows Update for Business reports through the Azure portal
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 06/06/2022
ms.technology: itpro-updates
---

# Enable Windows Update for Business reports
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> As of August 17, 2022, a new step needs to be taken to ensure access to Windows Update for Business reports and the `CommercialID` is no longer required. For more information, see [Configure Windows Update for Business reports settings](#bkmk_admin-center).

After verifying the [prerequisites](wufb-reports-prerequisites.md) are met, you can start to set up Windows Update for Business reports. The two main steps for setting up  Windows Update for Business reports are:

1. [Add Windows Update for Business reports](#bkmk_add) to your Azure subscription. This step has the following two phases:
   1. [Select or create a new Log Analytics workspace](#bkmk_workspace) for use with Windows Update for Business reports.
   1. [Add the Update Compliance solution](#bkmk_solution) to the Log Analytics workspace.
   1. [Configure Windows Update for Business reports](#bkmk_admin-center) from the Microsoft 365 admin center.

1. Configure the clients to send data to Windows Update for Business reports. You can configure clients in the following three ways:
    - Use a [script](wufb-reports-configuration-script.md)
    - Use [Microsoft Intune](wufb-reports-configuration-intune.md)
    - Configure [manually](wufb-reports-configuration-manual.md)

> [!IMPORTANT]
> Windows Update for Business reports is a Windows service hosted in Azure that uses Windows diagnostic data. You should be aware that Windows Update for Business reports doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home). Windows Update for Business reports is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers.
## <a name="bkmk_add"></a> Add Windows Update for Business reports to your Azure subscription

Before you configure clients to send data, you'll need to add Windows Update for Business reports to your Azure subscription so the data can be received. First, you'll select or create a new Log Analytics workspace to use. Second, you'll add the Update Compliance solution to the workspace.

### <a name="bkmk_workspace"></a> Select or create a new Log Analytics workspace for Windows Update for Business reports

Windows Update for Business reports uses an [Azure Log Analytics workspaces](/azure/azure-monitor/logs/log-analytics-overview) that you own for storing the client diagnostic data. Identify an existing workspace or create a new one using the following steps:

1. Sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com).
   - Although an Azure subscription is required, you won't be charged for ingestion of Windows Update for Business reports data.
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. If you already have a Log Analytics workspace, determine which Log Analytics workspace you'd like to use for Windows Update for Business reports. Ensure the workspace is in a **Compatible Log Analytics region** from the table listed in the [prerequisites](wufb-reports-prerequisites.md#log-analytics-regions).
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Windows Update for Business reports.
1. If you don't have an existing Log Analytics workspace or you don't want to use a current workspace, [create a new workspace](/azure/azure-monitor/logs/quick-create-workspace) in a [compatible region](wufb-reports-prerequisites.md#log-analytics-regions).



### <a name="bkmk_solution"></a> Add the Update Compliance solution to the Log Analytics workspace

Update Compliance is offered as an Azure Marketplace application that's linked to a new or existing Azure Log Analytics workspace within your Azure subscription. Follow the steps below to add the solution, to the workspace:

1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/Microsoft.WaaSUpdateInsights?tab=Overview). You might need to sign into your Azure subscription to access this page.
1. Select **Get it now**.
1. Select **Continue** to agree to the [terms of use](https://azure.microsoft.com/support/legal/) and the [privacy policy](https://privacy.microsoft.com/en-us/privacystatement) to create the app in Azure.
1. Sign into the [Azure portal](https://portal.azure.com) to finish creating the Update Compliance solution.
1. Select the following settings:
   - **Subscription**: The Azure subscription to use.
   - **Resource group**: Select or [create a resource group](/azure/azure-resource-manager/management/manage-resource-groups-portal) for the Update Compliance solution.
   - **Azure Log Analytics Workspace**: The Log Analytics workspace you created or identified for use with Update Compliance.
1. Select **Review + create** to review your settings.
1. Select **Create** to add the solution. You'll receive a notification when the Updates Compliance solution has been successfully created.

> [!Note]
> - You can only map one tenant to one Log Analytics workspace. Mapping one tenant to multiple workspaces isn't supported.
> - If you change the Log Analytics workspace for Windows Update for Business reports, stale data will be displayed for about 24 hours until the new workspace is fully onboarded. You will also need to reconfigure the Windows Update for Business reports settings.

### <a name="bkmk_admin-center"></a> Configure Windows Update for Business reports settings through the Microsoft 365 admin center

Finish enabling Updates Compliance by configuring its settings through the Microsoft 365 admin center. Completing the Windows Update for Business reports configuration through the admin center removes needing to specify [`CommercialID`](update-compliance-get-started.md#get-your-commercialid), which was needed by the earlier version of Updates Compliance. This step is needed even if you enabled earlier previews of Windows Update for Business reports.  

<!--Using include for onboarding Windows Update for Business reports through the Microsoft 365 admin center-->
[!INCLUDE [Onboarding Windows Update for Business reports through the Microsoft 365 admin center](./includes/wufb-reports-onboard-admin-center.md)]


## Next steps

Once you've added Windows Update for Business reports to a workspace in your Azure subscription and configured the settings through the Microsoft 365 admin center, you'll need to configure any devices you want to monitor. Enroll devices into Windows Update for Business reports using any of the following methods:

- [Configure clients with a script](wufb-reports-configuration-script.md)
- [Configure clients manually](wufb-reports-configuration-manual.md)
- [Configure clients with Microsoft Intune](wufb-reports-configuration-intune.md)
