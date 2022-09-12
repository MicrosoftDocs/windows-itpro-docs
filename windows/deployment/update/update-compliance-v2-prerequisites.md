---
title: Update Compliance prerequisites
ms.reviewer: 
manager: dougeby
description: Prerequisites for Update Compliance
ms.prod: w10
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 06/30/2022
---

# Update Compliance prerequisites
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> - As of August 17, 2022, a new step needs to be taken to ensure access to the preview version of Update Compliance and the CommercialID is no longer required. For more information, see [Configure Update Compliance settings through the Microsoft 365 admin center](update-compliance-v2-enable.md#bkmk_admin-center).
> - This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

## Update Compliance prerequisites

Before you begin the process of adding Update Compliance to your Azure subscription, ensure you meet the prerequisites.

### Azure and Azure Active Directory

- An Azure subscription with [Azure Active Directory](/azure/active-directory/)
- You must have either an Owner or Contributor [Azure role](/azure/role-based-access-control/rbac-and-directory-admin-roles#azure-roles) as a minimum in order to add the Update Compliance solution.
- Devices must be Azure Active Directory-joined and meet the below OS, diagnostic, and endpoint access requirements.
- Devices that are Workplace joined only (Azure AD registered) aren't supported with Update Compliance.

### Operating systems and editions

- Windows 11 Professional, Education, Enterprise, and [Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq) editions
- Windows 10 Professional, Education, Enterprise, and [Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq) editions

Update Compliance only provides data for the standard Desktop Windows client version and isn't currently compatible with Windows Server, Surface Hub, IoT, or other versions.

### Windows client servicing channels

Update Compliance supports Windows client devices on the following channels:

- General Availability Channel
- Update Compliance *counts* Windows Insider Preview devices, but doesn't currently provide detailed deployment insights for them.

### Diagnostic data requirements

At minimum, Update Compliance requires devices to send diagnostic data at *Required* level (previously *Basic*). Some queries in Update Compliance require devices to send diagnostic data at the following levels:

- *Optional* level (previously *Full*) for Windows 11 devices
- *Enhanced* level for Windows 10 devices

    > [!Note]
    > Device names don't appear in Update Compliance unless you individually opt-in devices by using policy. The configuration script does this for you, but when using other client configuration methods, set one of the following to display device names:
    > - CSP: System/[AllowDeviceNameInDiagnosticData](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata)
    > - Group Policy: **Allow device name to be sent in Windows diagnostic data** under **Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds**

For more information about what's included in different diagnostic levels, see [Diagnostics, feedback, and privacy in Windows](https://support.microsoft.com/windows/diagnostics-feedback-and-privacy-in-windows-28808a2b-a31b-dd73-dcd3-4559a5199319).

### Data transmission requirements

<!--Using include for endpoint access requirements-->
[!INCLUDE [Endpoints for Update Compliance](./includes/update-compliance-endpoints.md)]

> [!NOTE]
> Enrolling into Update Compliance from the [Azure CLI](/cli/azure) or enrolling programmatically another way currently isn't supported. You must manually add Update Compliance to your Azure subscription.

## Microsoft 365 admin center permissions
<!--Using include Microsoft 365 admin center permissions-->
[!INCLUDE [Update Compliance script error codes](./includes/update-compliance-admin-center-permissions.md)]

## Log Analytics prerequisites

### Log Analytics permissions

- To edit and write queries, we recommend the [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role.
- To read and only view data, we recommend the [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role.


### Log Analytics regions

Update Compliance can use a Log Analytics workspace in the following regions:

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

## Next steps

- [Enable the Update Compliance solution](update-compliance-v2-enable.md) in the Azure portal
