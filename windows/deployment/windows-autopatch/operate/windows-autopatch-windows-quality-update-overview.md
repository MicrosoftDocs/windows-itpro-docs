---
title: Windows quality updates
description: This article explains how Windows quality updates are managed in Autopatch
ms.date: 12/15/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Windows quality updates

## Service level objective

Windows Autopatch aims to keep at least 95% of eligible devices on the latest Windows quality update 21 days after release.

## Device eligibility

For a device to be eligible for Windows quality updates as a part of Windows Autopatch they must meet the following criteria:

| Criteria | Description |
| ----- | ----- |
| Activity | Devices must have at least six hours of usage, with at least two hours being continuous. |
| Intune sync | Devices must have checked with Intune within the last five days. |
| Storage space | Devices must have more than one GB (GigaBytes) of free storage space. |
| Deployed | Windows Autopatch doesn't update devices that haven't yet been deployed. |
| Internet connectivity | Devices must have a steady internet connection, and access to Windows [update endpoints](../prepare/windows-autopatch-configure-network.md). |
| Windows edition | Devices must be on a Windows edition supported by Windows Autopatch. For more information, see [Prerequisites](../prepare/windows-autopatch-prerequisites.md). |
| Mobile device management (MDM) policy conflict | Devices must not have deployed any policies that would prevent device management. For more information, see [Conflicting and unsupported policies](../references/windows-autopatch-windows-update-unsupported-policies.md). |
| Group policy conflict | Devices must not have group policies deployed which would prevent device management. For more information, see [Group policy](../references/windows-autopatch-windows-update-unsupported-policies.md#group-policy-and-other-policy-managers) |

## Windows quality update releases

Windows Autopatch deploys the [B release of Windows quality updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-quality-updates-primer/ba-p/2569385) that are released on the second Tuesday of each month.

To release updates to devices in a gradual manner, Windows Autopatch deploys a set of mobile device management (MDM) policies to each update deployment ring to control the rollout. There are three primary policies that are used to control Windows quality updates:

| Policy | Description |
| ----- | ----- |
| [Deferrals](/windows/client-management/mdm/policy-csp-update#update-deferqualityupdatesperiodindays) | Deferral policies delay the time the update is offered to the device by a specific number of days. The "offer" date for Windows quality updates is equal to the number of days specified in the deferral policy after the second Tuesday of each month. |
| [Deadlines](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays)    | Before the deadline, restarts can be scheduled by users or automatically scheduled outside of active hours. After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule. The deadline for a specific device is set to be the specified number of days after the update is offered to the device. |
| [Grace periods](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod) | This policy specifies a minimum number of days after an update is downloaded until the device is automatically restarted. This policy overrides the deadline policy so that if a user comes back from vacation, it prevents the device from forcing a restart to complete the update as soon as it comes online. |

> [!IMPORTANT]
> Deploying deferral, deadline, or grace period policies which conflict with Autopatch's policies will cause a device to be considered ineligible for management, it will still receive policies from Windows Autopatch that are not in conflict, but may not function as designed.  These devices will be marked as ineligible in our device reporting and will not count towards our [service level objective](#service-level-objective).

Windows Autopatch configures these policies differently across deployment rings to gradually release the update to devices in your estate. Devices in the Test ring receive changes first and devices in the Broad ring receive changes last. For more information, see [Windows Autopatch deployment rings](../operate/windows-autopatch-update-management.md#windows-autopatch-deployment-rings).

:::image type="content" source="../media/release-process-timeline.png" alt-text="Release process timeline" lightbox="../media/release-process-timeline.png":::

## Release management

In the Release management blade, you can:

- Track the [Windows quality update schedule](#release-schedule) for devices in the [four deployment rings](windows-autopatch-update-management.md#windows-autopatch-deployment-rings).
- [Turn off expedited Windows quality updates](#turn-off-service-driven-expedited-quality-update-releases).
- Review release announcements and knowledge based articles for regular and [Out of Band (OOB) Windows quality updates](#out-of-band-releases).

### Release schedule

For each [deployment ring](windows-autopatch-update-management.md#windows-autopatch-deployment-rings), the **Release schedule** tab contains:

- The status of the update. Releases will appear as **Active**. The update schedule is based on the values of the [Windows 10 Update Ring policies](/mem/intune/protect/windows-update-for-business-configure), which have been configured on your behalf.
- The date the update is available.
- The target completion date of the update.
- In the **Release schedule** tab, you can either [**Pause** and/or **Resume**](#pausing-and-resuming-a-release) a Windows quality update release.

### Expedited releases

Threat and vulnerability information about a new revision of Windows becomes available on the second Tuesday of each month. Windows Autopatch assesses that information shortly afterwards. If the service determines that it's critical to security, it may be expedited. The quality update is also evaluated on an ongoing basis throughout the release and Windows Autopatch may choose to expedite at any time during the release.

When running an expedited release, the regular goal of 95% of devices in 21 days no longer applies. Instead, Windows Autopatch greatly accelerates the release schedule of the release to update the environment more quickly. This approach requires an updated schedule for all devices outside of the Test ring since those devices are already getting the update quickly.

| Release type | Group | Deferral | Deadline | Grace period |
| ----- | ----- | ----- | ----- | ----- |
| Standard release | Test<p>First<p>Fast<p>Broad | 0<p>1<p>6<p>9 | 0<p>2<p>2<p>5 | 0<p>2<p>2<p>2 |
| Expedited release | All devices | 0 | 1 | 1 |

#### Turn off service-driven expedited quality update releases

Windows Autopatch provides the option to turn off of service-driven expedited quality updates.

By default, the service expedites quality updates as needed. For those organizations seeking greater control, you can disable expedited quality updates for Windows Autopatch-enrolled devices using Microsoft Intune.

**To turn off service-driven expedited quality updates:**

1. Go to **[Microsoft Endpoint Manager portal](https://go.microsoft.com/fwlink/?linkid=2109431)** > **Devices**.
2. Under **Windows Autopatch** > **Release management**, go to the **Release settings** tab and turn off the **Expedited Quality Updates** setting.

> [!NOTE]
> Windows Autopatch doesn't allow customers to request expedited releases.

### Out of Band releases

Windows Autopatch schedules and deploys required Out of Band (OOB) updates released outside of the normal schedule.

**To view deployed Out of Band quality updates:**

1. Go to [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) > **Devices** > **Windows Autopatch** > **Release management**.
2. Under the **Release Announcements** tab, you can view the knowledge base (KB) articles corresponding to deployed OOB and regular Windows quality updates.

> [!NOTE]
> Announcements will be **removed** from the Release announcements tab when the next quality update is released. Further, if quality updates are paused for a deployment ring, the OOB updates will also be paused.

### Pausing and resuming a release

If Windows Autopatch detects a [significant issue with a release](../operate/windows-autopatch-windows-quality-update-signals.md), we may decide to pause that release.

> [!IMPORTANT]
> Pausing or resuming an update can take up to eight hours to be applied to devices, because Windows Autopatch uses Microsoft Intune as its management solution and that's the average frequency devices take to communicate back to Microsoft Intune with new instructions to pause, resume or rollback updates.<p>For more information, see [how long does it take for devices to get a policy, profile, or app after they are assigned from Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).</p>

**To pause or resume a quality update:**

1. Go to the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release management** blade, select either: **Pause** or **Resume**.
1. Select the update type you would like to pause or resume.
1. Select a reason from the dropdown menu.
1. Optional. Enter details about why you're pausing or resuming the selected update.
1. If you're resuming an update, you can select one or more deployment rings.
1. Select **Okay**.

There are two statuses associated with paused quality updates, **Service Paused** and **Customer Paused**.

| Status | Description |
| ----- | ------ |
| Service Paused | If the Windows Autopatch service has paused an update, the release will have the **Service Paused** status. You must [submit a support request](windows-autopatch-support-request.md) to resume the update. |
| Customer Paused | If you've paused an update, the release will have the **Customer Paused** status. The Windows Autopatch service can't overwrite a customer-initiated pause. You must select **Resume** to resume the update. |

## Remediating Ineligible and/or Not up to Date devices

To ensure your devices receive Windows quality updates, Windows Autopatch provides information on how you can remediate [Ineligible Devices (Customer Actions)](../operate/windows-autopatch-windows-quality-update-reports-overview.md#ineligible-devices-customer-action). In addition, the Windows Autopatch service may remediate [Not up to Date devices](../operate/windows-autopatch-windows-quality-update-reports-overview.md#not-up-to-date-microsoft-action) to bring them back into compliance.
