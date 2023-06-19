---
title: Windows quality updates overview with Autopatch groups experience
description: This article explains how Windows quality updates are managed with Autopatch groups
ms.date: 05/01/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Windows quality updates: Windows Autopatch groups experience (public preview) 

> [!IMPORTANT]
> Windows Autopatch groups is in **public preview**. This feature is being actively developed and might not be complete. You can test and use these features in production environments and provide feedback.<p>The Windows Autopatch group experience only applies if you’ve opted-in to use Windows Autopatch groups.</p><br>**To opt-in to use Windows Autopatch groups:**<ol><li>Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Devices** from the left navigation menu.</li><li>Under **Windows Autopatch**, select **Release Management**, then select **Autopatch groups (preview)**.</li><li>Review the **[Microsoft Privacy Statement](../overview/windows-autopatch-privacy.md)** and the **[Autopatch groups Public Preview Addendum](../references/windows-autopatch-groups-public-preview-addendum.md)**. If you agree, select the **I have reviewed and agree to the Autopatch groups Public Preview Addendum** checkbox. Then, select **Use preview** to test out Windows Autopatch groups and its bundled feature set. If the **Use preview** option is greyed out, ensure you meet all the [Autopatch group prerequisites](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#autopatch-groups-prerequisites).</li></ol>

Windows Autopatch deploys the [Monthly security update releases](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-quality-updates-primer/ba-p/2569385) that are released on the second Tuesday of each month.

To release updates to devices in a gradual manner, Windows Autopatch deploys a set of mobile device management (MDM) policies to each update deployment ring to control the rollout. There are three primary policies that are used to control Windows quality updates:

| Policy | Description |
| ----- | ----- |
| [Deferrals](/windows/client-management/mdm/policy-csp-update#update-deferqualityupdatesperiodindays) | Deferral policies delay the time the update is offered to the device by a specific number of days. The "offer" date for Windows quality updates is equal to the number of days specified in the deferral policy after the second Tuesday of each month. |
| [Deadlines](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays)    | Before the deadline, restarts can be scheduled by users or automatically scheduled outside of active hours. After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule. The deadline for a specific device is set to be the specified number of days after the update is offered to the device. |
| [Grace periods](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod) | This policy specifies a minimum number of days after an update is downloaded until the device is automatically restarted. This policy overrides the deadline policy so that if a user comes back from vacation, it prevents the device from forcing a restart to complete the update as soon as it comes online. |

For devices in the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group), Windows Autopatch configures these policies differently across deployment rings to gradually release the update. Devices in the Test ring receive changes first and devices in the Last ring receive changes last. For more information about the Test and Last deployment rings, see [About the Test and Last deployment rings in Autopatch groups](../deploy/windows-autopatch-groups-overview.md#about-the-test-and-last-deployment-rings). With Windows Autopatch groups you can also customize the [Default Deployment Group’s deployment ring composition](../deploy/windows-autopatch-groups-overview.md#default-deployment-ring-composition) to add and/or remove deployment rings and can customize the update deployment cadences for each deployment ring. To learn more about customizing Windows Quality updates deployment cadence, see [Customize Windows Update settings](../operate/windows-autopatch-groups-windows-update.md).

> [!IMPORTANT]
> Deploying deferral, deadline, or grace period policies which conflict with Autopatch's policies will cause a device to be considered ineligible for management, it will still receive policies from Windows Autopatch that are not in conflict, but may not function as designed.  These devices will be marked as ineligible in our device reporting and will not count towards our [service level objective](#service-level-objective).

## Service level objective

Windows Autopatch aims to keep at least 95% of eligible devices on the latest Windows quality update 21 days after release. Note that devices that have cadence type set to Schedule install won't be eligible for Windows quality update SLO. For more information about the Schedule Install cadence type, see [Deployment cadence types](../operate/windows-autopatch-groups-windows-update.md#deployment-cadence).

> [!IMPORTANT]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager Operating System Deployment capabilities to perform an in-place upgrade](/windows/deployment/deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager) for Windows devices that are part of the LTSC.

## Release management

> [!NOTE]
> To access the Release management blade, you must have the correct [role-based access control](../deploy/windows-autopatch-register-devices.md#built-in-roles-required-for-device-registration).

In the Release management blade, you can:

- Track the [Windows quality update schedule](#release-schedule).
- [Turn off expedited Windows quality updates](#turn-off-service-driven-expedited-quality-update-releases).
- Review release announcements and knowledge based articles for regular and [Out of Band (OOB) Windows quality updates](#out-of-band-releases).

### Release schedule

For each [deployment ring](windows-autopatch-update-management.md#windows-autopatch-deployment-rings), the **Release schedule** tab contains:

- The status of the update. Releases will appear as **Active**. The update schedule is based on the values of the [Windows 10 Update Ring policies](/mem/intune/protect/windows-update-for-business-configure), which have been configured on your behalf.
- The date the update is available.
- The target completion date of the update.
- In the **Release schedule** tab, you can either [**Pause** and/or **Resume**](#pause-and-resume-a-release) a Windows quality update release.

### Expedited releases

Threat and vulnerability information about a new revision of Windows becomes available on the second Tuesday of each month. Windows Autopatch assesses that information shortly afterwards. If the service determines that it's critical to security, it may be expedited. The quality update is also evaluated on an ongoing basis throughout the release and Windows Autopatch may choose to expedite at any time during the release.

When running an expedited release, the regular goal of 95% of devices in 21 days no longer applies. Instead, Windows Autopatch greatly accelerates the release schedule of the release to update the environment more quickly. This approach requires an updated schedule for all devices outside of the Test ring since those devices are already getting the update quickly.

| Release type | Group | Deferral | Deadline | Grace period |
| ----- | ----- | ----- | ----- | ----- |
| Expedited release | All devices | 0 | 1 | 1 |

#### Turn off service-driven expedited quality update releases

Windows Autopatch provides the option to turn off of service-driven expedited quality updates.

By default, the service expedites quality updates as needed. For those organizations seeking greater control, you can disable expedited quality updates for Windows Autopatch-enrolled devices using Microsoft Intune.

**To turn off service-driven expedited quality updates:**

1. Go to **[Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)** > **Devices**.
2. Under **Windows Autopatch** > **Release management**, go to the **Release settings** tab and turn off the **Expedited quality updates** setting.

> [!NOTE]
> Windows Autopatch doesn't allow customers to request expedited releases.

### Out of Band releases

Windows Autopatch schedules and deploys required Out of Band (OOB) updates released outside of the normal schedule.

For the deployment rings that have passed quality updates deferral date, the OOB release schedule will be expedited and deployed on the same day. For the deployment rings that have deferral upcoming, OOBs will be released as per the set deferral dates.

**To view deployed Out of Band quality updates:**

1. Go to [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) > **Devices** > **Windows Autopatch** > **Release management**.
2. Under the **Release Announcements** tab, you can view the knowledge base (KB) articles corresponding to deployed OOB and regular Windows quality updates. You can also view the schedules for OOB update releases in the Release Schedule tab.

> [!NOTE]
> Announcements abd OOB update schedules will be **removed** from the Release announcements tab when the next quality update is released. Further, if quality updates are paused for a deployment ring, the OOB updates will also be paused.

### Pause and resume a release

> [!CAUTION]
> You should only pause and resume [Windows quality](#pause-and-resume-a-release) and [Windows feature updates](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md#pause-and-resume-a-release) on Windows Autopatch managed devices using the Windows Autopatch Release management blade. Do **not** use the Microsoft Intune end-user experience flows to pause or resume Windows Autopatch managed devices.

The service-level pause is driven by the various software update deployment-related signals Windows Autopatch receives from Windows Update for Business, and several other product groups within Microsoft.

If Windows Autopatch detects a [significant issue with a release](../operate/windows-autopatch-groups-windows-quality-update-signals.md), we may decide to pause that release.

> [!IMPORTANT]
> Pausing or resuming an update can take up to eight hours to be applied to devices. Windows Autopatch uses Microsoft Intune as its device management solution and that's the average frequency Windows devices take to communicate back to Microsoft Intune with new instructions to pause, resume or rollback updates.<p>For more information, see [how long does it take for devices to get a policy, profile, or app after they are assigned from Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).</p>

**To pause or resume a Windows quality update:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release management** blade, got to the **Release schedule** tab and select **Windows quality updates**.
1. Select the Autopatch group that you want to pause or resume. Select either: **Pause** or **Resume**. Alternatively, you can select the **horizontal ellipses (...)** of the Autopatch group you want to pause or resume. Select, **Pause** or **Resume** from the dropdown menu.
1. Select a reason from the dropdown menu.
1. Optional. Enter details about why you're pausing or resuming the selected update.
1. If you're resuming an update, you can select one or more deployment rings.
1. Select **Okay**.

The three following statuses are associated with paused quality updates:

| Status | Description |
| ----- | ------ |
| Paused by Service | If the Windows Autopatch service has paused an update, the release will have the **Paused by Service** status. The Paused by Service only applies to rings that aren't Paused by the Tenant. |
| Paused by Tenant | If you've paused an update, the release will have the **Paused by Tenant** status. The Windows Autopatch service can't overwrite a tenant pause. You must select **Resume** to resume the update. |

## Remediating Not ready and/or Not up to Date devices

To ensure your devices receive Windows quality updates, Windows Autopatch provides information on how you can [remediate Windows Autopatch device alerts](../operate/windows-autopatch-device-alerts.md).
