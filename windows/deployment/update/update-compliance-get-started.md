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

> [!IMPORTANT]
> **A new policy is required to use Update Compliance: "AllowUpdateComplianceProcessing"**. If you're already using Update Compliance and have configured your devices prior to May 10, 2021, you must configure devices with this additional policy. You can do this by rerunning the [Update Compliance Configuration Script](update-compliance-configuration-script.md) if you configure your devices through Group Policy, or refer to [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md) for details on manually configuring the new policy for both Group Policy and MDM. 

This topic introduces the high-level steps required to enroll to the Update Compliance solution and configure devices to send data to it. The following steps cover the enrollment and device configuration workflow.

1. Ensure you can [meet the requirements](#update-compliance-prerequisites) to use Update Compliance.
2. [Add Update Compliance](#add-update-compliance-to-your-azure-subscription) to your Azure subscription.
3. [Configure devices](#enroll-devices-in-update-compliance)  to send data to Update Compliance.

After adding the solution to Azure and configuring devices, it can take some time before all devices appear, this is discussed in more detail in the [enrollment section](#enroll-devices-in-update-compliance). Before or as devices appear, you can learn how to [Use Update Compliance](update-compliance-using.md) to monitor Windows Updates and Delivery Optimization.

## Update Compliance prerequisites

> [!IMPORTANT]
> Update Compliance is a Windows service hosted in Azure that uses Windows diagnostic data. You should be aware that Update Compliance doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home). Update Compliance is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers. 

Before you begin the process to add Update Compliance to your Azure subscription, first ensure you can meet the prerequisites:

- **Compatible Operating Systems and Editions**: Update Compliance works only with Windows 10 Professional, Education, and Enterprise editions. Update Compliance supports both the typical Windows 10 Enterprise edition, as well as [Windows 10 Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq). Update Compliance only provides data for the standard Desktop Windows 10 version and is not currently compatible with Windows Server, Surface Hub, IoT, etc.
- **Compatible Windows 10 Servicing Channels**: Update Compliance supports Windows 10 devices on the Semi-Annual Channel and the Long-term Servicing Channel (LTSC). Update Compliance *counts* Windows Insider Preview (WIP) devices, but does not currently provide detailed deployment insights for them.
- **Diagnostic data requirements**: Update Compliance requires devices be configured to send diagnostic data at *Required* level (previously *Basic*). To learn more about what's included in different diagnostic levels, see [Diagnostics, feedback, and privacy in Windows 10](https://support.microsoft.com/help/4468236/diagnostics-feedback-and-privacy-in-windows-10-microsoft-privacy).
- **Data transmission requirements**: Devices must be able to contact specific endpoints required to authenticate and send diagnostic data. These are enumerated in detail at [Configuring Devices for Update Compliance manually](update-compliance-configuration-manual.md).
- **Showing Device Names in Update Compliance**: For Windows 10, version 1803 or later, device names will not appear in Update Compliance unless you individually opt-in devices by using policy. The steps to accomplish this is outlined in [Configuring Devices for Update Compliance](update-compliance-configuration-manual.md).

## Add Update Compliance to your Azure subscription

Update Compliance is offered as an Azure Marketplace application which is linked to a new or existing [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace within your Azure subscription. To configure this, follow these steps:

1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/Microsoft.WaaSUpdateInsights?tab=Overview). You might need to login to your Azure subscription to access this.
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

A CommercialID is a globally unique identifier assigned to a specific Log Analytics workspace. The CommercialID is copied to an MDM or Group Policy and is used to identify devices in your environment.

To find your CommercialID within Azure:

1. Navigate to the **Solutions** tab for your workspace, and then select the **WaaSUpdateInsights** solution.
2. From there, select the Update Compliance Settings page on the navbar.
3. Your CommercialID is available in the settings page.

> [!IMPORTANT]
> Regenerate your CommercialID only if your original ID can no longer be used or if you want to completely reset your workspace. Regenerating your CommercialID cannot be undone and will result in you losing data for all devices that have the current CommercialID until the new CommercialID is deployed to devices.

## Enroll devices in Update Compliance

Once you've added Update Compliance to a workspace in your Azure subscription, you'll need to configure any devices you want to monitor. There are a few steps to follow when enrolling devices to Update Compliance:

1. Check the policies, services, and other device enrollment requirements in [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md).
2. If you are a [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview) customer, you can follow the MEM enrollment process documented at [Configuring MEM-enrolled devices for Update Compliance](update-compliance-configuration-mem.md).
3. Finally, you should run the [Update Compliance Configuration Script](update-compliance-configuration-script.md) on all devices to ensure they are appropriately configured and troubleshoot any enrollment issues.

After you configure devices, diagnostic data they send will begin to be associated with your Azure AD organization ("tenant"). However, enrolling to Update Compliance doesn't influence the rate at which required data is uploaded from devices. Device connectivity to the internet and generally how active the device is highly influences how long it will take before the device appears in Update Compliance. Devices that are active and connected to the internet daily can expect to be fully uploaded within one week (usually less than 72 hours). Devices that are less active can take up to two weeks before data is fully available. 

### Update Compliance and Desktop Analytics

If you use or plan to use [Desktop Analytics](/mem/configmgr/desktop-analytics/overview), you must use the same Log Analytics workspace for both solutions. 



