---
title: Windows Update for Business deployment service
description: Overview of deployment service to control approval, scheduling, and safeguarding of Windows updates
ms.custom: seo-marvel-apr2020
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer:
manager: laurawi
ms.topic: article
---



# Windows Update for Business deployment service

> Applies to: Windows 10

The Windows Update for Business deployment service is a cloud service within the Windows Update for Business product family. It provides control over the approval, scheduling, and safeguarding of updates delivered from Windows Update. It's designed to work in harmony with your existing Windows Update for Business policies.

The deployment service is designed for IT Pros who are looking for more control than is provided through deferral policies and deployment rings. It provides the following abilities:

- You can schedule deployment of updates to start on a specific date (for example, deploy 20H2 to specified devices on March 14, 2021).
- You can stage deployments over a period of days or weeks by using rich expressions (for example, deploy 20H2 to 500 devices per day, beginning on March 14, 2021).
- You can bypass pre-configured Windows Update for Business policies to immediately deploy a security update across your organization when emergencies arise.
- You can benefit from deployments with automatic piloting tailored to your unique device population to ensure coverage of hardware and software in your organization.

The service is privacy focused and backed by leading industry compliance certifications.

## How it works

The deployment service complements existing Windows Update for Business capabilities, including existing device policies and [Update Compliance](update-compliance-monitor.md).

:::image type="content" source="media/wufbds-product-large.png" alt-text="Elements in following text.":::

Windows Update for Business comprises three elements:
- Client policy to govern update experiences and timing – available through Group Policy and CSPs
- Deployment service APIs to approve and schedule specific updates – available through the Microsoft Graph and associated SDKs (including PowerShell)
- Update Compliance to monitor update deployment – available through the Azure Marketplace

Unlike existing client policy, the deployment service does not interact with devices directly. The service is native to the cloud and all operations take place between various Microsoft services. It creates a direct communication channel between a management tool (including scripting tools such as Windows PowerShell) and the Windows Update service so that the approval and offering of content can be directly controlled by an IT Pro.

:::image type="content" source="media/wufbds-interaction-small.png" alt-text="Process described in following text.":::

Using the deployment service typically follows a common pattern:
1. IT Pro uses a management tool to select devices and approve content to be deployed. This tool could be PowerShell, a Microsoft Graph app or a more complete management solution such as Microsoft Endpoint Manager.
2. The chosen tool conveys your approval, scheduling, and device selection information to the deployment service.
3. The deployment service processes the content approval and compares it with previously approved content. Final update applicability is determined and conveyed to Windows Update, which then offers approved content to devices on their next check for updates.


The deployment service exposes these capabilities through Microsoft [Graph REST APIs](/graph/overview). You can call the APIs directly, through a Graph SDK, or integrate them with a management tool such as Microsoft Endpoint Manager.

## Prerequisites

To work with the deployment service, devices must meet all these requirements:

- Be running Windows 10, version 1709 or later
- Be joined to Azure Active Directory (AD) or Hybrid AD
- Have one of the following Windows 10 editions installed:
    - Windows 10 Pro
    - Windows 10 Enterprise
    - Windows 10 Education
    - Windows 10 Pro Education
    - Windows 10 Pro for Workstations

Additionally, your organization must have one of the following subscriptions:
- Windows 10 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
- Windows 10 Education A3 or A5 (included in Microsoft 365 A3 or A5)
- Windows Virtual Desktop Access E3 or E5
- Microsoft 365 Business Premium


## Getting started

To use the deployment service, you use a management tool built on the platform, script common actions using PowerShell, or build your own application.

### Using Microsoft Endpoint Manager

Microsoft Endpoint Manager integrates with the deployment service to provide Windows 10 update management capabilities. For more information, see [Windows 10 feature updates policy in Intune](/mem/intune/protect/windows-10-feature-updates).

### Scripting common actions using PowerShell

The Microsoft Graph SDK includes a PowerShell extension that you can use to script and automate common update actions. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/graph/powershell/get-started).


### Building your own application

Microsoft Graph makes deployment service APIs available through. Get started with these learning paths:
- Learning Path: [Microsoft Graph Fundamentals](/learn/paths/m365-msgraph-fundamentals/)
- Learning Path: [Build apps with Microsoft Graph](/learn/paths/m365-msgraph-associate/)

Once you are familiar with Microsoft Graph development, see [Windows updates API overview in Microsoft Graph](/graph/windowsupdates-concept-overview) for more.

## Deployment protections

The deployment service protects deployments through a combination of rollout controls and machine-learning algorithms that monitor deployments and react to issues during the rollout.

### Schedule rollouts with automatic piloting

The deployment service allows any update to be deployed over a period of days or weeks. Once an update has been scheduled, the deployment service optimizes the deployment based on the scheduling parameters and unique attributes spanning the devices being updated. The service follows these steps:

1. Determine the number of devices to be updated in each deployment wave, based on scheduling parameters.
2. Select devices for each deployment wave so that earlier waves have a diversity of hardware and software, to function as pilot device populations.
3. Start deploying to earlier waves to build coverage of device attributes present in the population.
4. Continue deploying at a uniform rate until all waves are complete and all devices are updated.

This built-in piloting capability complements your existing ring structure and provides another support for reducing and managing risk during an update. Unlike tools such as Desktop Analytics, this capability is intended to operate within each ring. The deployment service does not provide a workflow for creating rings themselves.

You should continue to use deployment rings as part of the servicing strategy for your organization, but use gradual rollouts to add scheduling convenience and additional protections within each ring.

### Monitoring deployments to detect rollback issues

During a feature update deployment, driver combinations can sometimes result in an unexpected update failure that makes the device revert to the previously installed operating system version. The deployment service can monitor devices for such issues and automatically pause deployments when this happens, giving you time to detect and mitigate issues.


### How to enable deployment protections

Deployment scheduling controls are always available, but to take advantage of the unique deployment protections tailored to your organization, devices must share diagnostic data with Microsoft.

#### Device prerequisites

> [!NOTE]
> Deployment protections are currently in preview and available if you're using Update Compliance. If you set these policies on a a device that isn't enrolled in Update Compliance, there is no effect.

- Diagnostic data is set to *Required* or *Optional*.
- The **AllowWUfBCloudProcessing** policy is set to **8**.

#### Set the **AllowWUfBCloudProcessing** policy

To enroll devices in Windows Update for Business cloud processing, set the **AllowWUfBCloudProcessing** policy using mobile device management (MDM) policy.

> [!NOTE]
> Setting this policy by using Group Policy isn't currently supported.

| Policy                                                                                                       | Sets registry key under **HKLM\\Software**                                |
|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| MDM for Windows 10, version 1809 or later: ../Vendor/MSFT/ Policy/Config/System/**AllowWUfBCloudProcessing** | \\Microsoft\\PolicyManager\\default\\System\\AllowWUfBCloudProcessing |

Following is an example of setting the policy using Microsoft Endpoint Manager:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** > **Configuration profiles** > **Create profile**.
3. Select **Windows 10 and later** in **Platform**, select **Templates** in **Profile type**, select **Custom** in **Template name**, and then select **Create**.
4. In **Basics**, enter a meaningful name and a description for the policy, and then select **Next**.
5. In **Configuration settings**, select **Add**, enter the following settings, select **Save**, and then select **Next**.
    - Name: **AllowWUfBCloudProcessing**
    - Description: Enter a description.
    - OMA-URI: `./Vendor/MSFT/Policy/Config/System/AllowWUfBCloudProcessing`
    - Data type: **Integer**
    - Value: **8**
6. In **Assignments**, select the groups that will receive the profile, and then select **Next**.
7. In **Review + create**, review your settings, and then select **Create**.
8. (Optional) To verify that the policy reached the client, check the value of the following registry entry: **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\PolicyManager \\default\\System\\AllowWUfBCloudProcessing**.

## Best practices
Follow these suggestions for the best results with the service.

### Device onboarding 

- Wait until devices finish provisioning before managing with the service. If a device is being provisioned by Autopilot, it can only be managed by the deployment service after it finishes provisioning (typically one day).
- Use the deployment service for feature update management without feature update deferral policy. If you want to use the deployment service to manage feature updates on a device that previously used a feature update deferral policy, it's best to set the feature update deferral policy to **0** days to avoid having multiple conditions governing feature updates. You should only change the feature update deferral policy value to 0 days after you've confirmed that the device was enrolled in the service with no errors.

### General

Avoid using different channels to manage the same resources. If you use Microsoft Endpoint Manager along with Microsoft Graph APIs or PowerShell, aspects of resources (such as devices, deployments, updatable asset groups) might be overwritten if you use both channels to manage the same resources. Instead, only manage each resource through the channel that created it.


## Next steps

To learn more about the deployment service, try the following:

- [Windows 10 feature updates policy in Intune](/mem/intune/protect/windows-10-feature-updates)
- [Windows updates API overview in Microsoft Graph](/graph/windowsupdates-concept-overview)
