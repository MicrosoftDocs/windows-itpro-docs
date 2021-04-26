---
title: Get started with Update Compliance
ms.reviewer: 
manager: laurawi
description: Prerequisites, Azure onboarding, and configuring devices for Update Compliance 
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Get started with Update Compliance

This topic introduces the high-level steps required to enroll to the Update Compliance solution and configure devices to send data to it. The following steps cover the enrollment and device configuration workflow.

1. Ensure you can [meet the requirements](#update-compliance-prerequisites) to use Update Compliance.
2. [Add Update Compliance](#add-update-compliance-to-your-azure-subscription) to your Azure subscription.
3. [Configure devices](#enroll-devices-in-update-compliance)  to send data to Update Compliance.

After adding the solution to Azure and configuring devices, there will be a waiting period of up to 72 hours before you can begin to see devices in the solution. Before or as devices appear, you can learn how to [Use Update Compliance](update-compliance-using.md) to monitor Windows Updates and Delivery Optimization.

## Update Compliance prerequisites

Before you begin the process to add Update Compliance to your Azure subscription, first ensure you can meet the prerequisites:

1. **Compatible Operating Systems and Editions**: Update Compliance works only with Windows 10 Professional, Education, and Enterprise editions. Update Compliance supports both the typical Windows 10 Enterprise edition, as well as [Windows 10 Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq). Update Compliance only provides data for the standard Desktop Windows 10 version and is not currently compatible with Windows Server, Surface Hub, IoT, etc.
2. **Compatible Windows 10 Servicing Channels**: Update Compliance supports Windows 10 devices on the Semi-Annual Channel (SAC) and the Long-term Servicing Channel (LTSC). Update Compliance *counts* Windows Insider Preview (WIP) devices, but does not currently provide detailed deployment insights for them.
3. **Diagnostic data requirements**: Update Compliance requires devices be configured to send diagnostic data at *Required* level (previously *Basic*). To learn more about what's included in different diagnostic levels, see [Diagnostics, feedback, and privacy in Windows 10](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy).
4. **Data transmission requirements**: Devices must be able to contact specific endpoints required to authenticate and send diagnostic data. These are enumerated in detail at [Configuring Devices for Update Compliance manually](update-compliance-configuration-manual.md).
5. **Showing Device Names in Update Compliance**: For Windows 10 1803+, device names will not appear in Update Compliance unless you individually opt-in devices via policy. The steps to accomplish this is outlined in [Configuring Devices for Update Compliance](update-compliance-configuration-manual.md).

## Add Update Compliance to your Azure subscription

Update Compliance is offered as an Azure Marketplace application which is linked to a new or existing [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace within your Azure subscription. To configure this, follow these steps:

1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/Microsoft.WaaSUpdateInsights?tab=Overview). You may need to login to your Azure subscription to access this.
2. Select **Get it now**.
3. Choose an existing or configure a new Log Analytics Workspace, ensuring it is in a **Compatible Log Analytics region** from the following table. Although an Azure subscription is required, you won't be charged for ingestion of Update Compliance data.
   - [Desktop Analytics](/sccm/desktop-analytics/overview) users should use the same workspace for Update Compliance.
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Update Compliance.
4. After your workspace is configured and selected, select **Create**. You'll receive a notification when the solution has been successfully created.

|Compatible Log Analytics regions |
| ------------------------------- |
|Australia Central |
|Australia East |
|Australia Southeast |
|Brazil South |
|Canada Central |
|Central India |
|Central US |
|East Asia |
|East US |
|East US 2 |
|Eastus2euap(canary) |
|France Central |
|Japan East |
|Korea Central |
|North Central US |
|North Europe |
|South Africa North |
|South Central US |
|Southeast Asia |
|Switzerland North |
|Switzerland West |
|UK West |
|UK south |
|West Central US |
|West Europe |
|West US |
|West US 2 |

> [!NOTE]
> It is not currently supported to programmatically enroll to Update Compliance via the [Azure CLI](/cli/azure) or otherwise. You must manually add Update Compliance to your Azure subscription.

### Get your CommercialID

A CommercialID is a globally-unique identifier assigned to a specific Log Analytics workspace. The CommercialID is copied to an MDM or Group Policy and is used to identify devices in your environment.

To find your CommercialID within Azure:

1. Navigate to the **Solutions** tab for your workspace, and then select the **WaaSUpdateInsights** solution.
2. From there, select the Update Compliance Settings page on the navbar.
3. Your CommercialID is available in the settings page.

> [!IMPORTANT]
> Regenerate your CommercialID only if your original ID can no longer be used or if you want to completely reset your workspace. Regenerating your CommercialID cannot be undone and will result in you losing data for all devices that have the current CommercialID until the new CommercialID is deployed to devices.

## Enroll devices in Update Compliance

Once you've added Update Compliance to a workspace in your Azure subscription, you'll need to configure any devices you want to monitor. There are two ways to configure devices to use Update Compliance. After you configure devices, it can take up to 72 hours before devices are visible in the solution. Until then, Update Compliance will indicate it is still assessing devices.

> [!NOTE]
> If you use or plan to use [Desktop Analytics](/mem/configmgr/desktop-analytics/overview), follow the steps in [Enroll devices in Desktop Analytics](/mem/configmgr/desktop-analytics/enroll-devices) to also enroll devices in Update Compliance. You should be aware that the Commercial ID and Log Analytics workspace must be the same for both Desktop Analytics and Update Compliance.

### Configure devices using the Update Compliance Configuration Script

The recommended way to configure devices to send data to Update Compliance is using the [Update Compliance Configuration Script](update-compliance-configuration-script.md). The script configures required policies via Group Policy. The script comes with two versions:

- Pilot is more verbose and is intended to be use on an initial set of devices and for troubleshooting.
- Deployment is intended to be deployed across the entire device population you want to monitor with Update Compliance.  

To download the script and learn what you need to configure and how to troubleshoot errors, see [Configuring Devices using the Update Compliance Configuration Script](update-compliance-configuration-script.md).

### Configure devices manually

It is possible to manually configure devices to send data to Update Compliance, but the recommended method of configuration is to use the [Update Compliance Configuration Script](update-compliance-configuration-script.md). To learn more about configuring devices manually, see [Manually Configuring Devices for Update Compliance](update-compliance-configuration-manual.md).
