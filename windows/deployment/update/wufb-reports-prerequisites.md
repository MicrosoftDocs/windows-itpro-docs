---
title: Windows Update for Business reports prerequisites
ms.reviewer: 
manager: dougeby
description: Prerequisites for Windows Update for Business reports
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 11/15/2022
ms.technology: itpro-updates
---

# Windows Update for Business reports prerequisites
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

Before you begin the process of adding Windows Update for Business reports to your Azure subscription, ensure you meet the prerequisites.

## Azure and Azure Active Directory

- An Azure subscription with [Azure Active Directory](/azure/active-directory/)
- Devices must be Azure Active Directory-joined and meet the below OS, diagnostic, and endpoint access requirements.
  - Devices can be [Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join) or [hybrid Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid).
- Devices that are [Azure AD registered](/azure/active-directory/devices/concept-azure-ad-register) only (Workplace joined) aren't supported with Windows Update for Business reports.
- The Log Analytics workspace must be in a [supported region](#log-analytics-regions)

## Permissions

[!INCLUDE [Windows Update for Business reports permissions](./includes/wufb-reports-admin-center-permissions.md)]

**Log Analytics permissions**:

- [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role can be used to edit and write queries
- [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role can be used to read data

## Operating systems and editions

- Windows 11 Professional, Education, Enterprise, and [Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq) editions
- Windows 10 Professional, Education, Enterprise, and [Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq) editions

Windows Update for Business reports only provides data for the standard Desktop Windows client version and isn't currently compatible with Windows Server, Surface Hub, IoT, or other versions.

## Windows client servicing channels

Windows Update for Business reports supports Windows client devices on the following channels:

- General Availability Channel
- Windows Update for Business reports *counts* Windows Insider Preview devices, but doesn't currently provide detailed deployment insights for them.

## Diagnostic data requirements

At minimum, Windows Update for Business reports requires devices to send diagnostic data at the *Required* level (previously *Basic*). Some queries in Windows Update for Business reports require devices to send diagnostic data at the following levels:

- *Optional* level (previously *Full*) for Windows 11 devices
- *Enhanced* level for Windows 10 devices

    > [!Note]
    > Device names don't appear in Windows Update for Business reports unless you individually opt-in devices by using policy. The configuration script does this for you, but when using other client configuration methods, set one of the following to display device names:
    > - CSP: System/[AllowDeviceNameInDiagnosticData](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata)
    > - Group Policy: **Allow device name to be sent in Windows diagnostic data** under **Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds**

For more information about what's included in different diagnostic levels, see [Diagnostics, feedback, and privacy in Windows](https://support.microsoft.com/windows/diagnostics-feedback-and-privacy-in-windows-28808a2b-a31b-dd73-dcd3-4559a5199319).

## Data transmission requirements

<!--Using include for endpoint access requirements-->
[!INCLUDE [Endpoints for Windows Update for Business reports](./includes/wufb-reports-endpoints.md)]

> [!NOTE]
> Enrolling into Windows Update for Business reports from the [Azure CLI](/cli/azure) or enrolling programmatically another way currently isn't supported. You must manually add Windows Update for Business reports to your Azure subscription.

## Log Analytics regions

Windows Update for Business reports can use a Log Analytics workspace in the following regions:

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

- [Enable the Windows Update for Business reports solution](wufb-reports-enable.md) in the Azure portal
