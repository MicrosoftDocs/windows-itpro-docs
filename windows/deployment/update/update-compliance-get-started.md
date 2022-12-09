---
title: Get started with Update Compliance
manager: aczechowski
description: Prerequisites, Azure onboarding, and configuring devices for Update Compliance
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.collection: 
  - highpri
ms.topic: article
ms.date: 05/03/2022
ms.technology: itpro-updates
---

# Get started with Update Compliance

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

This article introduces the high-level steps required to enroll to the Update Compliance solution and configure devices to send data to it. The following steps cover the enrollment and device configuration workflow.

1. Ensure you can [meet the requirements](#update-compliance-prerequisites) to use Update Compliance.
2. [Add Update Compliance](#add-update-compliance-to-your-azure-subscription) to your Azure subscription.
3. [Configure devices](#enroll-devices-in-update-compliance)  to send data to Update Compliance.

After you add the solution to Azure and configuring devices, it can take some time before all devices appear. For more information, see the [enrollment section](#enroll-devices-in-update-compliance). Before or as devices appear, you can learn how to [Use Update Compliance](update-compliance-using.md) to monitor Windows Updates and Delivery Optimization.

## Update Compliance prerequisites

> [!IMPORTANT]
> Update Compliance is a Windows service hosted in Azure that uses Windows diagnostic data. You should be aware that Update Compliance doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home). Update Compliance is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers. 

Before you begin the process to add Update Compliance to your Azure subscription, first ensure you can meet the prerequisites:

- **Compatible operating systems and editions**: Update Compliance works only with Windows 10 or Windows 11 Professional, Education, and Enterprise editions. Update Compliance supports both the typical Windows 10 or Windows 11 Enterprise edition, and [Windows 10 Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq). Update Compliance only provides data for the standard Desktop Windows client version and isn't currently compatible with Windows Server, Surface Hub, IoT, or other versions.
- **Compatible Windows client servicing channels**: Update Compliance supports Windows client devices on the General Availability Channel and the Long-term Servicing Channel (LTSC). Update Compliance *counts* Windows Insider Preview devices, but doesn't currently provide detailed deployment insights for them.
- **Diagnostic data requirements**: Update Compliance requires devices to send diagnostic data at *Required* level (previously *Basic*). Some queries in Update Compliance require devices to send diagnostic data at *Optional* level (previously *Full*) for Windows 11 devices or *Enhanced* level for Windows 10 devices. To learn more about what's included in different diagnostic levels, see [Diagnostics, feedback, and privacy in Windows](https://support.microsoft.com/windows/diagnostics-feedback-and-privacy-in-windows-28808a2b-a31b-dd73-dcd3-4559a5199319).
- **Data transmission requirements**: Devices must be able to contact specific endpoints required to authenticate and send diagnostic data. These endpoints are enumerated in detail at [Configuring Devices for Update Compliance manually](update-compliance-configuration-manual.md).
- **Showing device names in Update Compliance**: For Windows 10, version 1803 or later, device names won't appear in Update Compliance unless you individually opt-in devices by using policy. The steps are outlined in [Configuring Devices for Update Compliance](update-compliance-configuration-manual.md).
- **Azure AD device join** or **hybrid Azure AD join**: All devices enrolled in Update Compliance must meet all prerequisites for enabling Windows diagnostic data processor configuration, including the Azure AD join requirement. This prerequisite will be enforced for Update Compliance starting on October 15, 2022.

## Add Update Compliance to your Azure subscription

Update Compliance is offered as an Azure Marketplace application that is linked to a new or existing [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace within your Azure subscription. For the following steps, you must have either an Owner or Contributor [Azure role](/azure/role-based-access-control/rbac-and-directory-admin-roles#azure-roles) as a minimum in order to add the solution.

> [!IMPORTANT]
> Update Compliance is deprecated and no longer accepting any new onboarding requests. The instructions below are listed for verification and troubleshooting purposes only for existing Updates Compliance users. Update Compliance has been replaced by [Windows Update for Business reports](wufb-reports-overview.md) for monitoring compliance of updates.


1. Go to the [Update Compliance page in the Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/). The solution was published by Microsoft and named **WaaSUpdateInsights**.
2. Select **Get it now**.
3. Choose an existing or configure a new Log Analytics Workspace, ensuring it is in a **Compatible Log Analytics region** from the following table. Although an Azure subscription is required, you won't be charged for ingestion of Update Compliance data.
   - [Desktop Analytics](/sccm/desktop-analytics/overview) users should use the same workspace for Update Compliance.
   - [Azure Update Management](/azure/automation/automation-intro#update-management) users should use the same workspace for Update Compliance.
4. After your workspace is configured and selected, select **Create**. You'll receive a notification when the solution has been successfully created.

Once the solution is in place, you can use one of the following Azure roles with Update Compliance:

- To edit and write queries, we recommend the [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role.

- To read and only view data, we recommend the [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role.

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

A `CommercialID` is a globally unique identifier assigned to a specific Log Analytics workspace. The `CommercialID` is copied to an MDM or Group Policy and is used to identify devices in your environment. The `Commercial ID` directs your clients to the Update Compliance solution in your Log Analytics workspace. You'll need this ID when you configure clients to send data to Update Compliance.

1. If needed, sign into the [Azure portal](https://portal.azure.com).
1. In the Azure portal, type **Log Analytics** in the search bar. As you begin typing, the list filters based on your input.
1. Select **Log Analytics workspaces**.
1. Select the Log Analytics workspace that you added the Update Compliance solution to.
1. Select **Solutions** from the Log Analytics workspace, then select **WaaSUpdateInsights(&lt;Log Analytics workspace name>)** to go to the summary page for the solution. 
1. Select **Update Compliance Settings** from the **WaaSUpdateInsights(&lt;Log Analytics workspace name>)** summary page.
1. The **Commercial Id Key** is listed in the text box with an option to copy the ID. The **Commercial Id Key** is commonly referred to as the `CommercialID` or **Commercial ID** in Update Compliance.

   > [!Warning]
   > Regenerate a Commercial ID only if your original ID can no longer be used. Regenerating a Commercial ID requires you to deploy the new commercial ID to your computers in order to continue to collect data and can result in data loss.


## Enroll devices in Update Compliance

Once you've added Update Compliance to a workspace in your Azure subscription, you'll need to configure any devices you want to monitor. There are a few steps to follow when enrolling devices to Update Compliance:

1. Check the policies, services, and other device enrollment requirements in [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md).
2. If you use [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you can follow the enrollment process documented at [Configuring devices for Update Compliance in Microsoft Intune](update-compliance-configuration-mem.md).
3. Finally, you should run the [Update Compliance Configuration Script](update-compliance-configuration-script.md) on all devices to ensure they're appropriately configured and troubleshoot any enrollment issues.

After you configure devices, diagnostic data they send will begin to be associated with your Azure AD organization ("tenant"). However, enrolling to Update Compliance doesn't influence the rate at which required data is uploaded from devices. Device connectivity to the internet and generally how active the device is highly influences how long it will take before the device appears in Update Compliance. Devices that are active and connected to the internet daily can expect to be fully uploaded within one week (usually less than 72 hours). Devices that are less active can take up to two weeks before data is fully available. 

### Update Compliance and Desktop Analytics

If you use or plan to use [Desktop Analytics](/mem/configmgr/desktop-analytics/overview), you must use the same Log Analytics workspace for both solutions. 



