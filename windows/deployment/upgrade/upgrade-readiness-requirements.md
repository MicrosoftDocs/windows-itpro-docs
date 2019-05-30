---
title: Upgrade Readiness requirements (Windows 10)
ms.reviewer: 
manager: dansimp
description: Provides requirements for Upgrade Readiness.
keywords: windows analytics, oms, operations management suite, prerequisites, requirements, upgrades, log analytics,
ms.prod: w10
author: lomayor
ms.author: lomayor
ms.localizationpriority: medium
ms.topic: article
ms.collection: M365-analytics
---

# Upgrade Readiness requirements

This article introduces concepts and steps needed to get up and running with Upgrade Readiness. We recommend that you review this list of requirements before getting started as you may need to collect information, such as account credentials, and get approval from internal IT groups, such as your network security group, before you can start using Upgrade Readiness.

## Supported upgrade paths

### Windows 7 and Windows 8.1

To perform an in-place upgrade, user computers must be running the latest version of either Windows 7 SP1 or Windows 8.1. After you enable Windows diagnostic data, Upgrade Readiness performs a full inventory of computers so that you can see which version of Windows is installed on each computer.

The compatibility update that sends diagnostic data from user computers to Microsoft data centers works with Windows 7 SP1 and Windows 8.1 only. Upgrade Readiness cannot evaluate Windows XP or Windows Vista for upgrade eligibility.

<!--With Windows 10, edition 1607, the compatibility update is installed automatically.-->

If you need to update user computers to Windows 7 SP1 or Windows 8.1, use Windows Update or download and deploy the applicable package from the Microsoft Download Center.

> [!NOTE] 
> Upgrade Readiness is designed to best support in-place upgrades. In-place upgrades do not support migrations from BIOS to UEFI or from 32-bit to 64-bit architecture. If you need to migrate computers in these scenarios, use the wipe-and-reload method. Upgrade Readiness insights are still valuable in this scenario, however, you can ignore in-place upgrade specific guidance.

See [Windows 10 Specifications](https://www.microsoft.com/en-US/windows/windows-10-specifications) for additional information about computer system requirements.

### Windows 10

Keeping Windows 10 up to date involves deploying a feature update, and Upgrade Readiness tools help you prepare and plan for these Windows updates.
The latest cumulative updates must be installed on Windows 10 computers to make sure that the required compatibility updates are installed. You can find the latest cumulative update on the [Microsoft Update Catalog](https://catalog.update.microsoft.com).

While Upgrade Readiness can be used to assist with updating devices from Windows 10 Long-Term Servicing Channel (LTSC) to Windows 10 Semi-Annual Channel, Upgrade Readiness does not support updates to Windows 10 LTSC. The Long-Term Servicing Channel of Windows 10 is not intended for general deployment, and does not receive feature updates, therefore it is not a supported target with Upgrade Readiness. See [Windows as a service overview](../update/waas-overview.md#long-term-servicing-channel) to understand more about LTSC.

## Operations Management Suite or Azure Log Analytics

Upgrade Readiness is offered as a solution in Azure Portal and Azure Log Analytics, a collection of cloud-based services for managing on premises and cloud computing environments. For more information about Azure Portal, see [Windows Analytics in the Azure Portal](../update/windows-analytics-azure-portal.md) or the Azure [Log Analytics overview](https://azure.microsoft.com/services/log-analytics/).

If you’re already using Azure Portal or Azure Log Analytics, you’ll find Upgrade Readiness in the Solutions Gallery. Click the **Upgrade Readiness** tile in the gallery and then click **Add** on the solution’s details page. Upgrade Readiness is now visible in your workspace.

If you are not using Azure Portal or Azure Log Analytics, go to [Log Analytics](https://azure.microsoft.com/services/log-analytics/) on Microsoft.com and select **Start free** to start the setup process. During the process, you’ll create a workspace and add the Upgrade Readiness solution to it.

>[!IMPORTANT]
>You can use either a Microsoft Account or a Work or School account to create a workspace. If your company is already using Azure Active Directory, use a Work or School account when you sign in to Azure Portal. Using a Work or School account allows you to use identities from your Azure AD to manage permissions in Azure Portal. You also need an Azure subscription to link to your Azure Portal workspace. The account you used to create the workspace must have administrator permissions on the Azure subscription in order to link the workspace to the Azure account. Once the link has been established, you can revoke the administrator permissions.

## System Center Configuration Manager integration

Upgrade Readiness can be integrated with your installation of Configuration Manager. For more information, see [Integrate Upgrade Readiness with System Center Configuration Manager](https://docs.microsoft.com/sccm/core/clients/manage/upgrade/upgrade-analytics).



## Important information about this release

Before you get started configuring Upgrade Anatlyics, review the following tips and limitations about this release.

**Upgrade Readiness does not support on-premises Windows deployments.** Upgrade Readiness is built as a cloud service, which allows Upgrade Readiness to provide you with insights based on the data from user computers and other Microsoft compatibility services. Cloud services are easy to get up and running and are cost-effective because there is no requirement to physically implement and maintain services on-premises.

**In-region data storage requirements.** Windows diagnostic data from user computers is encrypted, sent to, and processed at Microsoft-managed secure data centers located in the US. Our analysis of the upgrade readiness-related data is then provided to you through the Upgrade Readiness solution in Azure Portal. Upgrade Readiness is supported in all Azure regions; however, selecting an international Azure region does not prevent diagnostic data from being sent to and processed in Microsoft's secure data centers in the US.

### Tips

- When viewing inventory items in table view, the maximum number of rows that can be viewed and exported is limited to 5,000. If you need to view or export more than 5,000 items, reduce the scope of the query so you can export a list with fewer items.

- Sorting data by clicking a column heading may not sort your complete list of items. For information about how to sort data in Azure Portal, see [Sorting DocumentDB data using Order By](https://azure.microsoft.com/documentation/articles/documentdb-orderby).

## Get started

See [Get started with Upgrade Readiness](upgrade-readiness-get-started.md) for detailed, step-by-step instructions for configuring Upgrade Readiness and getting started on your Windows upgrade project.
