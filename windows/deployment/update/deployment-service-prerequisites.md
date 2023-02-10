---
title: Prerequisites for the Windows Update for Business deployment service
description: Prerequisites for using the Windows Update for Business deployment service. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Windows Update for Business deployment service prerequisites
<!--7512398-->
***(Applies to: Windows 11 & Windows 10)***

Before you begin the process of deploying updates with Windows Update for Business deployment service, ensure you meet the prerequisites.

## Azure and Azure Active Directory

- An Azure subscription with [Azure Active Directory](/azure/active-directory/)
- Devices must be Azure Active Directory-joined and meet the below OSrequirements.
  - Devices can be [Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join) or [hybrid Azure AD joined](/azure/active-directory/devices/concept-azure-ad-join-hybrid).
  - Devices that are [Azure AD registered](/azure/active-directory/devices/concept-azure-ad-register) only (Workplace joined) aren't supported with Windows Update for Business

## Licensing

Windows Update for Business deployment service requires users of the devices to have one of the following licenses:

- Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
- Windows 10/11 Education A3 or A5 (included in Microsoft 365 A3 or A5)
- Windows Virtual Desktop Access E3 or E5
- Microsoft 365 Business Premium

## Operating systems and editions

- Windows 11 Professional, Education, Enterprise, Pro Education, or Pro for Workstations editions
- Windows 10 Professional, Education, Enterprise, Pro Education, or Pro for Workstations editions

## Windows client servicing channels

Windows Update for Business deployment service supports Windows client devices on the following channels:

- General Availability Channel

## Diagnostic data requirements

Deployment scheduling controls are always available. However, to take advantage of the unique deployment protections tailored to your population and to [deploy driver updates](deployment-service-drivers.md), devices must share diagnostic data with Microsoft. At minimum, the deployment service requires devices to send [diagnostic data](/windows/privacy/configure-windows-diagnostic-data-in-your-organization#diagnostic-data-settings) at the *Required* level (previously called *Basic*) for these features. Some options for the deployment service require devices to send diagnostic data at the following levels:

- *Optional* level (previously *Full*) for Windows 11 devices
- *Enhanced* level for Windows 10 devices

## Permissions

- [Windows Update for Business deployment service](/graph/api/resources/windowsupdates) operations require [WindowsUpdates.ReadWrite.All](/graph/permissions-reference#windows-updates-permissions)
  - Some roles, such as the [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator), already have the permissions.

> [!NOTE]
> Leveraging other parts of the Graph API might require additional permissions. For example, to display [device](/graph/api/resources/device) information, a minimum of [Device.Read.All](/graph/permissions-reference#device-permissions) permission is needed.

## Limitations

<!--Using include for deployment service limitations-->
[!INCLUDE [Windows Update for Business deployment service limitations](./includes/wufb-deployment-limitations.md)]


## Best practices
Follow these suggestions for the best results with the service.

### Device onboarding

- Wait until devices finish provisioning before managing with the service. If a device is being provisioned by Autopilot, it can only be managed by the deployment service after it finishes provisioning (typically one day).

- Use the deployment service for feature update management without feature update deferral policy. If you want to use the deployment service to manage feature updates on a device that previously used a feature update deferral policy, it's best to set the feature update deferral policy to **0** days to avoid having multiple conditions governing feature updates. You should only change the feature update deferral policy value to 0 days after you've confirmed that the device was enrolled in the service with no errors.

### General

Avoid using different channels to manage the same resources. If you use Microsoft Intune along with Microsoft Graph APIs or PowerShell, aspects of resources (such as devices, deployments, updatable asset groups) might be overwritten if you use both channels to manage the same resources. Instead, only manage each resource through the channel that created it.