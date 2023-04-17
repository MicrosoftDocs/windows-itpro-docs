---
title: Windows Update for Business reports prerequisites
manager: aaroncz
description: Prerequisites for Windows Update for Business reports
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: article
ms.date: 03/15/2023
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
- Data in the **Driver update** tab of the [workbook](wufb-reports-workbook.md) is only available for devices that receive driver and firmware updates from the [Windows Update for Business deployment service](deployment-service-overview.md)


## Permissions

[!INCLUDE [Windows Update for Business reports permissions](./includes/wufb-reports-admin-center-permissions.md)]

## Operating systems and editions

- Windows 11 Professional, Education, Enterprise, and [Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq) editions
- Windows 10 Professional, Education, Enterprise, and [Enterprise multi-session](/azure/virtual-desktop/windows-10-multisession-faq) editions

Windows Update for Business reports only provides data for the standard Desktop Windows client version and isn't currently compatible with Windows Server, Surface Hub, IoT, or other versions.

## Windows client servicing channels

Windows Update for Business reports supports Windows client devices on the following channels:

- General Availability Channel
- Windows Update for Business reports *counts* Windows Insider Preview devices, but doesn't currently provide detailed deployment insights for them.

### Windows operating system updates

- For [Changes to Windows diagnostic data collection](/windows/privacy/changes-to-windows-diagnostic-data-collection#services-that-rely-on-enhanced-diagnostic-data), installing the January 2023 release preview cumulative update, or a later equivalent update, is recommended

## Diagnostic data requirements

At minimum, Windows Update for Business reports requires devices to send diagnostic data at the *Required* level (previously *Basic*). For more information about what's included in different diagnostic levels, see [Diagnostics, feedback, and privacy in Windows](https://support.microsoft.com/windows/diagnostics-feedback-and-privacy-in-windows-28808a2b-a31b-dd73-dcd3-4559a5199319). 

For some queries, such as Windows 11 eligibility reporting, Windows Update for Business reports requires devices to send diagnostic data at the following levels:

- *Optional* level  for Windows 11 devices (previously *Full*)
- *Enhanced* level for Windows 10 devices

Device names don't appear in Windows Update for Business reports unless you individually opt-in devices by using a policy. The configuration script does this for you, but when using other client configuration methods, set one of the following to display device names:

    
 - CSP: System/[AllowDeviceNameInDiagnosticData](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata)
 - Group Policy: **Allow device name to be sent in Windows diagnostic data** under **Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds**

 Microsoft is committed to providing you with effective controls over your data and ongoing transparency into our data handling practices.  For more information about data handling and privacy for Windows diagnostic data, see [Configure Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization) and [Changes to Windows diagnostic data collection](/windows/privacy/changes-to-windows-diagnostic-data-collection#services-that-rely-on-enhanced-diagnostic-data).

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
