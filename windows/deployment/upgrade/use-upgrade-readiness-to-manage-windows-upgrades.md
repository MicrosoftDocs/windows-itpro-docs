---
title: Use Upgrade Readiness to manage Windows upgrades (Windows 10)
ms.reviewer: 
manager: laurawi
description: Describes how to use Upgrade Readiness to manage Windows upgrades.
keywords: windows analytics, oms, operations management suite, prerequisites, requirements, upgrades, log analytics, 
ms.localizationpriority: medium
ms.prod: w10
author: lomayor
ms.author: lomayor
ms.topic: article
---

# Use Upgrade Readiness to manage Windows upgrades

>[!IMPORTANT]
>>**The OMS portal has been deprecated, so you need to switch to the [Azure portal](https://portal.azure.com) now.** The two portals offer the same experience, with some key differences. Learn how to use [Windows Analytics in the Azure Portal](../update/windows-analytics-azure-portal.md). Find out more about the [OMS portal moving to Azure](https://docs.microsoft.com/azure/log-analytics/log-analytics-oms-portal-transition), or jump right in and [Get started with Upgrade Readiness](https://docs.microsoft.com/windows/deployment/upgrade/upgrade-readiness-get-started).

You can use Upgrade Readiness to prioritize and work through application and driver issues, assign and track issue resolution status, and identify computers that are ready to upgrade. Upgrade Readiness enables you to deploy Windows with confidence, knowing that you’ve addressed potential blocking issues.

- Based on diagnostic data from user computers, Upgrade Readiness identifies application and driver compatibility issues that may block Windows upgrades, allowing you to make data-driven decisions about your organization’s upgrade readiness.
- Information is refreshed daily so you can monitor upgrade progress. Any changes your team makes, such as assigning application importance and marking applications as ready to upgrade, are reflected 24 hours after you make them.

When you are ready to begin the upgrade process, a workflow is provided to guide you through critical high-level tasks. 

<A HREF="../images/ua-cg-15.png">![Series of blades showing Upgrade Overview, Step 1: Identify Important Apps, Prioritize Applications, Step 2: Resolve issues, and Review applications with known issues](../images/ua-cg-15.png)</A>

Each step in the workflow is enumerated using blue tiles. Helpful data is provided on white tiles to help you get started, to monitor your progress, and to complete each step.

>**Important**: You can use the [Target version](#target-version) setting to evaluate computers that are running a specified version of Windows before starting the Upgrade Readiness workflow. By default, the Target version is configured to the released version of Windows 10 for the Current Branch for Business (CBB).

The following information and workflow is provided:

- [Upgrade overview](upgrade-readiness-upgrade-overview.md): Review compatibility and usage information about computers, applications, and drivers.
- [Step 1: Identify important apps](upgrade-readiness-identify-apps.md): Assign importance levels to prioritize your applications.
- [Step 2: Resolve issues](upgrade-readiness-resolve-issues.md): Identify and resolve problems with applications.
- [Step 3: Deploy](upgrade-readiness-deploy-windows.md): Start the upgrade process.

Also see the following topic for information about additional items that can be affected by the upgrade process: 

- [Additional insights](upgrade-readiness-additional-insights.md): Find out which MS Office add-ins are installed, and review web site activity.

## Target version

The target version setting is used to evaluate the number of computers that are already running the default version of Windows 10, or a later version. The target version of Windows 10 is displayed on the upgrade overview tile. See the following example:

![Upgrade overview showing target version](../images/ur-target-version.png)

The default target version in Upgrade Readiness is set to the released version of the Current Branch for Business (CBB). CBB can be determined by reviewing [Windows 10 release information](https://technet.microsoft.com/windows/release-info.aspx). The target version setting is used to evaluate the number of computers that are already running this version of Windows, or a later version. 

The number displayed under **Computers upgraded** in the Upgrade Overview blade is the total number of computers that are already running the same or a later version of Windows compared to the target version. It also is used in the evaluation of apps and drivers: Known issues and guidance for the apps and drivers in Upgrade Readiness is based on the target operating system version.

You now have the ability to change the Windows 10 version you wish to target. The available options currently are: Windows 10 version 1507, Windows 10 version 1511, Windows 10 version 1607, Windows 10 version 1703, Windows 10 version 1709 and Windows 10 version 1803.

To change the target version setting, click on **Solutions Settings**, which appears at the top when you open you Upgrade Readiness solution:

![Upgrade Readiness dialog showing gear labeled Solution Settings](../images/ua-cg-08.png)

>You must be signed in to Upgrade Readiness as an administrator to view settings.

On the **Upgrade Readiness Settings** page, choose one of the options in the drop down box and click **Save**. The changes in the target version setting are reflected in evaluations when a new snapshot is uploaded to your workspace.

![Upgrade Readiness Settings dialog showing gear labeled Save and arrow labeled Cancel](../images/ur-settings.png)
