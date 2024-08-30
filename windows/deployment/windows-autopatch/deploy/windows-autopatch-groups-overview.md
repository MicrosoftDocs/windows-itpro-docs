---
title: Windows Autopatch groups overview
description: This article explains what Autopatch groups are
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

# Windows Autopatch groups

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

As organizations move to a managed-service model where Microsoft manages update processes on their behalf, they’re challenged with having the right representation of their organizational structures followed by their own deployment cadence. Windows Autopatch groups help organizations manage updates in a way that makes sense for their businesses with no extra cost or unplanned disruptions.

## What are Windows Autopatch groups?

An Autopatch group is a logical container or unit that groups several [Microsoft Entra groups](/entra/fundamentals/groups-view-azure-portal), and software update policies, such as [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) and [feature updates for Windows 10 and later policies](/mem/intune/protect/windows-10-feature-updates).

Autopatch groups are intended to help organizations that require a more precise representation of their organization's structures along with their own update deployment cadence in the service.

By default, an Autopatch group has the Test and Last deployment rings automatically present. For more information, see [Test and Last deployment rings](#test-and-last-deployment-rings).

## Key benefits

Autopatch groups help Microsoft Cloud-Managed services meet organizations where they are in their update management journey. Key benefits include:

| Benefit | Description |
| ----- | ----- |
| Replicating your organizational structure | You can set up Autopatch groups to replicate your organizational structures represented by your existing device-based Microsoft Entra group targeting logic. |
| Having a flexible number of deployments | Autopatch groups give you the flexibility of having the right number of deployment rings that work within your organization. You can set up to 15 deployment rings per Autopatch group. |
| Deciding which devices belong to deployment rings | Along with using your existing device-based Microsoft Entra groups and choosing the number of deployment rings, you can also decide which devices belong to deployment rings during the device distribution process when setting up Autopatch groups. |
| Choosing the deployment cadence | You choose the right software update deployment cadence for your business. |

## Prerequisites

Before you start managing Autopatch groups, ensure you meet the following prerequisites:

| Prerequisite | Details |
| --- | --- |
| Review [Windows Autopatch groups overview documentation](../deploy/windows-autopatch-groups-overview.md) | Understand [key benefits](../deploy/windows-autopatch-groups-overview.md#key-benefits) and [common ways to use Autopatch groups](../deploy/windows-autopatch-groups-overview.md#common-ways-to-use-autopatch-groups) within your organization. |
| Make sure you have [app-only auth turned on in your Windows Autopatch tenant](../monitor/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions). Otherwise, the Autopatch groups functionality doesn't work properly. Autopatch uses app-only auth to: |<ul><li>Read device attributes to successfully register devices.</li><li>Manage all configurations related to the operation of the service.</li></ul> |
| Make sure that all device-based Microsoft Entra groups you intend to use with Autopatch groups are created before using the feature. | Review your existing Microsoft Entra group dynamic queries and direct device memberships to:<ul><li>Avoid having device membership overlaps in between device-based Microsoft Entra groups that are going to be used with Autopatch groups.</li><li>Prevent device conflicts within an Autopatch group or across several Autopatch groups. **Autopatch groups doesn't support user-based Microsoft Entra groups**.</li></ul> |
| Ensure devices used with your existing Microsoft Entra groups meet [device registration prerequisite checks](../deploy/windows-autopatch-device-registration-overview.md#prerequisites-for-device-registration) when being registered with the service | Autopatch groups register devices on your behalf, and device readiness states are determined based on the registration state and if any applicable alerts are targeting the device. For more information, see the [Devices report](../deploy/windows-autopatch-register-devices.md#devices-report). |

> [!TIP]
> [Update rings](/mem/intune/protect/windows-10-update-rings) and [feature updates](/mem/intune/protect/windows-10-feature-updates) for Windows 10 and later policies that are created and managed by Windows Autopatch can be restored using the [Policy health](../monitor/windows-autopatch-policy-health-and-remediation.md) feature. For more information on remediation actions, see [restore Windows update policies](../monitor/windows-autopatch-policy-health-and-remediation.md#restore-missing-windows-update-policies).

## Register devices into Autopatch groups

Autopatch groups register devices with the Windows Autopatch service when you either [create](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) or [edit an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group). For more information, see [Register devices into Autopatch groups](../deploy/windows-autopatch-register-devices.md#register-devices-into-autopatch-groups).

## High-level architecture diagram overview

:::image type="content" source="../media/windows-autopatch-groups-high-level-architecture-diagram.png" alt-text="Overview of the device registration process" lightbox="../media/windows-autopatch-groups-high-level-architecture-diagram.png":::

An Autopatch group is a function app that is part of the device registration micro service within the Windows Autopatch service. The following table explains the high-level workflow:

| Step | Description |
| ----- | ----- |
| Step 1: Create an Autopatch group | Create an Autopatch group. Autopatch groups register devices with the Windows Autopatch service when you either [create](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) or [edit an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group). |
| Step 2: Windows Autopatch uses Microsoft Graph to create Microsoft Entra ID and policy assignments | Windows Autopatch service uses Microsoft Graph to coordinate the creation of:<ul><li>Microsoft Entra groups</li><li>Software update policy assignments with other Microsoft services, such as Microsoft Entra ID, Intune, and Windows Update for Business (WUfB) based on IT admin choices when you [create](../manage/windows-autopatch-manage-autopatch-groups.md#create-an-autopatch-group) or [edit an Autopatch group](../manage/windows-autopatch-manage-autopatch-groups.md#edit-an-autopatch-group).</li></ul> |
| Step 3: Intune assigns software update policies | Once Microsoft Entra groups are created in the Microsoft Entra service, Intune is used to assign the software update policies to these groups and provide the number of devices that need the software update policies to the Windows Update for Business (WUfB) service. |
| Step 4: Windows Update for Business responsibilities | Windows Update for Business (WUfB) is the service responsible for:<ul><li>Delivering those update policies</li><li>Retrieving update deployment statuses back from devices</li><li>Sending back the status information to Microsoft Intune, and then to the Windows Autopatch service</li></ul> |

## Autopatch group deployment rings

Deployment rings make it possible for an Autopatch group to have software update deployments sequentially delivered in a gradual rollout within the Autopatch group.

Windows Autopatch aligns with Microsoft Entra ID and Intune terminology for device group management. There are two types of deployment ring group distribution in Autopatch groups:

| Deployment ring distribution | Description |
| ----- | ----- |
| Dynamic | You can use one or more device-based Microsoft Entra groups, either dynamic query-based or assigned to use in your deployment ring composition.<p>Microsoft Entra groups that are used with the Dynamic distribution type can be used to distribute devices across several deployment rings based on percentage values that can be customized.</p> |
| Assigned | You can use one single device-based Microsoft Entra group, either dynamic query-based, or assigned to use in your deployment ring composition. |
| Combination of Dynamic and Assigned | To provide a greater level of flexibility when working on deployment ring compositions, you can combine both device distribution types in Autopatch groups.<p>The combination of Dynamic and Assigned device distribution is **not** supported for the Test and Last deployment ring in Autopatch groups.</p> |

### Test and Last deployment rings

Both the **Test** and **Last** deployment rings are default deployment rings that are automatically present in an Autopatch group. These default deployment rings provide the recommended minimum number of deployment rings that an Autopatch group should have.

If you don't add more deployment rings when creating an Autopatch group, the Test deployment ring can be used as the pilot deployment ring and Last can be used as the production deployment ring.

> [!IMPORTANT]
> Both the **Test** and **Last** deployment rings **can't** be removed or renamed from Autopatch groups. Autopatch groups don't support the use of one single deployment ring as part of its deployment ring composition because you need **at least two deployment rings** for their gradual rollout. If you must implement a specific scenario with a single deployment ring, and gradual rollout isn't required, consider managing these devices outside Autopatch groups.

> [!TIP]
> Both the **Test** and **Last** deployment rings only support one single Microsoft Entra group assignment at a time. If you need to assign more than one Microsoft Entra group, you can nest the other Microsoft Entra groups under the ones you plan to use with the **Test** and **Last** deployment rings. Only one level of Microsoft Entra group nesting is supported.

## Common ways to use Autopatch groups

The following are three common uses for using Autopatch groups.

### Use case #1

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd. Your organization needs to plan a gradual rollout of software updates within specific critical business units or departments to help mitigate the risk of end-user disruption. | You can create an Autopatch group for each of your business units. For example, you can create an Autopatch group for the finance department and breakdown the deployment ring composition per the different user personas or based on how critical certain user groups can be for the department and then for the business.<p>The following is a visual representation of a gradual rollout for Contoso’s Finance department.</p> |

:::image type="content" source="../media/autopatch-groups-finance-department-example.png" alt-text="Finance department example" lightbox="../media/autopatch-groups-finance-department-example.png":::

> [!IMPORTANT]
> Once Autopatch groups are setup, the release of either Windows quality or feature updates will be deployed sequentially through its deployment rings.

### Use case #2

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd. Your branch location in Chicago needs to plan a gradual rollout of software updates within specific departments to make sure the Chicago office doesn’t experience disruptions in its operations. | You can create an Autopatch group for the branch location in Chicago and breakdown the deployment ring composition per the departments within the branch location.<p>The following is a visual representation of a gradual rollout for the Contoso Chicago branch location.</p> |

:::image type="content" source="../media/autopatch-groups-contoso-chicago-example.png" alt-text="Contoso Chicago example" lightbox="../media/autopatch-groups-contoso-chicago-example.png":::

> [!IMPORTANT]
> Once Autopatch groups are setup, the release of either Windows quality or feature updates will be deployed sequentially through its deployment rings.

## Supported configurations

The following configurations are supported when using Autopatch groups.

### Software update workloads

Autopatch groups work with the following software update workloads:

- [Windows feature updates](../manage/windows-autopatch-windows-feature-update-overview.md)
- [Windows quality updates](../manage/windows-autopatch-windows-quality-update-overview.md)
- [Driver and firmware updates](../manage/windows-autopatch-manage-driver-and-firmware-updates.md)
- [Microsoft 365 Apps for enterprise](../manage/windows-autopatch-microsoft-365-apps-enterprise.md)
- [Microsoft Edge](../manage/windows-autopatch-edge.md)

### Maximum number of Autopatch groups

Windows Autopatch supports up to 50 Autopatch groups in your tenant. Each Autopatch group supports up to 15 deployment rings.

> [!NOTE]
> If you reach the maximum number of Autopatch groups supported (50), and try to create more Autopatch groups, the "Create" option in the Autopatch groups blade will be greyed out.

To manage your Autopatch groups, see [Manage Windows Autopatch groups](../manage/windows-autopatch-manage-autopatch-groups.md).
