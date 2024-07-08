---
title: Manage Windows feature update releases
description: This article explains how you can manage Windows feature updates with Autopatch groups
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

# Manage Windows feature update releases

You can create custom releases for Windows feature update deployments in Windows Autopatch.

## Before you begin

Before you start managing custom Windows feature update releases, consider the following:

- If you're planning on using either the [Default or Custom Autopatch groups](../deploy/windows-autopatch-groups-overview.md#key-concepts) ensure:
    - The Default Autopatch group has all deployment rings and deployment cadences you need.
    - You have created all your Custom Autopatch groups prior to creating custom releases.
- Review [Windows feature update prerequisites](/mem/intune/protect/windows-10-feature-updates#prerequisites).
- Review the [Windows feature updates policy limitations](/mem/intune/protect/windows-10-feature-updates#limitations-for-feature-updates-for-windows-10-and-later-policy).

## About the auto-populate automation for release phases

By default, the deployment rings of each Autopatch group will be sequentially assigned to a phase. For example, the first deployment ring of each Autopatch group is assigned to Phase 1, and the second deployment ring of each Autopatch group is assigned to Phase 2, etc.

The following table explains the auto-populating assignment of your deployments rights if you have two Autopatch groups. One Autopatch group is named Finance and the other is named Marketing; each Autopatch group has four (Finance) and five (Marketing) deployment rings respectively.

| Phases | Finance | Marketing
| ----- | ----- | ----- |
| Phase 1 | Test | Test |
| Phase 2 | Ring1 | Ring1 |
| Phase 3 | Ring2 | Ring2 |
| Phase 4 | Last | Ring3 |

If the Autopatch groups are edited after a release is created (Active status), the changes to the Autopatch group won't be reflected unless you create a new custom release.

If you wish to change the auto-populating assignment of your deployment rings to release phases, you can do so by adding, removing, or editing the auto-populated phases.

### More information about the completion date of a phase

The goal completion date of a phase is calculated using the following formula:

`<First Deployment Date> + (<Number of gradual rollout groups> - 1) * Days in between groups (7) + Deadline for feature updates (5 days) + Grace Period (2 days).`

This formula is only applicable for **Deadline-driven** not for Scheduled-driven deployment cadences. For more information, see [Customize Windows Update settings](../operate/windows-autopatch-groups-windows-update.md).

> [!IMPORTANT]
> By default, both the **Deadline for feature updates** and the **Grace period** values are set by Windows Autopatch in every [Update rings for Windows 10 and later policy](/mem/intune/protect/windows-10-update-rings) created by Autopatch groups.

### How to use the Windows feature update blade

Use the Windows feature update blade to check in the overall status of the [default release](../operate/windows-autopatch-groups-windows-feature-update-overview.md#default-release) and the custom ones you create.

**To access the Windows feature update blade:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release management** blade, under the **Release schedule** tab, select **Windows feature updates**.
1. In the **Windows feature updates** blade, you can see all the information about the releases. The columns are described in the following table:

| Status | Description |
| ----- | ----- |
| Release name | Name of the release |
| Version to deploy | Version to deploy for the applicable release or phase |
| Status | Status of the applicable release or phase:<ul><li>Scheduled</li><li>Active</li><li>Inactive</li><li>Paused</li><li>Canceled</li></ul> |
| First deployment |<ul><li>The date the deployment for the applicable release or phase will begin.</li><li>Feature update policy for Windows 10 and later is created 24 hours prior to the first deployment date. The service automation runs twice a day at 4:00AM and 4:00PM (UTC).</li><li>Not all devices within a phase will be offered the feature update on the same date when using gradual rollout.</li></ul> |
| Goal completion date | The date the devices within the release or phases are expected to finish updating. The completion date is calculated using the following formula:<p>`<First deployment date> + (<Number of gradual rollout groups> - 1) * Days in between groups (7) + Deadline for feature updates (5) + Grace Period (2)`</p> |

#### About release and phase statuses

##### Release statuses

A release is made of one or more phases. The release status is based on the calculation and consolidation of each phase status.

The release statuses are described in the following table:

| Release status | Definition | Options |
| ----- | ----- | ----- |
| Scheduled | Release is scheduled and not all phases have yet created its Windows feature update policies |<ul><li>Releases with the **Scheduled status** can't be canceled but can have its deployment cadence edited as not all phases have yet created its Windows feature update policies.</li><li>Autopatch groups and its deployment rings that belong to a **Scheduled** release can't be assigned to another release.</li></ul> |
| Active | All phases in the release are active. This means all phases have reached their first deployment date, which created the Windows feature update policies. |<ul><li>Release can be paused but can't be edited or canceled since the Windows feature update policy was already created for its phases.</li><li>Autopatch groups and their deployment rings can be assigned to another release.</li></ul> |
| Inactive | All the Autopatch groups within the release have been assigned to a new release. As a result, the Windows feature update policies were unassigned from all phases from within the release. |<ul><li>Release can be viewed as a historical record.</li><li>Releases can't be deleted, edited, or canceled.</li></ul> |
| Paused | All phases in the release are paused. The release will remain paused until you resume it. | <ul><li>Releases with Paused status can't be edited or canceled since the Windows feature update policy was already created for its phases.</li><li>Release can be resumed.</li></ul> |
| Canceled | All phases in the release are canceled. | <ul><li>Releases with Canceled status can't be edited or canceled since the Windows feature update policy wasn't created for its phases.</li><li>Canceled release can't be deleted.</li></ul> |

##### Phase statuses

A phase is made of one or more Autopatch group deployment rings. Each phase reports its status to its release.

> [!IMPORTANT]
> The determining factor that makes a phase status transition from **Scheduled** to **Active** is when the service automatically creates the Windows feature update policy for each Autopatch group deployment ring. Additionally, the phase status transition from **Active** to **Inactive** occurs when Windows feature update policies are unassigned from the Autopatch groups that belong to a phase. This can happen when an Autopatch group and its deployment rings are re-used as part of a new release.

| Phase status | Definition |
| ----- | ----- |
| Scheduled | The phase is scheduled but hasn't reached its first deployment date yet. The Windows feature update policy hasn't been created for the respective phase yet. |
| Active | The first deployment date has been reached. The Windows feature update policy has been created for the respective phase. |
| Inactive | All Autopatch groups within the phase were re-assigned to a new release. All Windows feature update policies were unassigned from the Autopatch groups. |
| Paused | Phase is paused. You must resume the phase. |
| Canceled | Phase is canceled. All Autopatch groups within the phase can be used with a new release. A phase that's canceled can't be deleted. |

#### Details about Windows feature update policies

Windows Autopatch creates one Windows feature update policy per phase using the following naming convention:

`Windows Autopatch - DSS policy - <Release Name> - Phase <Phase Number>`

These policies can be viewed in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

The following table is an example of the Windows feature update policies that were created for phases within a release:

| Policy name | Feature update version | Rollout options | First deployment date| Final deployment date availability | Day between groups | Support end date |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| Windows Autopatch - DSS Policy - My feature update release - Phase 1  | Windows 10 21H2 | Make update available as soon as possible | April 24, 2023 | April 24, 2023 | N/A | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 2  | Windows 10 21H2 | Make update available as soon as possible | June 26, 2023 | July 17, 2023 | 7 | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 3 | Windows 10 21H2 | Make update available as soon as possible | July 24, 2023 | August 14, 2023 | 7 | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 4  | Windows 10 21H2 | Make update available as soon as possible | August 28, 2023 | September 10, 2023 | 7 | June 11, 2024 |
| Windows Autopatch - DSS Policy - My feature update release - Phase 5  | Windows 10 21H2 | Make update available as soon as possible | September 25, 2023 | October 16, 2023 | 7 | June 11, 2024 |

## Create a custom release

**To create a custom release:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release management** blade, select **Release schedule**, then **Windows feature updates**.
1. In the **Windows feature updates** blade, select **New release**.
1. In the **Basics** page:
    1. Enter a **Name** for the custom release.
    2. Select the **Version** to deploy.
    3. Enter a **Description** for the custom release.
    4. Select **Next**.
1. In the **Autopatch groups** page, choose one or more existing Autopatch groups you want to include in the custom release, then select Next.
1. You can't choose Autopatch groups that are already part of an existing custom release. Select **Autopatch groups assigned to other releases** to review existing assignments.
1. In the Release phases page, review the number of auto-populated phases. You can Edit, Delete and Add phase based on your needs. Once you're ready, select **Next**. **Before you proceed to the next step**, all deployment rings must be assigned to a phase, and all phases must have deployment rings assigned.
1. In the **Release schedule** page, choose **First deployment date**, and the number of **Gradual rollout groups**, then select **Next**. **You can only select the next day**, not the current day, as the first deployment date. The service creates feature update policy for Windows 10 and later twice a day at 4:00AM and 4:00PM (UTC) and can't guarantee that the release will start at the current day given the UTC variance across the globe.
    1. The **Goal completion date** only applies to the [Deadline-driven deployment cadence type](../operate/windows-autopatch-groups-windows-update.md#deadline-driven). The Deadline-drive deployment cadence type can be specified when you configure the Windows Updates settings during the Autopatch group creation/editing flow.
    2. Additionally, the formula for the goal completion date is `<First Deployment Date> + (<Number of gradual rollout groups> - 1) * Days in between groups (7) + Deadline for feature updates (5 days) + Grace Period (2 days)`.
1. In the **Review + create** page, review all settings. Once you're ready, select **Create**.

> [!NOTE]
> Custom releases can't be deleted from the Windows feature updates release management blade. The custom release record serves as a historical record for auditing purposes when needed.

## Edit a release

> [!NOTE]
> Only custom releases that have the **Scheduled** status can be edited. A release phase can only be edited prior to reaching its first deployment date. Additionally, you can only edit the deployment dates when editing a release.

**To edit a custom release:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release schedule** tab, select **Windows feature updates**.
1. In the **Windows feature updates** blade, select the **horizontal ellipses (…)** > Edit to customize your gradual rollout of your feature updates release, then select **Save**.
    1. Only the release schedule can be customized when using the edit function. You can't add or remove Autopatch groups or modify the phase order when editing a release.
1. Select **Review + Create**.
1. Select **Apply** to save your changes.

## Pause and resume a release

> [!CAUTION]
> You should only pause and resume [Windows quality](../operate/windows-autopatch-groups-windows-quality-update-overview.md#pause-and-resume-a-release) and [Windows feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md) on Windows Autopatch managed devices using the Windows Autopatch Release management blade. Do **not** use the Microsoft Intune end-user experience flows to pause or resume Windows Autopatch managed devices.

> [!IMPORTANT]
> Pausing or resuming an update can take up to eight hours to be applied to devices. Windows Autopatch uses Microsoft Intune as its device management solution and that's the average frequency Windows devices take to communicate back to Microsoft Intune with new instructions to pause, resume or rollback updates. For more information, see [how long does it take for devices to get a policy, profile, or app after they are assigned from Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).

**To pause or resume a release:**

> [!NOTE]
> If you've paused an update, the specified release will have the **Paused** status. The Windows Autopatch service can't overwrite IT admin's pause. You must select **Resume** to resume the update. The **Paused by Service Pause** status **only** applies to Windows quality updates. Windows Autopatch doesn't pause Windows feature updates on your behalf.

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release schedule** tab, select **Windows feature updates**.
1. In the **Windows feature updates** blade, select the **horizontal ellipses (…)** > **Pause** or **Resume** to pause or resume your feature updates release.
1. Select a reason from the dropdown menu.
1. Optional. Enter details about why you're pausing or resuming the selected update.
1. If you're resuming an update, you can select one or more deployment rings.
1. Select **Pause deployment** or **Resume deployment** to save your changes.

## Cancel a release

> [!IMPORTANT]
> You can only cancel a release under the Scheduled status. You cannot cancel a release under the **Active**, **Inactive** or **Paused** statuses.

**To cancel a release:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release schedule** tab, select **Windows feature updates**.
1. In the **Windows feature updates** blade, select the **horizontal ellipses (…)** > **Cancel** to cancel your feature updates release.
1. Select a reason for cancellation from the dropdown menu.
1. Optional. Enter details about why you're pausing or resuming the selected update.
1. Select **Cancel deployment** to save your changes.

## Roll back a release

> [!CAUTION]
> Do **not** use Microsoft Intune's end-user flows to rollback Windows feature update deployments for Windows Autopatch managed devices. If you need assistance with rolling back deployments, [submit a support request](../operate/windows-autopatch-support-request.md).

Windows Autopatch **doesn't** support the rollback of Windows feature updates through its end-user experience flows.

## Contact support

If you're experiencing issues related to Windows feature update deployments, [submit a support request](../operate/windows-autopatch-support-request.md).
