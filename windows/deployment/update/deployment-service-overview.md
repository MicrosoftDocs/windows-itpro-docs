---
title: Overview of the deployment service
titleSuffix: Windows Update for Business deployment service
description: Overview of deployment service to control approval, scheduling, and safeguarding of Windows updates with the deployment service.
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
ms.date: 02/14/2023
---

# Windows Update for Business deployment service

The Windows Update for Business deployment service is a cloud service within the Windows Update for Business product family. It's designed to work with your existing [Windows Update for Business](waas-manage-updates-wufb.md) policies and [Windows Update for Business reports](wufb-reports-overview.md). The deployment service provides control over the approval, scheduling, and safeguarding of updates delivered from Windows Update to managed devices. The service is privacy focused and backed by leading industry compliance certifications.

Windows Update for Business product family has three elements:

- Client policy to govern update experiences and timing, which are available through Group Policy and CSPs
- [Windows Update for Business reports](wufb-reports-overview.md) to monitor update deployment
- Deployment service APIs to approve and schedule specific updates for deployment, which are available through the Microsoft Graph and associated SDKs (including PowerShell)

The deployment service complements existing Windows Update for Business capabilities, including existing device policies and the [Windows Update for Business reports workbook](wufb-reports-workbook.md).

:::image type="content" source="media/7512398-deployment-service-overview.png" alt-text="Diagram displaying the three elements that are parts of the Windows Update for Business family.":::

## How the deployment service works

With most update management solutions, usually update policies are set on the client itself using either registry edits, Group Policy, or an MDM solution that leverages CSPs. This means that the end user experience and deployment settings for updates are ultimately determined by the individual device settings. However, with Windows Update for Business deployment service, the service is the central point of control for update deployment behavior. Because the deployment service is directly integrated with Windows Update, once the admin defines the deployment behavior, Windows Update is already aware of how device should be directed to install updates when the device scans. The deployment service creates a direct communication channel between a management tool (including scripting tools such as Windows PowerShell) and the Windows Update service so that the approval and offering of content can be directly controlled by an admin.


Using the deployment service typically follows a common pattern:
1. An admin uses a management tool to select devices and approve content to be deployed. This tool could be PowerShell, a Microsoft Graph app, or a more complete management solution such as Microsoft Intune.
2. The chosen management tool conveys your approval, scheduling, and device selection information to the deployment service.
3. The deployment service processes the content approval and compares it with previously approved content. Final update applicability is determined and conveyed to Windows Update, which then offers approved content to devices on their next check for updates.

   :::image type="content" source="media/wufbds-interaction-small.png" alt-text="Diagram displaying ":::

The deployment service exposes these capabilities through Microsoft [Graph REST APIs](/graph/overview). You can call the APIs directly, through a Graph SDK, or integrate them with a management tool such as [Microsoft Intune](/mem/intune).

## Capabilities of the Windows Update for Business deployment service

The deployment service is designed for IT Pros who are looking for more control than is provided through deferral policies and deployment rings. The service provides the following capabilities for updates:

- **Approval and scheduling**: Approve and schedule deployment of updates to start on a specific date
   - *Example*: Deploy the Windows 11 22H2 feature update to specified devices on February 17, 2023.
- **Gradual rollout**: Stage deployments over a period of days or weeks by specifying gradual rollout settings
  - *Example*: Deploy the Windows 11 22H2 feature update to 500 devices per day, beginning on February 17, 2023
- **Expedite**: Bypass the configured Windows Update for Business policies to immediately deploy a security update across the organization
- **Safeguard holds**: Automatically holds the deployment for devices that may be impacted by an update issue identified by Microsoft machine-learning algorithms

Certain capabilities are available for specific update classifications:

|Capabilities | [Quality updates](deployment-service-expedited-updates.md) | [Feature updates](deployment-service-feature-updates.md) | [Drivers and firmware](deployment-service-drivers.md)|
|---|---|---|---|
|Approval and scheduling | | Yes | Yes |
|Gradual rollout | | Yes |  |
|Expedite | Yes | | |
|Safeguard holds| | Yes | |


## Deployment protections

The deployment service protects deployments through a combination of rollout controls and machine-learning algorithms that monitor deployments and react to issues during the rollout.

### Gradual rollout

The deployment service allows any update to be deployed over a period of days or weeks. Once an update has been scheduled, the deployment service optimizes the deployment based on the scheduling parameters and unique attributes spanning the devices being updated. The service follows these steps:

1. Determine the number of devices to be updated in each deployment wave, based on scheduling parameters.
2. Select devices for each deployment wave so that earlier waves have a diversity of hardware and software, to function as pilot device populations.
3. Start deploying to earlier waves to build coverage of device attributes present in the population.
4. Continue deploying at a uniform rate until all waves are complete and all devices are updated.

This built-in piloting capability complements your existing [deployment ring](waas-quick-start.md) structure and provides another support for reducing and managing risk during an update. This capability is intended to operate within each ring. The deployment service doesn't provide a workflow for creating rings themselves. Continue to use deployment rings as part of the servicing strategy for your organization, but use gradual rollouts to add scheduling convenience and other protections within each ring.

### Safeguard holds against likely and known issues

Microsoft uses [safeguard holds](/windows/deployment/update/safeguard-holds) to protect devices from encountering known quality or compatibility issues by preventing them from installing the update or upgrade. For Windows 11 deployments, the deployment service also extends safeguard holds to protect devices that Microsoft identifies as being at a higher risk of experiencing problems after an update (such as operating system rollbacks, app crashes, or graphics issues). The service temporarily holds the deployment for these devices while Microsoft investigates the likely issue. Safeguard holds apply to deployments by default, but you can opt out. To verify whether a device is affected by a safeguard hold, see [Am I affected by a safeguard hold?](/windows/deployment/update/safeguard-holds#am-i-affected-by-a-safeguard-hold).

### Monitoring deployments to detect rollback issues

During deployments of Windows 11 or Windows 10 feature updates, driver combinations can sometimes result in an unexpected update failure that makes the device revert to the previously installed operating system version. The deployment service can monitor devices for such issues and automatically pause deployments when this happens, giving you time to detect and mitigate issues.

## Get started with the deployment service

To use the deployment service, you use a management tool built on the platform like Microsoft Intune, script common actions using PowerShell, or build your own application.

To learn more about the deployment service and the deployment process, see:

- [Prerequisites for Windows Update for Business deployment service](deployment-service-prerequisites.md)
- [Deploy feature updates using Graph Explorer](deployment-service-feature-updates.md)
- [Deploy expedited updates using Graph Explorer](deployment-service-expedited-updates.md)
- [Deploy driver and firmware updates using Graph Explorer](deployment-service-drivers.md)

### Scripting common actions using PowerShell

The Microsoft Graph SDK includes a PowerShell extension that you can use to script and automate common update actions. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/graph/powershell/get-started).

### Building your own application

Microsoft Graph makes deployment service APIs available through. Get started with the resources below:

- Learning path: [Microsoft Graph Fundamentals](/training/paths/m365-msgraph-fundamentals/)
- Learning path: [Build apps with Microsoft Graph](/training/paths/m365-msgraph-associate/)

- Windows Update for Business deployment service [sample driver deployment application](https://github.com/microsoftgraph/windowsupdates-webapplication-sample) on GitHub
- [Windows updates API overview in Microsoft Graph](/graph/windowsupdates-concept-overview)

### Use Microsoft Intune

Microsoft Intune integrates with the deployment service to provide Windows client update management capabilities. For more information, see:

- [Feature updates for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-feature-updates)
- [Expedite Windows quality updates in Microsoft Intune](/mem/intune/protect/windows-10-expedite-updates)

