---
title: Prerequisites for the deployment service
titleSuffix: Windows Update for Business deployment service
description: Prerequisites for using the Windows Update for Business deployment service for updating devices in your organization. 
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
ms.author: mstewart
author: mestew
manager: aaroncz
ms.collection:
  - tier1
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 07/01/2024
---

# Windows Update for Business deployment service prerequisites
<!--7512398-->
Before you begin the process of deploying updates with Windows Update for Business deployment service, ensure you meet the prerequisites.

<a name='azure-and-azure-active-directory'></a>

## Azure and Microsoft Entra ID

- An Azure subscription with [Microsoft Entra ID](/azure/active-directory/)
- Devices must be Microsoft Entra joined and meet the below OS requirements.
  - Devices can be [Microsoft Entra joined](/azure/active-directory/devices/concept-azure-ad-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid).
  - Devices that are [Microsoft Entra registered](/azure/active-directory/devices/concept-azure-ad-register) only (Workplace joined) aren't supported with Windows Update for Business

## Licensing

Windows Update for Business deployment service requires users of the devices to have one of the following licenses:

- Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
- Windows 10/11 Education A3 or A5 (included in Microsoft 365 A3 or A5)
- Windows Virtual Desktop Access E3 or E5
- Microsoft 365 Business Premium

## Operating systems and editions

- Windows 11 Professional, Education, Enterprise, Pro Education, or Pro for Workstations editions
- Windows 10 Professional, Education, Enterprise, Pro Education, or Pro for Workstations editions

Windows Update for Business deployment service supports Windows client devices on the  **General Availability Channel**.

### Windows operating system updates

- Expediting updates requires the *Update Health Tools* on the clients. The tools are installed starting with [KB4023057](https://support.microsoft.com/kb/4023057). To confirm the presence of the Update Health Tools on a device:
  - Look for the folder **C:\Program Files\Microsoft Update Health Tools** or review *Add Remove Programs* for **Microsoft Update Health Tools**.
  - As an Admin, run the following PowerShell script:  `Get-CimInstance -ClassName Win32_Product | Where-Object {$_.Name -match "Microsoft Update Health Tools"}`

- For [Changes to Windows diagnostic data collection](/windows/privacy/changes-to-windows-diagnostic-data-collection#services-that-rely-on-enhanced-diagnostic-data), installing the January 2023 release preview cumulative update, or a later equivalent update, is recommended

## Diagnostic data requirements

Deployment scheduling controls are always available. However, to take advantage of the unique deployment protections tailored to your population and to [deploy driver updates](deployment-service-drivers.md), devices must share diagnostic data with Microsoft. For these features, at minimum, the deployment service requires devices to send [diagnostic data](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#diagnostic-data-settings) at the *Required* level (previously called *Basic*) for these features.

When you use [Windows Update for Business reports](wufb-reports-overview.md) in conjunction with the deployment service, using diagnostic data at the following levels allows device names to appear in reporting:

- *Optional* level (previously *Full*) for Windows 11 devices
- *Enhanced* level for Windows 10 devices

## Permissions

- [Windows Update for Business deployment service](/graph/api/resources/adminwindowsupdates) operations require [WindowsUpdates.ReadWrite.All](/graph/permissions-reference#windows-updates-permissions)
  - Some roles, such as the [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator), already have the permissions.

> [!NOTE]
> Leveraging other parts of the Graph API might require additional permissions. For example, to display [device](/graph/api/resources/device) information, a minimum of [Device.Read.All](/graph/permissions-reference#device-permissions) permission is needed.

## Required endpoints

- Have access to the following endpoints:

- [Windows Update endpoints](/windows/privacy/manage-windows-1809-endpoints#windows-update)
    - *.prod.do.dsp.mp.microsoft.com
    - *.windowsupdate.com
    - *.dl.delivery.mp.microsoft.com
    - *.update.microsoft.com
    - *.delivery.mp.microsoft.com
    - tsfe.trafficshaping.dsp.mp.microsoft.com
- Windows Update for Business deployment service endpoints 

    - devicelistenerprod.microsoft.com
       - devicelistenerprod.eudb.microsoft.com for the [EU Data Boundary](/privacy/eudb/eu-data-boundary-learn) <!--9131668-->
    - login.windows.net
    - payloadprod*.blob.core.windows.net


- [Windows Push Notification Services](/windows/uwp/design/shell/tiles-and-notifications/firewall-allowlist-config): *(Recommended, but not required. Without this access, devices might not expedite updates until their next daily check for updates.)*
    - *.notify.windows.com


## Limitations

<!--Using include for deployment service limitations-->
[!INCLUDE [Windows Update for Business deployment service limitations](./includes/wufb-deployment-limitations.md)]

## Policy considerations for drivers

<!--Using include for Policy considerations for drivers-->
[!INCLUDE [Windows Update for Business deployment service driver policy considerations](./includes/wufb-deployment-driver-policy-considerations.md)]


## General tips for the deployment service

Follow these suggestions for the best results with the service:

- Wait until devices finish provisioning before managing with the service. If a device is being provisioned by Autopilot, it can only be managed by the deployment service after it finishes provisioning (typically one day).

- Use the deployment service for feature update management without feature update deferral policy. If you want to use the deployment service to manage feature updates on a device that previously used a feature update deferral policy, it's best to set the feature update deferral policy to **0** days to avoid having multiple conditions governing feature updates. You should only change the feature update deferral policy value to 0 days after you've confirmed that the device was enrolled in the service with no errors.

- Avoid using different channels to manage the same resources. If you use Microsoft Intune along with Microsoft Graph APIs or PowerShell, aspects of resources (such as devices, deployments, updatable asset groups) might be overwritten if you use both channels to manage the same resources. Instead, only manage each resource through the channel that created it.
