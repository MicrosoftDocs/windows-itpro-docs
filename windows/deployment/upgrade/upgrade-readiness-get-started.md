---
title: Get started with Upgrade Readiness (Windows 10)
ms.reviewer: 
manager: laurawi
description: Explains how to get started with Upgrade Readiness.
keywords: windows analytics, oms, operations management suite, prerequisites, requirements, upgrades, log analytics,
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: lomayor
ms.author: lomayor
ms.localizationpriority: medium
ms.topic: article
ms.collection: M365-analytics
---

# Get started with Upgrade Readiness

>[!IMPORTANT]
>**The OMS portal has been deprecated; you should start using the [Azure portal](https://portal.azure.com) instead as soon as possible.** Many experiences are the same in the two portals, but there are some key differences. See [Windows Analytics in the Azure Portal](../update/windows-analytics-azure-portal.md) for steps to use Windows Analytics in the Azure portal. For much more information about the transition from OMS to Azure, see [OMS portal moving to Azure](https://docs.microsoft.com/azure/log-analytics/log-analytics-oms-portal-transition).

This topic explains how to obtain and configure Upgrade Readiness for your organization.

You can use Upgrade Readiness to plan and manage your upgrade project end-to-end. Upgrade Readiness works by establishing communications between computers in your organization and Microsoft. Upgrade Readiness collects computer, application, and driver data for analysis. This data is used to identify compatibility issues that can block your upgrade and to suggest fixes that are known to Microsoft.

Before you begin, consider reviewing the following helpful information:<BR>
    - [Upgrade Readiness requirements](upgrade-readiness-requirements.md): Provides detailed requirements to use Upgrade Readiness.<BR>
    - [Upgrade Readiness blog](https://aka.ms/blog/WindowsAnalytics): Contains announcements of new features and provides helpful tips for using Upgrade Readiness.

>If you are using System Center Configuration Manager, also check out information about how to integrate Upgrade Readiness with Configuration Manager: [Integrate Upgrade Readiness with System Center Configuration Manager](https://docs.microsoft.com/sccm/core/clients/manage/upgrade/upgrade-analytics).

When you are ready to begin using Upgrade Readiness, perform the following steps:

1. Review [data collection and privacy](#data-collection-and-privacy) information.
2. [Add the Upgrade Readiness solution to your Azure subsctiption](#add-the-upgrade-readiness-solution-to-your-azure-subscription).
3. [Enroll devices in Windows Analytics](#enroll-devices-in-windows-analytics).
4. [Use Upgrade Readiness to manage Windows Upgrades](#use-upgrade-readiness-to-manage-windows-upgrades) once your devices are enrolled.

## Data collection and privacy

To enable system, application, and driver data to be shared with Microsoft, you must configure user computers to send data. For information about what diagnostic data Microsoft collects and how that data is used and protected by Microsoft, see the following topics, refer to [Frequently asked questions and troubleshooting Windows Analytics](https://docs.microsoft.com/windows/deployment/update/windows-analytics-FAQ-troubleshooting), which discusses the issues and provides links to still more detailed information.

## Add the Upgrade Readiness solution to your Azure subscription

Upgrade Readiness is offered as a *solution* which you link to a new or existing [Azure Log Analytics](https://azure.microsoft.com/services/log-analytics/) *workspace* within your Azure *subscription*. To configure this, follows these steps:

1. Sign in to the [Azure Portal](https://portal.azure.com) with your work or school account or a Microsoft account. If you don't already have an Azure subscription you can create one (including free trial options) through the portal.
   
    >[!NOTE]
    > Upgrade Readiness is included at no additional cost with Windows 10 Professional, Education, and Enterprise editions. An Azure subscription is required for managing and using Upgrade Readiness, but no Azure charges are expected to accrue to the subscription as a result of using Upgrade Readiness. 

2. In the Azure portal select **Create a resource**, search for "Upgrade Readiness", and then select **Create** on the **Upgrade Readiness** solution. 
    ![Azure portal page highlighting + Create a resource and with Upgrade Readiness selected](../images/UR-Azureportal1.png)

    ![Azure portal showing Upgrade Readiness fly-in and Create button highlighted(images/CreateSolution-Part2-Create.png)](../images/UR-Azureportal2.png)
3. Choose an existing workspace or create a new workspace to host the Upgrade Readiness solution. 
    ![Azure portal showing Log Analytics workspace fly-in](../images/UR-Azureportal3.png)
    - If you are using other Windows Analytics solutions (Device Health or Update Compliance) you should add Upgrade Readiness to the same workspace.
    - If you are creating a new workspace, and your organization does not have policies governing naming conventions and structure, consider the following workspace settings to get started:
        - Choose a workspace name which reflects the scope of planned usage in your organization, for example *PC-Analytics*.
        - For the resource group setting select **Create new** and use the same name you chose for your new workspace.
        - For the location setting, choose the Azure region where you would prefer the data to be stored.
        - For the pricing tier select **per GB**.
4. Now that you have selected a workspace, you can go back to the Upgrade Readiness blade and select **Create**.
    ![Azure portal showing workspace selected and with Create button highlighted](../images/UR-Azureportal4.png)
5. Watch for a Notification (in the Azure portal) that "Deployment 'Microsoft.CompatibilityAssessmentOMS' to resource group 'YourResourceGroupName' was successful." and then select **Go to resource** This might take several minutes to appear.
       ![Azure portal all services page with Log Analytics found and selected as favorite](../images/CreateSolution-Part5-GoToResource.png)
    - Suggestion: Choose the **Pin to Dashboard** option to make it easy to navigate to your newly added Upgrade Readiness solution.
    - Suggestion: If a "resource unavailable" error occurs when navigating to the solution, try again after one hour.

## Enroll devices in Windows Analytics


Once you've added Upgrade Readiness to a workspace in your Azure subscription, you can start enrolling the devices in your organization. For full instructions, see [Enrolling devices in Windows Analytics](https://docs.microsoft.com/windows/deployment/update/windows-analytics-get-started).



## Use Upgrade Readiness to manage Windows Upgrades

Now that your devices are enrolled, you can move on to [Use Upgrade Readiness to manage Windows Upgrades](https://docs.microsoft.com/windows/deployment/upgrade/use-upgrade-readiness-to-manage-windows-upgrades).
