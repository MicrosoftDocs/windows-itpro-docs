---
title: Device registration overview
description: This article provides an overview on how to register devices in Autopatch.
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Device registration overview

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Windows Autopatch must [register your existing devices](../deploy/windows-autopatch-register-devices.md) into its service to manage update deployments on your behalf.

## Prerequisites for device registration

### Built-in roles required for device registration

A role defines the set of permissions granted to users assigned to that role. You can use the Intune Service Administrator role to register devices. For more information, see [Required Intune permissions](../prepare/windows-autopatch-prerequisites.md#required-intune-permissions).

### Software prerequisites

To be eligible for Windows Autopatch management, devices must meet a minimum set of required software-based prerequisites. For more information, see [Windows Autopatch prerequisites](../prepare/windows-autopatch-prerequisites.md).

> [!IMPORTANT]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager Operating System Deployment capabilities to perform an in-place upgrade](/windows/deployment/deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager) for Windows devices that are part of the LTSC.

The Windows Autopatch device registration process is transparent for end-users because it doesn't require devices to be reset.

The overall device registration process is as follows:

:::image type="content" source="../media/windows-autopatch-device-registration-overview.png" alt-text="Overview of the device registration process" lightbox="../media/windows-autopatch-device-registration-overview.png":::

1. IT admin reviews [Windows Autopatch device registration prerequisites](#prerequisites-for-device-registration) before registering devices with Windows Autopatch.
2. IT admin identifies and adds devices or nests other Microsoft Entra device groups into any Microsoft Entra group used with an Autopatch group, imported (WUfB) policies, or direct membership to the **Modern Workplace Devices-Windows-Autopatch-X-groups**.
3. Windows Autopatch then:
    1. Performs device readiness prior registration (prerequisite checks).
    2. Calculates the deployment ring distribution.
    3. Assigns devices to one of the deployment rings based on the previous calculation.
    4. Assigns devices to other Microsoft Entra groups required for management.
    5. Marks devices as active for management so it can apply its update deployment policies.
4. IT admin then monitors the device registration trends and the update deployment reports.

For more information about the device registration workflow, see the [Detailed device registration workflow diagram](../deploy/windows-autopatch-register-devices.md#detailed-device-registration-workflow-diagram) section for more technical details behind the Windows Autopatch device registration process.

## Windows Autopatch deployment rings

> [!CAUTION]
> **Don't** modify the Microsoft Entra group membership types (Assigned and Dynamic). Otherwise, the Windows Autopatch service won’t be able to read the device group membership from these groups, and causes the Autopatch groups feature and other service-related operations to not work properly.<p>Additionally, it's not supported to have Configuration Manager collections directly synced to any Microsoft Entra group created by Autopatch groups.</p>

When you [start using Autopatch](../prepare/windows-autopatch-feature-activation.md), Windows Autopatch creates the following deployment ring set to organize devices.

| Deployment ring | Description |
| --- | --- |
| Modern Workplace Devices-Windows Autopatch-Test | Deployment ring for testing service-based configuration, app deployments prior production rollout |
| Modern Workplace Devices-Windows Autopatch-First | First production deployment ring for early adopters. |
| Modern Workplace Devices-Windows Autopatch-Fast | Fast deployment ring for quick rollout and adoption |
| Modern Workplace Devices-Windows Autopatch-Broad | Final deployment ring for broad rollout into the organization |

> [!CAUTION]
> Adding or importing devices directly into any of these groups isn't supported. Doing so might affect the Windows Autopatch service. To move devices between these groups, see [Move devices in between deployment rings](../deploy/windows-autopatch-register-devices.md#move-devices-in-between-deployment-rings).

> [!IMPORTANT]
> Windows Autopatch device registration doesn't assign devices to the Test deployment rings of either the service-based (**Modern Workplace Devices-Windows Autopatch-Test**), or your Autopatch groups. This is intended to prevent devices that are essential to a business from being affected or devices that are used by executives from receiving early software update deployments.

During the device registration process, Windows Autopatch assigns each device to a deployment ring so that the service has the proper representation of device diversity across your organization.
The deployment ring distribution is designed to release software update deployments to as few devices as possible to get the signals needed to make a quality evaluation of a given update deployment.

### Device record and deployment ring assignment

Registering your devices with Windows Autopatch does the following:

1. Makes a record of devices in the service.
2. Assign devices to the [deployment ring set](#default-deployment-ring-calculation-logic) and other groups required for software update management.

### Default deployment ring calculation logic

The Windows Autopatch deployment ring calculation occurs during the device registration process:

- If the Windows Autopatch tenant's existing managed device size is **≤ 200**, the deployment ring assignment is First **(5%)**, Fast **(15%)**, remaining devices go to the Broad ring **(80%)**.
- If the Windows Autopatch tenant's existing managed device size is **>200**, the deployment ring assignment is First **(1%)**, Fast **(9%)**, remaining devices go to the Broad ring **(90%)**.

> [!NOTE]
> You can customize the deployment ring calculation logic by [editing an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group).

| Deployment ring | Default device balancing percentage | Description |
| --- | --- | --- |
| Test | **zero** | Windows Autopatch doesn't automatically add devices to this deployment ring. You must manually add devices to the Test ring following the required procedure. For more information on these procedures, see [Moving devices in between deployment rings](/windows/deployment/windows-autopatch/operate/windows-autopatch-update-management#moving-devices-in-between-deployment-rings). The recommended number of devices in this ring, based upon your environment size, is as follows:<br><ul><li>**0-500** devices: minimum **one** device.</li><li>**500-5000** devices: minimum **five** devices.</li><li>**5000+** devices: minimum **50** devices.</li></ul>Devices in this group are intended for your IT Administrators and testers since changes are released here first. This release schedule provides your organization the opportunity to validate updates before reaching production users. |
| First |  **1%** | The First ring is the first group of production users to receive a change.<p><p>This group is the first set of devices to send data to Windows Autopatch and are used to generate a health signal across all end-users. For example, Windows Autopatch can generate a statistically significant signal saying that critical errors are trending up in a specific release for all end-users, but can't be confident that it's doing so in your organization.<p><p>Since Windows Autopatch doesn't yet have sufficient data to inform a release decision, devices in this deployment ring might experience outages if there are scenarios that weren't covered during early testing in the Test ring.|
| Fast | **9%** | The Fast ring is the second group of production users to receive changes. The signals from the First ring are considered as a part of the release process to the Broad ring.<p><p>The goal with this deployment ring is to cross the **500**-device threshold needed to generate statistically significant analysis at the tenant level. These extra devices allow Windows Autopatch to consider the effect of a release on the rest of your devices and evaluate if a targeted action for your tenant is needed.</p> |
| Broad | Either **80%** or **90%** | The Broad ring is the last group of users to receive software update deployments. Since it contains most of the devices registered with Windows Autopatch, it favors stability over speed in a software update deployment.|
| N/A | **zero** | The Last ring is intended to be used for either specialized devices or devices that belong to VIP/executives in an organization. Windows Autopatch doesn't automatically add devices to this deployment ring. |

## Automated deployment ring remediation functions

Windows Autopatch monitors device membership in its deployment rings, except for the **Modern Workplace Devices-Windows Autopatch-Test**, **Windows Autopatch - Test** and **Windows Autopatch - Last** rings, to provide automated deployment ring remediation functions to mitigate the risk of not having its managed devices being part of one of its deployment rings. These automated functions help mitigate risk of potentially having devices in a vulnerable state, and exposed to security threats in case they're not receiving update deployments due to either:

- Changes performed by the IT admin on objects created by the Windows Autopatch tenant enrollment process, or
- An issue occurred which prevented devices from getting a deployment ring assigned during the device registration process.

There are two automated deployment ring remediation functions:

| Function | Description |
| ----- | ----- |
| Check device deployment ring membership | Every hour, Windows Autopatch checks to see if any of its managed devices aren't part of one of the deployment rings. If a device isn't part of a deployment ring, Windows Autopatch randomly assigns the device to one of its deployment rings (except for the **Modern Workplace Devices-Windows Autopatch-Test**, **Windows Autopatch - Test and Windows Autopatch - Last** rings). |
| Multi-deployment ring device remediator | Every hour, Windows Autopatch checks to see if any of its managed devices are part of multiple deployment rings (except for the **Modern Workplace Devices-Windows Autopatch-Test**, **Windows Autopatch - Test** and **Windows Autopatch - Last** rings). If a device is part of multiple deployment rings, Windows Autopatch randomly removes the device until the device is only part of one deployment ring. |

> [!IMPORTANT]
> Windows Autopatch automated deployment ring functions don't assign or remove devices to or from the following deployment rings:<li>**Modern Workplace Devices-Windows Autopatch-Test**</li><li>**Windows Autopatch - Test**</li><li>**Windows Autopatch - Last**</li></ul>
