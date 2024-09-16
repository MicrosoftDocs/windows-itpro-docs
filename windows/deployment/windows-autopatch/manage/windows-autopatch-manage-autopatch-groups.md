---
title: Manage Windows Autopatch groups
description: This article explains how to manage Autopatch groups
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Manage Windows Autopatch groups

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Autopatch groups help Microsoft Cloud-Managed services meet organizations where they are in their update management journey.

An Autopatch group is a logical container or unit that groups several [Microsoft Entra groups](/azure/active-directory/fundamentals/active-directory-groups-view-azure-portal), and software update policies, such as [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) and [feature updates policy for Windows 10 and later policies](/mem/intune/protect/windows-10-feature-updates).

Before you start managing Autopatch groups, ensure you meet the [Windows Autopatch groups prerequisites](../deploy/windows-autopatch-groups-overview.md#prerequisites).

## Create an Autopatch group

> [!IMPORTANT]
> Windows Autopatch creates the device-based Microsoft Entra ID assigned groups based on the choices made in the deployment ring composition page. Additionally, the service assigns the update ring policies for each deployment ring created in the Autopatch group based on the choices made in the Windows Update settings page as part of the Autopatch group guided end-user experience.

> [!TIP]
> For more information on workloads supported by Windows Autopatch groups, see [Supported software workloads](../deploy/windows-autopatch-groups-overview.md#software-update-workloads).<ul><li>To manage Microsoft 365 Apps for enterprise, you must create an Autopatch group first and [set the Microsoft 365 app update setting to Allow](../manage/windows-autopatch-microsoft-365-apps-enterprise.md#allow-or-block-microsoft-365-app-updates).</li><li>To manage Microsoft Edge updates, you must create an Autopatch group first and [set the Edge update setting to Allow](../manage/windows-autopatch-edge.md#allow-or-block-microsoft-edge-updates).</li></ul>

**To create an Autopatch group:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Tenant administration** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Autopatch groups**.
1. In the **Autopatch groups** blade, select **Create**.
1. In the **Basics** page, enter a **name** and a **description** then select **Next: Deployment rings**.
    1. Enter up to 64 characters for the Autopatch group name and 150 characters maximum for the description. The Autopatch group name is appended to both the update rings and the DSS policy names that get created once the Autopatch group is created.
1. In the **Deployment rings** page, select **Add deployment ring** to add the number of deployment rings to the Autopatch group.
1. Each new deployment ring added must have either a Microsoft Entra device group assigned to it, or a Microsoft Entra group that is dynamically distributed across your deployments rings using defined percentages.
    1. In the **Dynamic groups** area, select **Add groups** to select one or more existing device-based Microsoft Entra groups to be used for Dynamic group distribution.
    1. In the **Dynamic group distribution** column, select the desired deployment ring checkbox. Then, either:
        1. Enter the percentage of devices that should be added from the Microsoft Entra groups selected in step 9. The percentage calculation for devices must equal to 100%, or
        1. Select **Apply default dynamic group distribution** to use the default values.
1. In the **Assigned group** column, select **Add group to ring** to add an existing Microsoft Entra group to any of the defined deployment rings. The **Test** and **Last** deployment rings only support Assigned group distribution. These deployment rings don't support Dynamic distribution.
1. Select **Next: Windows Update settings**.
1. Select the **horizontal ellipses (…)** > **Manage deployment cadence** to [customize your gradual rollout of Windows quality and feature updates](../manage/windows-autopatch-customize-windows-update-settings.md). Select **Save**.
1. Select the **horizontal ellipses (…)** > **Manage notifications** to customize the end-user experience when receiving Windows updates. Select **Save**.
1. Select **Review + create** to review all changes made.
1. Once the review is done, select **Create** to save your Autopatch group.

> [!CAUTION]
> **Don't** modify the Microsoft Entra group membership types (Assigned and Dynamic). Otherwise, the Windows Autopatch service won't be able to read the device group membership from these groups, and causes the Autopatch groups feature and other service-related operations to not work properly.<p>Additionally, it's not supported to have Configuration Manager collections directly synced to any Microsoft Entra group created by Autopatch groups.</p>

> [!CAUTION]
> A device-based Microsoft Entra group can only be used with one deployment ring in an Autopatch group at a time. This applies to deployment rings within the same Autopatch group and across different deployment rings across different Autopatch groups. If you try to create or edit an Autopatch group to use a device-based Microsoft Entra group that's been already used, you'll receive an error that prevents you from creating or editing the Autopatch group.

## Edit an Autopatch group

> [!TIP]
> You can't edit an Autopatch group when there's one or more Windows feature update releases targeted to it. If you try to edit an Autopatch group with one or more ongoing Windows feature update releases targeted to it, you get the following informational banner message: "**Some settings are not allowed to be modified as there's one or more on-going Windows feature update release targeted to this Autopatch group.**"
> For more information on release and phase statuses, see [Windows feature update](../manage/windows-autopatch-windows-feature-update-overview.md).

**To edit an Autopatch group:**

1. Select the **horizontal ellipses (…)** > **Edit** for the Autopatch group you want to edit.
1. You can only modify the **description** of an Autopatch group. You **can't** modify the name. Once the description is modified, select **Next: Deployment rings**. To rename an Autopatch group, see [Rename an Autopatch group](#rename-an-autopatch-group).
1. Make the necessary changes in the **Deployment rings** page, then select **Next: Windows Update settings**.
1. Make the necessary changes in the **Windows Update settings** page, then select **Next: Review + save**.
1. Select **Review + create** to review all changes made.
1. Once the review is done, select **Save** to finish editing the Autopatch group.

> [!IMPORTANT]
> Windows Autopatch creates the device-based Microsoft Entra ID assigned groups based on the choices made in the deployment ring composition page. Additionally, the service assigns the update ring policies for each deployment ring created in the Autopatch group based on the choices made in the Windows Update settings page as part of the Autopatch group guided end-user experience.

## Rename an Autopatch group

**To rename an Autopatch group:**

1. Select the **horizontal ellipses (…)** > **Rename** for the Autopatch group you want to rename. The **Rename Autopatch group** fly-in opens.
1. In the **New Autopatch group name**, enter the new Autopatch group name of your choice, then select **Rename group**.

> [!IMPORTANT]
> Autopatch supports up to 64 characters for the Autopatch group name. Additionally, when you rename a Autopatch group all [update rings for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-update-rings) and [feature updates for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-feature-updates) associated with the Autopatch group are renamed to include the new Autopatch group name you define in its name string. Also, when renaming an Autopatch group all Microsoft Entra groups representing the Autopatch group's deployment rings are renamed to include the new Autopatch group name you define in its name string.

## Delete an Autopatch group

**To delete an Autopatch group:**

1. Select the **horizontal ellipses (…)** > **Delete** for the Autopatch group you want to delete.
1. Select **Yes** to confirm you want to delete the Autopatch group.

> [!CAUTION]
> You can't delete an Autopatch group when it's being used as part of one or more active or paused feature update releases. However, you can delete an Autopatch group when the release for either Windows quality or feature updates have either the **Scheduled** or **Paused** statuses.

## Manage device conflict scenarios when using Autopatch groups

Overlap in device membership is a common scenario when working with device-based Microsoft Entra groups. Sometimes dynamic queries can be large in scope or the same assigned device membership can be used across different Microsoft Entra groups.

Since Autopatch groups allow you to use your existing Microsoft Entra groups to create your own deployment ring composition, the service takes on the responsibility of monitoring and automatically solving some of the device conflict scenarios that might occur.

> [!CAUTION]
> A device-based Microsoft Entra group can only be used with one deployment ring in an Autopatch group at a time. This applies to deployment rings within the same Autopatch group and across different deployment rings across different Autopatch groups. If you try to create or edit an Autopatch group to use a device-based Microsoft Entra group that's been already used, you'll receive an error that prevents you from creating or editing the Autopatch group.

### Device conflict in deployment rings within an Autopatch group

Autopatch groups use the following logic to solve device conflicts on your behalf within an Autopatch group:

| Step | Description |
| -----  | ----- |
| Step 1: Checks for the deployment ring distribution type (**Assigned** or **Dynamic**) that the device belongs to. | For example, if a device is part of one deployment ring with **Dynamic** distribution (Ring3), and one deployment ring with **Assigned** distribution (Test) within the same Autopatch group, the deployment ring with **Assigned** distribution (Test) takes precedence over the one with the **Dynamic** distribution type (Ring3). |
| Step 2: Checks for deployment ring ordering when device belongs to one or more deployment ring with the same distribution type (**Assigned** or **Dynamic**) | For example, if a device is part of one deployment ring with **Assigned** distribution (Test), and in another deployment ring with **Assigned** distribution (Ring3) within the **same** Autopatch group, the deployment ring that comes later (Ring3) takes precedence over the deployment ring that comes earlier (Test) in the deployment ring order. |

> [!IMPORTANT]
> When a device belongs to a deployment ring that has combined distribution types (**Assigned** and **Dynamic**), and a deployment ring that has only the **Dynamic** distribution type, the deployment ring with the combined distribution types takes precedence over the one with only the **Dynamic** distribution. If a device belongs to two deployment rings that have combined distribution types (**Assigned** and **Dynamic**), the deployment ring that comes later takes precedence over the deployment ring that comes earlier in the deployment ring order.

### Device conflict across different Autopatch groups

Device conflict across different deployment rings in different Autopatch groups might occur, review the following examples about how the Windows Autopatch services handles the following scenarios:

#### Same device in different deployment rings across different Autopatch groups

| Conflict scenario | Conflict resolution |
| -----  | ----- |
| You, the IT admin at Contoso Ltd., are using several Autopatch groups. While navigating through devices in the Windows Autopatch Devices blade, you notice that the same device is part of different deployment rings across several different Autopatch groups. This device appears as **Not ready**. | You must resolve this conflict.<p>Autopatch groups inform you about the device conflict in the [**Devices report**](../deploy/windows-autopatch-register-devices.md#devices-report). Select the **Not ready** status for the device you want to address. You're required to manually indicate which of the existing Autopatch groups the device should exclusively belong to.</p> |

#### Device conflict before device registration

When you create or edit an Autopatch group, Windows Autopatch checks if the devices that are part of the Microsoft Entra groups, used in Autopatch groups’ deployment rings, are registered with the service.

| Conflict scenario | Conflict resolution |
| -----  | ----- |
| Device conflict before device registration due to device membership overlap | You must resolve this conflict.<p>Devices fail to register with the service and are marked with a **Not registered** status. You’re required to make sure the Microsoft Entra groups that are used in an Autopatch group don’t have device membership overlaps.</p> |
