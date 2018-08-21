---
title: Windows Analytics in the Azure Portal
description: Use the Azure Portal to add and configure Windows Analytics solutions 
keywords: Device Health, oms, Azure, portal, operations management suite, add, manage, configure, Upgrade Readiness, Update Compliance
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.date: 08/21/2018
ms.pagetype: deploy
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
---

# Windows Analytics in the Azure portal

Windows Analytics uses Azure Log Analytics (formerly known as Operations Management Suite or OMS), a collection of cloud-based servicing for monitoring and automating your on-premises and cloud environments.

**The OMS portal has been deprecated; you should start using the [Azure portal](https://portal.azure.com) instead as soon as possible.** Many experiences are the same in the two portals, but there are some key differences, which this topic will explain. For much more information about the transition from OMS to Azure, see [OMS portal moving to Azure](https://docs.microsoft.com/azure/log-analytics/log-analytics-oms-portal-transition).

## Navigation and permissions in the Azure portal

Go to the [Azure portal](https://portal.azure.com), select **All services**, and search for *Log Analytics*. Once it appears, you can select the star to add it to your favorites for easy access in the future.

[![Azure portal all services page with Log Analytics found and selected as favorite](images/azure-portal-LAfav1.png)](images/azure-portal-LAfav1.png)

### Permissions

>[!IMPORTANT]
>Unlike the OMS portal, the Azure portal requires access to both an Azure Log Analytics subscription and a linked Azure subscription.

To check the Log Analytics workspaces you can access, select **Log Analytics**. You should see a grid control listing all workspaces, along with the Azure subscription each is linked to:

[![Log Analytics workspace page showing accessible workspaces and linked Azure subscriptions](images/azure-portal-LAmain-wkspc-subname-sterile.png)](images/azure-portal-LAmain-wkspc-subname-sterile.png)

If you do not see your workspace in this view, you do not have access to the underlying Azure subscription. To view and assign permissions for a workspace, select its name and then, in the flyout that opens, select **Access control (IAM)**. You can view and assign permissions for a subscription similarly by selecting the subscription name and selecting **Access control (IAM)**.

Both the workspace and Azure subscription require at least "read" permissions. To make changes (for example, to set app importantance in Upgrade Readiness), both the subscription and workspace require "contributor" permissions. You can view your current role and make changes in other roles by using the **Access control (IAM)** tab in Azure.

When permissions are configured, you can select the workspace and then select **Workspace summary** to see information similar to what was shown in the OMS overview page.

[![Log Analytics workspace page showing workspace summary](images/azure-portal-create-resource-boxes.png)](images/azure-portal-create-resource-boxes.png)

## Adding Windows Analytics solutions

In the Azure portal, the simplest way to add Windows Analytics solutions (Upgrade Readiness, Update Compliance, and Device Health) is to select **+ Create a resource** and then type the solution name in the search box. In this example, the search is for "Device Health":

[![Add WA solutions with "create a resource"](images/azure-portal-LA-wkspcsumm_sterile.png)](images/azure-portal-LA-wkspcsumm_sterile.png)

Select the solution from the list that is returned by the search, and then select **Create** to add the solution.

## Navigating to Windows Analytics solutions settings

To adjust settings for a Windows Analytics solution, first navigate to the **Solutions** tab for your workspace, and then select the solution to configure. In this example, Upgrade Readiness is being adjusted by selecting **CompatibilityAssessment**:

[![Select WA solution to adjust settings](images/temp-azure-portal-soltn-setting.png)](images/temp-azure-portal-soltn-setting.png)

From there, select the settings page to adjust specific settings:

[![Settings page for Upgrade Readiness in Azure portsl](images/azure-portal-UR-settings.png)](images/azure-portal-UR-settings.png)

>[!NOTE]
>To adjust these settings, both the subscription and workspace require "contributor" permissions. You can view your current role and make changes in other roles by using the **Access control (IAM)** tab in Azure.