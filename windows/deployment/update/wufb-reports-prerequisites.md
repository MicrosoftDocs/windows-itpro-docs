---
title: Prerequisites for Windows Update for Business reports
titleSuffix: Windows Update for Business reports
description: List of prerequisites for enabling and using Windows Update for Business reports in your organization.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 06/04/2024
---

# Windows Update for Business reports prerequisites
<!--37063317, 30141258, 37063041-->
Before you begin the process of adding Windows Update for Business reports to your Azure subscription, ensure you meet the prerequisites.

<a name='azure-and-azure-active-directory'></a>

## Azure and Microsoft Entra ID

- An Azure subscription with [Microsoft Entra ID](/azure/active-directory/).
- Devices must be Microsoft Entra joined and meet the below OS, diagnostic, and endpoint access requirements.
  - Devices can be [Microsoft Entra joined](/azure/active-directory/devices/concept-azure-ad-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid).
- Devices that are [Microsoft Entra registered](/azure/active-directory/devices/concept-azure-ad-register) only (workplace joined) aren't supported with Windows Update for Business reports.
- The Log Analytics workspace must be in a [supported region](#log-analytics-regions).
- Data in the **Driver update** tab of the [workbook](wufb-reports-workbook.md) is only available for devices that receive driver and firmware updates from the [Windows Update for Business deployment service](deployment-service-overview.md).

## Permissions

[!INCLUDE [Windows Update for Business reports permissions](./includes/wufb-reports-admin-center-permissions.md)]

## Operating systems and editions

- Windows 11 Professional, Education, Enterprise, and Enterprise multi-session editions <!--8928451-->
- Windows 10 Professional, Education, Enterprise, and Enterprise multi-session editions

Windows Update for Business reports only provides data for the standard desktop Windows client version and isn't currently compatible with Windows Server, Surface Hub, IoT, or other versions.

> [!Important]
> Currently there is a known issue where Windows Update for Business reports doesn't display data for Enterprise multi-session edition devices. <!--8928451, also listed in FAQ-->

## Windows client servicing channels

Windows Update for Business reports supports Windows client devices on the following channels:

- General Availability Channel
- Windows Update for Business reports *counts* Windows Insider Preview devices, but doesn't currently provide detailed deployment insights for them.

## Windows operating system updates for client devices

Installing the February 2023 cumulative update, or a later equivalent update, is required for clients to enroll into Windows Update for Business reports. This update helped enable [changes to Windows diagnostic data collection](/windows/privacy/changes-to-windows-diagnostic-data-collection#services-that-rely-on-enhanced-diagnostic-data), which Windows Update for Business reports relies on. 

For more information about available updates, see [Windows 11 release information](/windows/release-health/windows11-release-information) and [Windows 10 release information](/windows/release-health/release-information). 

## Diagnostic data requirements

At minimum, Windows Update for Business reports requires devices to send diagnostic data at the *Required* level (previously *Basic*). For more information about what data each diagnostic level includes, see [Configure Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization).

The following levels are recommended, but not required:

- The *Enhanced* level for Windows 10 devices.
- The *Optional* level for Windows 11 devices (previously *Full*). <!--8027083-->

Device names don't appear in Windows Update for Business reports unless you individually opt in devices by using a policy. The configuration script does this action for you, but when using other client configuration methods, set one of the following policies to display device names:

- CSP: System/[AllowDeviceNameInDiagnosticData](/windows/client-management/mdm/policy-csp-system#system-allowdevicenameindiagnosticdata)
- Group Policy: **Allow device name to be sent in Windows diagnostic data** under **Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds**

> [!TIP]
> Windows Update for Business reports uses [services configuration](/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#bkmk-svccfg), also called OneSettings. Disabling the services configuration can cause some of the client data to be incorrect or missing in reports. For more information, see the [DisableOneSettingsDownloads](/windows/client-management/mdm/policy-csp-system#disableonesettingsdownloads) policy settings.

Microsoft is committed to providing you with effective controls over your data and ongoing transparency into our data handling practices.  For more information about data handling and privacy for Windows diagnostic data, see [Configure Windows diagnostic data in your organization](/windows/privacy/configure-windows-diagnostic-data-in-your-organization) and [Changes to Windows diagnostic data collection](/windows/privacy/changes-to-windows-diagnostic-data-collection#services-that-rely-on-enhanced-diagnostic-data).

## Endpoints

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
