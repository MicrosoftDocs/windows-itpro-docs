---
title: Windows Autopatch groups overview
description: This article explains what Autopatch groups are
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Windows Autopatch groups overview

As organizations move to a managed-service model where Microsoft manages update processes on their behalf, they're challenged with having the right representation of their organizational structures followed by their own deployment cadence. Windows Autopatch groups help organizations manage updates in a way that makes sense for their businesses with no extra cost or unplanned disruptions.

## What are Windows Autopatch groups?

Autopatch groups is a logical container or unit that groups several [Microsoft Entra groups](/azure/active-directory/fundamentals/active-directory-groups-view-azure-portal), and software update policies, such as [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) and [feature updates for Windows 10 and later policies](/mem/intune/protect/windows-10-feature-updates).

## Key benefits

Autopatch groups help Microsoft Cloud-Managed services meet organizations where they are in their update management journey. Key benefits include:

| Benefit | Description |
| ----- | ----- |
| Replicating your organizational structure | You can set up Autopatch groups to replicate your organizational structures represented by your existing device-based Microsoft Entra group targeting logic. |
| Having a flexible number of deployments | Autopatch groups give you the flexibility of having the right number of deployment rings that work within your organization. You can set up to 15 deployment rings per Autopatch group. |
| Deciding which device(s) belong to deployment rings | Along with using your existing device-based Microsoft Entra groups and choosing the number of deployment rings, you can also decide which devices belong to deployment rings during the device registration process when setting up Autopatch groups. |
| Choosing the deployment cadence | You choose the right software update deployment cadence for your business. |

## High-level architecture diagram overview

:::image type="content" source="../media/windows-autopatch-groups-high-level-architecture-diagram.png" alt-text="Overview of the device registration process" lightbox="../media/windows-autopatch-groups-high-level-architecture-diagram.png":::

Autopatch groups is a function app that is part of the device registration micro service within the Windows Autopatch service. The following table explains the high-level workflow:

| Step | Description |
| ----- | ----- |
| Step 1: Create an Autopatch group | Create an Autopatch group. |
| Step 2: Windows Autopatch uses Microsoft Graph to create Microsoft Entra ID and policy assignments | Windows Autopatch service uses Microsoft Graph to coordinate the creation of:<ul><li>Microsoft Entra groups</li><li>Software update policy assignments with other Microsoft services, such as Microsoft Entra ID, Intune, and Windows Update for Business (WUfB) based on IT admin choices when you create or edit an Autopatch group.</li></ul> |
| Step 3: Intune assigns software update policies | Once Microsoft Entra groups are created in the Microsoft Entra service, Intune is used to assign the software update policies to these groups and provide the number of devices that need the software update policies to the Windows Update for Business (WUfB) service. |
| Step 4: Windows Update for Business responsibilities | Windows Update for Business (WUfB) is the service responsible for:<ul><li>Delivering those update policies</li><li>Retrieving update deployment statuses back from devices</li><li>Sending back the status information to Microsoft Intune, and then to the Windows Autopatch service</li></ul> |

## Key concepts

There are a few key concepts to be familiar with before using Autopatch groups.

### About the Default Autopatch group

> [!NOTE]
> The Default Autopatch group is recommended for organizations that can meet their business needs using the pre-configured five deployment ring composition.

The Default Autopatch group uses Windows Autopatch's default update management process recommendation. The Default Autopatch group contains:

- A set of **[five deployment rings](#default-deployment-ring-composition)**
- A default update deployment cadence for both [Windows quality](../operate/windows-autopatch-groups-windows-quality-update-overview.md) and [feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md).

The Default Autopatch group is intended to serve organizations that are looking to:

- Enroll into the service
- Align to Windows Autopatch's default update management process without requiring more customizations.

The Default Autopatch group **can't** be deleted or renamed. However, you can customize its deployment ring composition to add and/or remove deployment rings, and you can also customize the update deployment cadences for each deployment ring within it.

#### Default deployment ring composition

By default, the following [software update-based deployment rings](#software-based-deployment-rings), represented by Microsoft Entra ID assigned groups, are used:

- Windows Autopatch - Test
- Windows Autopatch - Ring1
- Windows Autopatch - Ring2
- Windows Autopatch - Ring3
- Windows Autopatch - Last

**Windows Autopatch - Test** and **Last** can be only used as **Assigned** device distributions. **Windows Autopatch - Ring1**, **Ring2** and **Ring3** can be used with either **Assigned** or **Dynamic** device distributions, or have a combination of both device distribution types.

> [!TIP]
> For more information about the differences between **Assigned** and **Dynamic** deployment ring distribution types, see [about deployment rings](#about-deployment-rings). Only deployment rings that are placed in between the **Test** and the **Last** deployment rings can be used with the **Dynamic** deployment ring distributions.

> [!CAUTION]
> These and other Microsoft Entra ID assigned groups created by Autopatch groups **can't** be missing in your tenant, otherwise, Autopatch groups might not function properly.

The **Last** deployment ring, the fifth deployment ring in the Default Autopatch group, is intended to provide coverage for scenarios where a group of specialized devices and/or VIP/Executive users. They must receive software update deployments after the organization's general population to mitigate disruptions to your organization's critical businesses.

#### Default update deployment cadences

The Default Autopatch group provides a default update deployment cadence for its deployment rings except for the **Last** (fifth) deployment ring.

##### Update rings policy for Windows 10 and later

Autopatch groups set up the [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) for each of its deployment rings in the Default Autopatch group. See the following default policy values:

| Policy name | Microsoft Entra group assignment | Quality updates deferral in days | Feature updates deferral in days | Feature updates uninstall window in days | Deadline for quality updates in days | Deadline for feature updates in days | Grace period | Auto restart before deadline |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch Update Policy - default - Test | Windows Autopatch - Test | 0 | 0 | 30 | 0 | 5 | 0 | Yes |
| Windows Autopatch Update Policy - default - Ring1 | Windows Autopatch - Ring1 | 1 | 0 | 30 | 2 | 5 |2 | Yes |
| Windows Autopatch Update Policy - default - Ring2 | Windows Autopatch - Ring2 | 6 | 0 | 30 | 2 | 5 | 2 | Yes |
| Windows Autopatch Update Policy - default - Ring3 | Windows Autopatch - Ring3 | 9 | 0 | 30 | 5 | 5 | 2 | Yes |
| Windows Autopatch Update Policy - default - Last | Windows Autopatch - Last | 11 | 0 | 30 | 3 | 5 | 2 | Yes |

##### Feature update policy for Windows 10 and later

Autopatch groups set up the [feature updates for Windows 10 and later policies](/mem/intune/protect/windows-10-feature-updates) for each of its deployment rings in the Default Autopatch group, see the following default policy values:

| Policy name | Microsoft Entra group assignment |Feature update version | Rollout options | First deployment ring availability | Final deployment ring availability | Day between deployment rings | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - DSS Policy [Test] | Windows Autopatch - Test | Windows 10 21H2 | Make update available as soon as possible | N/A | N/A | N/A | June 11, 2024; 1:00AM |
| Windows Autopatch - DSS Policy [Ring1] | Windows Autopatch - Ring1 | Windows 10 21H2 | Make update available as soon as possible | N/A | N/A | N/A | June 11, 2024; 1:00AM |
| Windows Autopatch - DSS Policy [Ring2] | Windows Autopatch - Ring2 | Windows 10 21H2 | Make update available as soon as possible | December 14, 2022 | December 21, 2022 | 1 | June 11, 2024; 1:00AM |
| Windows Autopatch - DSS Policy [Ring3] | Windows Autopatch - Ring3 | Windows 10 21H2 | Make update available as soon as possible | December 15, 2022 | December 29, 2022 | 1 | June 11, 2024; 1:00AM |
| Windows Autopatch - DSS Policy [Last] | Windows Autopatch - Last | Windows 10 21H2 | Make update available as soon as possible | December 15, 2022 | December 29, 2022 | 1 | June 11, 2024; 1:00AM |

### About Custom Autopatch groups

> [!NOTE]
> The [Default Autopatch group](#about-the-default-autopatch-group) is recommended for organizations that can meet their business needs using the pre-configured five deployment ring composition.

Custom Autopatch groups are intended to help organizations that require a more precise representation of their organization's structures along with their own update deployment cadence in the service.

By default, a Custom Autopatch group has the Test and Last deployment rings automatically present. For more information, see [Test and Last deployment rings](#about-the-test-and-last-deployment-rings).

### About deployment rings

Deployment rings make it possible for an Autopatch group to have software update deployments sequentially delivered in a gradual rollout within the Autopatch group.

Windows Autopatch aligns with Microsoft Entra ID and Intune terminology for device group management. There are two types of deployment ring group distribution in Autopatch groups:

| Deployment ring distribution | Description |
| ----- | ----- |
| Dynamic | You can use one or more device-based Microsoft Entra groups, either dynamic query-based or assigned to use in your deployment ring composition.<p>Microsoft Entra groups that are used with the Dynamic distribution type can be used to distribute devices across several deployment rings based on percentage values that can be customized.</p> |
| Assigned | You can use one single device-based Microsoft Entra group, either dynamic query-based, or assigned to use in your deployment ring composition. |
| Combination of Dynamic and Assigned | To provide a greater level of flexibility when working on deployment ring compositions, you can combine both device distribution types in Autopatch groups.<p>The combination of Dynamic and Assigned device distribution is **not** supported for the Test and Last deployment ring in Autopatch groups.</p> |

#### About the Test and Last deployment rings

Both the **Test** and **Last** deployment rings are default deployment rings that are automatically present in the Default Autopatch group and Custom Autopatch groups. These default deployment rings provide the recommended minimum number of deployment rings that an Autopatch group should have.

If you only keep Test and Last deployment rings in your Default Autopatch group, or you don't add more deployment rings when creating a Custom Autopatch group, the Test deployment ring can be used as the pilot deployment ring and Last can be used as the production deployment ring.

> [!IMPORTANT]
> Both the **Test** and **Last** deployment rings **can't** be removed or renamed from the Default or Custom Autopatch groups. Autopatch groups don't support the use of one single deployment ring as part of its deployment ring composition because you need at least two deployment rings for their gradual rollout. If you must implement a specific scenario with a single deployment ring, and gradual rollout isn't required, consider managing these devices outside Windows Autopatch.

> [!TIP]
> Both the **Test** and **Last** deployment rings only support one single Microsoft Entra group assignment at a time. If you need to assign more than one Microsoft Entra group, you can nest the other Microsoft Entra groups under the ones you plan to use with the **Test** and **Last** deployment rings. Only one level of Microsoft Entra group nesting is supported.

#### Service-based versus software update-based deployment rings

Autopatch groups creates two different layers. Each layer contains its own deployment ring set.

> [!IMPORTANT]
> Both service-based and software update-based deployment ring sets are, by default, assigned to devices that successfully register with Windows Autopatch.

##### Service-based deployment rings

The service-based deployment ring set is exclusively used to keep Windows Autopatch updated with both service and device-level configuration policies, apps and APIs needed for core functions of the service.

The following are the Microsoft Entra ID assigned groups that represent the service-based deployment rings. These groups can't be deleted or renamed:

- Modern Workplace Devices-Windows Autopatch-Test
- Modern Workplace Devices-Windows Autopatch-First
- Modern Workplace Devices-Windows Autopatch-Fast
- Modern Workplace Devices-Windows Autopatch-Broad

> [!CAUTION]
> **Don't** modify the Microsoft Entra group membership types (Assigned and Dynamic). Otherwise, the Windows Autopatch service won't be able to read the device group membership from these groups, and causes the Autopatch groups feature and other service-related operations to not work properly. <p>Additionally, it's **not** supported to have Configuration Manager collections directly synced to any Microsoft Entra group created by Autopatch groups.</p>

##### Software-based deployment rings

The software-based deployment ring set is exclusively used with software update management policies, such as the Windows update ring and feature update policies, in the Default Windows Autopatch group.

The following are the Microsoft Entra ID assigned groups that represent the software updates-based deployment rings. These groups can't be deleted or renamed:

- Windows Autopatch - Test
- Windows Autopatch - Ring1
- Windows Autopatch - Ring2
- Windows Autopatch - Ring3
- Windows Autopatch - Last

> [!IMPORTANT]
> Additional Microsoft Entra ID assigned groups are created and added to list when you add more deployment rings to the Default Autopatch group.

> [!CAUTION]
> **Don't** modify the Microsoft Entra group membership types (Assigned and Dynamic). Otherwise, the Windows Autopatch service won't be able to read the device group membership from these groups, and causes the Autopatch groups feature and other service-related operations to not work properly. <p>Additionally, it's **not** supported to have Configuration Manager collections directly synced to any Microsoft Entra group created by Autopatch groups.</p>

### About device registration

Autopatch groups register devices with the Windows Autopatch service when you either [create](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#create-a-custom-autopatch-group) or [edit a Custom Autopatch group](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#edit-the-default-or-a-custom-autopatch-group), and/or when you [edit the Default Autopatch group](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#edit-the-default-or-a-custom-autopatch-group) to use your existing Microsoft Entra groups instead of the Windows Autopatch Device Registration group provided by the service.

## Common ways to use Autopatch groups

The following are three common uses for using Autopatch groups.

### Use case #1

> [!NOTE]
> The [Default Autopatch group](#about-the-default-autopatch-group) is recommended for organizations that can meet their business needs using the pre-configured five deployment ring composition.

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd. And manage several Microsoft and non-Microsoft cloud services. You don't have extra time to spend setting up and managing several Autopatch groups.<p>Your organization currently operates its update management by using five deployment rings, but there's an opportunity to have flexible deployment cadences if it's precommunicated to your end-users.</p> | If you don't have thousands of devices to manage, use the Default Autopatch group for your organization. You can edit the Default Autopatch group to include additional deployment rings and/or slightly modify some of its default deployment cadences.<p>The Default Autopatch group is preconfigured and doesn't require extra configurations when registering devices with the Windows Autopatch service.</p><p>The following is a visual representation of a gradual rollout for the Default Autopatch group preconfigured and fully managed by the Windows Autopatch service.</p> |

:::image type="content" source="../media/autopatch-groups-default-autopatch-group.png" alt-text="Default Autopatch group" lightbox="../media/autopatch-groups-default-autopatch-group.png":::

### Use case #2

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd. Your organization needs to plan a gradual rollout of software updates within specific critical business units or departments to help mitigate the risk of end-user disruption. | You can create a Custom Autopatch group for each of your business units. For example, you can create a Custom Autopatch group for the finance department and breakdown the deployment ring composition per the different user personas or based on how critical certain user groups can be for the department and then for the business.<p>The following is a visual representation of a gradual rollout for Contoso's Finance department.</p> |

:::image type="content" source="../media/autopatch-groups-finance-department-example.png" alt-text="Finance department example" lightbox="../media/autopatch-groups-finance-department-example.png":::

> [!IMPORTANT]
> Once Autopatch groups are setup, the release of either Windows quality or feature updates will be deployed sequentially through its deployment rings.

### Use case #3

| Scenario | Solution |
| ----- | ----- |
| You're working as the IT admin at Contoso Ltd. Your branch location in Chicago needs to plan a gradual rollout of software updates within specific departments to make sure the Chicago office doesn't experience disruptions in its operations. | You can create a Custom Autopatch group for the branch location in Chicago and breakdown the deployment ring composition per the departments within the branch location.<p>The following is a visual representation of a gradual rollout for the Contoso Chicago branch location.</p> |

:::image type="content" source="../media/autopatch-groups-contoso-chicago-example.png" alt-text="Contoso Chicago example" lightbox="../media/autopatch-groups-contoso-chicago-example.png":::

> [!IMPORTANT]
> Once Autopatch groups are setup, the release of either Windows quality or feature updates will be deployed sequentially through its deployment rings.

## Supported configurations

The following configurations are supported when using Autopatch groups.

### Software update workloads

Autopatch groups works with the following software update workloads:

- [Windows quality updates](../operate/windows-autopatch-groups-windows-quality-update-overview.md)
- [Windows feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md)

### Maximum number of Autopatch groups

Windows Autopatch supports up to 50 Autopatch groups in your tenant. You can create up to 49 [Custom Autopatch groups](#about-custom-autopatch-groups) in addition to the [Default Autopatch group](#about-the-default-autopatch-group). Each Autopatch group supports up to 15 deployment rings.

> [!TIP]
> If you reach the maximum number of Autopatch groups supported (50), and try to create more Custom Autopatch groups, the "**Create**" option in the Autopatch groups blade will be greyed out.

To manage your Autopatch groups, see [Manage Windows Autopatch groups](../deploy/windows-autopatch-groups-manage-autopatch-groups.md).
