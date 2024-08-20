---
title: Manage Windows Autopatch groups
description: This article explains how to manage Autopatch groups
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: itpro-updates
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

Autopatch groups help Microsoft Cloud-Managed services meet organizations where they are in their update management journey.

Autopatch groups is a logical container or unit that groups several [Microsoft Entra groups](/azure/active-directory/fundamentals/active-directory-groups-view-azure-portal), and software update policies, such as [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) and [feature updates policy for Windows 10 and later policies](/mem/intune/protect/windows-10-feature-updates).

## Autopatch groups prerequisites

Before you start managing Autopatch groups, ensure you've met the following prerequisites:

- Review [Windows Autopatch groups overview documentation](../deploy/windows-autopatch-groups-overview.md) to understand [key benefits](../deploy/windows-autopatch-groups-overview.md#key-benefits), [concepts](../deploy/windows-autopatch-groups-overview.md#key-concepts) and [common ways to use Autopatch groups](../deploy/windows-autopatch-groups-overview.md#common-ways-to-use-autopatch-groups) within your organization.
- Ensure the following [update rings for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-update-rings) are created in your tenant:
	- Modern Workplace Update Policy [Test]-[Windows Autopatch]
	- Modern Workplace Update Policy [First]-[Windows Autopatch]
	- Modern Workplace Update Policy [Fast]-[Windows Autopatch]
	- Modern Workplace Update Policy [Broad]-[Windows Autopatch]
- Ensure the following [feature updates for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-feature-updates) are created in your tenant:
	- Windows Autopatch - DSS Policy [Test]
	- Windows Autopatch - DSS Policy [First]
	- Windows Autopatch - DSS Policy [Fast]
	- Windows Autopatch - DSS Policy [Broad]
- Ensure the following Microsoft Entra ID assigned groups are in your tenant before using Autopatch groups. **Don't** modify the Microsoft Entra group membership types (Assigned or Dynamic). Otherwise, the Windows Autopatch service won't be able to read the device group membership from these groups and causes the Autopatch groups feature and other service-related operations to not work properly.
    - Modern Workplace Devices-Windows Autopatch-Test
    - Modern Workplace Devices-Windows Autopatch-First
    - Modern Workplace Devices-Windows Autopatch-Fast
    - Modern Workplace Devices-Windows Autopatch-Broad
    - Windows Autopatch - Test
    - Windows Autopatch - Ring1
    - Windows Autopatch - Ring2
    - Windows Autopatch - Ring3
    - Windows Autopatch - Last
- Additionally, **don't** modify the Microsoft Entra group ownership of any of the groups above otherwise, Autopatch groups device registration process won't be able to add devices into these groups. If the ownership is modified, you must add the **Modern Workplace Management** enterprise application as the owner of these groups.
	- For more information, see [assign an owner or member of a group in Microsoft Entra ID](/azure/active-directory/privileged-identity-management/groups-assign-member-owner#assign-an-owner-or-member-of-a-group) for steps on how to add owners to Azure Microsoft Entra groups.
- Make sure you have [app-only auth turned on in your Windows Autopatch tenant](../operate/windows-autopatch-maintain-environment.md#windows-autopatch-tenant-actions). Otherwise, the Autopatch groups functionality won't work properly. Autopatch uses app-only auth to:
    - Read device attributes to successfully register devices.
    - Manage all configurations related to the operation of the service.
- Make sure that all device-based Microsoft Entra groups you intend to use with Autopatch groups are created prior to using the feature.
    - Review your existing Microsoft Entra group dynamic queries and direct device memberships to avoid having device membership overlaps in between device-based Microsoft Entra groups that are going to be used with Autopatch groups. This can help prevent device conflicts within an Autopatch group or across several Autopatch groups. **Autopatch groups doesn't support user-based Microsoft Entra groups**.
- Ensure devices used with your existing Microsoft Entra groups meet [device registration prerequisite checks](../deploy/windows-autopatch-register-devices.md#prerequisites-for-device-registration) when being registered with the service. Autopatch groups register devices on your behalf, and devices can be moved to **Registered** or **Not registered** tabs in the Devices blade accordingly.

> [!TIP]
> [Update rings](/mem/intune/protect/windows-10-update-rings) and [feature updates](/mem/intune/protect/windows-10-feature-updates) for Windows 10 and later policies that are created and managed by Windows Autopatch can be restored using the [Policy health](../operate/windows-autopatch-policy-health-and-remediation.md) feature. For more information on remediation actions, see [restore Windows update policies](../operate/windows-autopatch-policy-health-and-remediation.md#restore-windows-update-policies).

## Create a Custom Autopatch group

> [!NOTE]
> The Default Autopatch group is recommended for organizations that can meet their business needs using the pre-configured five deployment ring composition.

**To create a Custom Autopatch group:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release management** blade, select **Autopatch groups**.
1. In the **Autopatch groups** blade, select **Create**.
1. In **Basics** page, enter a **name** and a **description** then select **Next: Deployment rings**.
    1. Enter up to 64 characters for the Autopatch group name and 150 characters maximum for the description. The Autopatch group name is appended to both the update rings and the DSS policy names that get created once the Custom Autopatch group is created.
1. In **Deployment rings** page, select **Add deployment ring** to add the number of deployment rings to the Custom Autopatch group.
1. Each new deployment ring added must have either a Microsoft Entra device group assigned to it, or a Microsoft Entra group that is dynamically distributed across your deployments rings using defined percentages.
    1. In the **Dynamic groups** area, select **Add groups** to select one or more existing device-based Microsoft Entra groups to be used for Dynamic group distribution.
    1. In the **Dynamic group distribution** column, select the desired deployment ring checkbox. Then, either:
        1. Enter the percentage of devices that should be added from the Microsoft Entra groups selected in step 9. The percentage calculation for devices must equal to 100%, or
        1. Select **Apply default dynamic group distribution** to use the default values.
1. In the **Assigned group** column, select **Add group to ring** to add an existing Microsoft Entra group to any of the defined deployment rings. The **Test** and **Last** deployment rings only support Assigned group distribution. These deployment rings don't support Dynamic distribution.
1. Select **Next: Windows Update settings**.
1. Select the **horizontal ellipses (…)** > **Manage deployment cadence** to [customize your gradual rollout of Windows quality and feature updates](../operate/windows-autopatch-windows-update.md). Select **Save**.
1. Select the **horizontal ellipses (…)** > **Manage notifications** to customize the end-user experience when receiving Windows updates. Select **Save**.
1. Select **Review + create** to review all changes made.
1. Once the review is done, select **Create** to save your custom Autopatch group.

> [!CAUTION]
> A device-based Microsoft Entra group can only be used with one deployment ring in an Autopatch group at a time. This applies to deployment rings within the same Autopatch group and across different deployment rings across different Autopatch groups. If you try to create or edit an Autopatch group to use a device-based Microsoft Entra group that's been already used, you'll receive an error that prevents you from finish creating or editing the Autopatch group (Default or Custom).

> [!IMPORTANT]
> Windows Autopatch creates the device-based Microsoft Entra ID assigned groups based on the choices made in the deployment ring composition page. Additionally, the service assigns the update ring policies for each deployment ring created in the Autopatch group based on the choices made in the Windows Update settings page as part of the Autopatch group guided end-user experience.

## Edit the Default or a Custom Autopatch group

> [!TIP]
> You can't edit an Autopatch group when there's one or more Windows feature update releases targeted to it. If you try to edit an Autopatch group with one or more ongoing Windows feature update releases targeted to it, you get the following informational banner message: "**Some settings are not allowed to be modified as there's one or more on-going Windows feature update release targeted to this Autopatch group.**"
> See [Manage Windows feature update releases](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md) for more information on release and phase statuses.

**To edit either the Default or a Custom Autopatch group:**

1. Select the **horizontal ellipses (…)** > **Edit** for the Autopatch group you want to edit.
1. You can only modify the **description** of the Default or a Custom Autopatch group. You **can't** modify the name. Once the description is modified, select **Next: Deployment rings**.
1. Make the necessary changes in the **Deployment rings** page, then select **Next: Windows Update settings**.
1. Make the necessary changes in the **Windows Update settings** page, then select **Next: Review + save**.
1. Select **Review + create** to review all changes made.
1. Once the review is done, select **Save** to finish editing the Autopatch group.

> [!IMPORTANT]
> Windows Autopatch creates the device-based Microsoft Entra ID assigned groups based on the choices made in the deployment ring composition page. Additionally, the service assigns the update ring policies for each deployment ring created in the Autopatch group based on the choices made in the Windows Update settings page as part of the Autopatch group guided end-user experience.

## Rename a Custom Autopatch group

You **can't** rename the Default Autopatch group. However, you can rename a Custom Autopatch group.

**To rename a Custom Autopatch group:**

1. Select the **horizontal ellipses (…)** > **Rename** for the Custom Autopatch group you want to rename. The **Rename Autopatch group** fly-in opens.
1. In the **New Autopatch group name**, enter the new Autopatch group name of your choice, then click **Rename group**.

> [!IMPORTANT]
> Autopatch supports up to 64 characters for the custom Autopatch group name. Additionally, when you rename a custom Autopatch group all [update rings for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-update-rings) and [feature updates for Windows 10 and later policy in Intune](/mem/intune/protect/windows-10-feature-updates) associated with the custom Autopatch group are renamed to include the new Autopatch group name you define in its name string. Also, when renaming a custom Autopatch group all Microsoft Entra groups representing the custom Autopatch group's deployment rings are renamed to include the new Autopatch group name you define in its name string.

## Delete a Custom Autopatch group

You **can't** delete the Default Autopatch group. However, you can delete a Custom Autopatch group.

**To delete a Custom Autopatch group:**

1. Select the **horizontal ellipses (…)** > **Delete** for the Custom Autopatch group you want to delete.
1. Select **Yes** to confirm you want to delete the Custom Autopatch group.

> [!CAUTION]
> You can't delete a Custom Autopatch group when it's being used as part of one or more active or paused feature update releases. However, you can delete a Custom Autopatch group when the release for either Windows quality or feature updates have either the **Scheduled** or **Paused** statuses.

## Manage device conflict scenarios when using Autopatch groups

Overlap in device membership is a common scenario when working with device-based Microsoft Entra groups since sometimes dynamic queries can be large in scope or the same assigned device membership can be used across different Microsoft Entra groups.

Since Autopatch groups allow you to use your existing Microsoft Entra groups to create your own deployment ring composition, the service takes on the responsibility of monitoring and automatically solving some of the device conflict scenarios that may occur.

> [!CAUTION]
> A device-based Microsoft Entra group can only be used with one deployment ring in an Autopatch group at a time. This applies to deployment rings within the same Autopatch group and across different deployment rings across different Autopatch groups. If you try to create or edit an Autopatch group to use a device-based Microsoft Entra group that's been already used, you'll receive an error that prevents you from creating or editing the Autopatch group (Default or Custom).

### Device conflict in deployment rings within an Autopatch group

Autopatch groups uses the following logic to solve device conflicts on your behalf within an Autopatch group:

| Step | Description |
| -----  | ----- |
| Step 1: Checks for the deployment ring distribution type (**Assigned** or **Dynamic**) that the device belongs to. | For example, if a device is part of one deployment ring with **Dynamic** distribution (Ring3), and one deployment ring with **Assigned** distribution (Test,) within the same Autopatch group, the deployment ring with **Assigned** distribution (Test) takes precedence over the one with the **Dynamic** distribution type (Ring3). |
| Step 2: Checks for deployment ring ordering when device belongs to one or more deployment ring with the same distribution type (**Assigned** or **Dynamic**) | For example, if a device is part of one deployment ring with **Assigned** distribution (Test), and in another deployment ring with **Assigned** distribution (Ring3) within the **same** Autopatch group, the deployment ring that comes later (Ring3) takes precedence over the deployment ring that comes earlier (Test) in the deployment ring order. |

> [!IMPORTANT]
> When a device belongs to a deployment ring that has combined distribution types (**Assigned** and **Dynamic**), and a deployment ring that has only the **Dynamic** distribution type, the deployment ring with the combined distribution types takes precedence over the one with only the **Dynamic** distribution. If a device belongs to two deployment rings that have combined distribution types (**Assigned** and **Dynamic**), the deployment ring that comes later takes precedence over the deployment ring that comes earlier in the deployment ring order.

### Device conflict across different Autopatch groups

Device conflict across different deployment rings in different Autopatch groups may occur, review the following examples about how the Windows Autopatch services handles the following scenarios:

#### Default to Custom Autopatch group device conflict

| Conflict scenario | Conflict resolution |
| -----  | ----- |
| You, the IT admin at Contoso Ltd., starts using only the Default Autopatch group, but later decides to create an Autopatch group called "Marketing".<p>However, you notice that the same devices that belong to the deployment rings in the Default Autopatch group are now also part of the new deployment rings in the Marketing Autopatch group.</p> | Autopatch groups automatically resolve this conflict on your behalf.<p>In this example, devices that belong to the deployment rings as part of the "Marketing" Autopatch group take precedence over devices that belong to the deployment ring in the Default Autopatch group, because you, the IT admin, demonstrated clear intent on managing deployment rings using a Custom Autopatch group outside the Default Autopatch group.</p> |

#### Custom to Custom Autopatch group device conflict

| Conflict scenario | Conflict resolution |
| -----  | ----- |
| You, the IT admin at Contoso Ltd., are using several Custom Autopatch groups. While navigating through devices in the Windows Autopatch Devices blade (**Not ready** tab), you notice that the same device is part of different deployment rings across several different Custom Autopatch groups. | You must resolve this conflict.<p>Autopatch groups informs you about the device conflict in the **Devices** > **Not ready** tab. You're required to manually indicate which of the existing Custom Autopatch groups the device should exclusively belong to.</p> |

#### Device conflict prior to device registration

When you create or edit the Custom or Default Autopatch group, Windows Autopatch checks if the devices that are part of the Microsoft Entra groups, used in Autopatch groups' deployment rings, are registered with the service.

| Conflict scenario | Conflict resolution |
| -----  | ----- |
| Devices are in the Custom-to-Custom Autopatch group device conflict scenario | You must resolve this conflict.<p>Devices will fail to register with the service and will be sent to the **Not registered** tab. You're required to make sure the Microsoft Entra groups that are used with the Custom Autopatch groups don't have device membership overlaps.</p> |

#### Device conflict post device registration

Autopatch groups will keep monitoring for all device conflict scenarios listed in the [Manage device conflict scenarios when using Autopatch groups](../manage/windows-autopatch-manage-autopatch-groups.md#manage-device-conflict-scenarios-when-using-autopatch-groups) section even after devices were successfully registered with the service.
