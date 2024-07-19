---
title: Windows quality updates overview with Autopatch groups experience
description: This article explains how Windows quality updates are managed with Autopatch
ms.date: 05/24/2024
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

# Windows quality updates

Windows Autopatch deploys the [Monthly security update releases](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-quality-updates-primer/ba-p/2569385) that are released on the second Tuesday of each month.

To release updates to devices in a gradual manner, Windows Autopatch deploys a set of mobile device management (MDM) policies to each update deployment ring to control the rollout. There are three primary policies that are used to control Windows quality updates:

| Policy | Description |
| ----- | ----- |
| [Deferrals](/windows/client-management/mdm/policy-csp-update#update-deferqualityupdatesperiodindays) | Deferral policies delay the time the update is offered to the device by a specific number of days. The "offer" date for Windows quality updates is equal to the number of days specified in the deferral policy after the second Tuesday of each month. |
| [Deadlines](/windows/client-management/mdm/policy-csp-update#update-autorestartdeadlineperiodindays)    | Before the deadline, users can schedule restarts or automatically scheduled outside of active hours. After the deadline passes, restarts will occur regardless of active hours and users won't be able to reschedule. The deadline for a specific device is set to be the specified number of days after the update is offered to the device. |
| [Grace periods](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod) | This policy specifies a minimum number of days after an update is downloaded until the device is automatically restarted. This policy overrides the deadline policy so that if a user comes back from vacation, it prevents the device from forcing a restart to complete the update as soon as it comes online. |

For devices in the [Default Autopatch group](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group), Windows Autopatch configures these policies differently across deployment rings to gradually release the update. Devices in the Test ring receive changes first and devices in the Last ring receive changes last. For more information about the Test and Last deployment rings, see [About the Test and Last deployment rings in Autopatch groups](../deploy/windows-autopatch-groups-overview.md#about-the-test-and-last-deployment-rings). With Windows Autopatch groups, you can also customize the [Default Deployment Group's deployment ring composition](../deploy/windows-autopatch-groups-overview.md#default-deployment-ring-composition) to add and/or remove deployment rings and can customize the update deployment cadences for each deployment ring. To learn more about customizing Windows Quality updates deployment cadence, see [Customize Windows Update settings](../operate/windows-autopatch-groups-windows-update.md).

> [!IMPORTANT]
> Deploying deferral, deadline, or grace period policies which conflict with Autopatch's policies will cause a device to be considered ineligible for management, it will still receive policies from Windows Autopatch that are not in conflict, but may not function as designed.  These devices will be marked as ineligible in our device reporting and will not count towards our [service level objective](#service-level-objective).

## Service level objective

Windows Autopatch aims to keep at least 95% of [Up to Date devices](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices) on the latest quality update. Autopatch uses the previously defined release schedule on a per ring basis with a five-day reporting period to calculate and evaluate the service level objective (SLO). The result of the service level objective is the column "% with the latest quality update" displayed in release management and reporting.

### Service level objective calculation

There are two states a device can be in when calculating the service level objective (SLO):

- Devices that are active during the release
- Devices that become active after the release

The service level objective for each of these states is calculated as:

| State | Calculation |
| ----- | ----- |
| Device that is active during release | This service level objective calculation assumes the device has typical activity during the scheduled release period. Calculated by:<p>`Deferral + Deadline + Reporting Period = service level objective`</p> |
| Device that becomes active after release | This service level objective calculation refers to offline devices during the scheduled release period but come back online later. Calculated by:<p>`Grace Period + Reporting period = service level objective`</p> |

| Timeframe | Value defined in |
| ----- | ----- |
| Deferral | Targeted deployment ring |
| Deadline | Targeted deployment ring |
| Grace period | Targeted deployment ring |
| Reporting period | Five days. Value defined by Windows Autopatch. |

> [!NOTE]
> Targeted deployment ring refers to the deployment ring value of the device in question. If a device has a five day deferral with a two day deadline, and two day grace period, the SLO for the device would be calculated to `5 + 2 + 5 = 12`-day service level objective from the second Tuesday of the month. The five day reporting period is one established by Windows Autopatch to allow enough time for device check-in reporting and data evaluation within the service.

> [!IMPORTANT]
> Windows Autopatch supports registering [Windows 10 Long-Term Servicing Channel (LTSC)](/windows/whats-new/ltsc/) devices that are being currently serviced by the [Windows LTSC](/windows/release-health/release-information). The service only supports managing the [Windows quality updates](../operate/windows-autopatch-windows-quality-update-overview.md) workload for devices currently serviced by the LTSC. Windows Update for Business service and Windows Autopatch don't offer Windows feature updates for devices that are part of the LTSC. You must either use [LTSC media](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise) or the [Configuration Manager Operating System Deployment capabilities to perform an in-place upgrade](/windows/deployment/deploy-windows-cm/upgrade-to-windows-10-with-configuration-manager) for Windows devices that are part of the LTSC.

## Import Update rings for Windows 10 and later

You can import your organization's existing Intune Update rings for Windows 10 and later into Windows Autopatch. Importing your organization's Update rings provides the benefits of the Windows Autopatch's reporting and device readiness without the need to redeploy, or change your organization's existing update rings.

Imported rings automatically register all targeted devices into Windows Autopatch. For more information about device registration, see the [device registration workflow diagram](../deploy/windows-autopatch-device-registration-overview.md#detailed-device-registration-workflow-diagram).

> [!NOTE]
> Devices which are registered as part of an imported ring, might take up to 72 hours after the devices have received the latest version of the policy, to be reflected in Windows Autopatch devices blade and reporting. For more information about reporting, see [Windows quality and feature update reports overview](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md).

> [!NOTE]
> Device registration failures don't affect your existing update schedule or targeting. However, devices that fail to register might affect Windows Autopatch's ability to provide reporting and insights. Any conflicts should be resolved as needed. For additional assistance, [submit a support request](../operate/windows-autopatch-support-request.md).

### To import Update rings for Windows 10 and later

**To import Update rings for Windows 10 and later:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** from the left navigation menu.
3. Under the **Windows Autopatch** section, select **Release management**.
4. In the **Release management** blade, go to the **Release schedule** tab and select **Windows quality updates**.
5. Select **Import Update rings for Windows 10 and later**.
6. Select the existing rings you would like to import.
7. Select **Import**.

### Remove an imported Update ring for Windows 10 and later

**To remove an Imported Update rings for Windows 10 and later:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Devices** from the left navigation menu.
3. Under the **Windows Autopatch** section, select **Release management**.
4. In the **Release management** blade, go to the **Release schedule** tab and select **Windows quality updates**.
5. Select the Update rings for Windows 10 and later you would like to remove.
6. Select the **horizontal ellipses (...)** and select **Remove**.

### Known limitations

The following Windows Autopatch features aren't available with imported Intune Update rings:

- Autopatch groups and features dependent on Autopatch groups
- Moving devices in between deployment rings in devices
- Automated deployment ring remediation functions
- Policy health and remediation

## Release management

> [!NOTE]
> To access the Release management blade, you must have the correct [role-based access control](../deploy/windows-autopatch-register-devices.md#built-in-roles-required-for-device-registration).

In the Release management blade, you can:

- Track the [Windows quality update schedule](#release-schedule).
- [Turn off expedited Windows quality updates](#turn-off-service-driven-expedited-quality-update-releases).
- Review release announcements and knowledge based articles for regular and [Out of Band (OOB) Windows quality updates](#out-of-band-releases).

### Release schedule

For each [deployment ring](windows-autopatch-update-management.md#windows-autopatch-deployment-rings), the **Release schedule** tab contains:

- The status of the update. Releases appear as **Active**. The update schedule is based on the values of the [Windows 10 Update Ring policies](/mem/intune/protect/windows-update-for-business-configure), which are configured on your behalf.
- The date the update is available.
- The target completion date of the update.
- In the **Release schedule** tab, you can either [**Pause** and/or **Resume**](#pause-and-resume-a-release) a Windows quality update release.

### Expedited releases

Threat and vulnerability information about a new revision of Windows becomes available on the second Tuesday of each month. Windows Autopatch assesses that information shortly afterwards. If the service determines that it's critical to security, it might be expedited. The quality update is also evaluated on an ongoing basis throughout the release and Windows Autopatch might choose to expedite at any time during the release.

When expediting a release, the regular goal of 95% of devices in 21 days no longer applies. Instead, Windows Autopatch greatly accelerates the release schedule of the release to update the environment more quickly. This approach requires an updated schedule for all devices outside of the Test ring since those devices are already getting the update quickly.

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

For the deployment rings that have passed quality updates deferral date, the OOB release schedule is expedited and deployed on the same day. For the deployment rings that have deferral upcoming, OOBs is released as per the set deferral dates.

**To view deployed Out of Band quality updates:**

1. Go to [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) > **Devices** > **Windows Autopatch** > **Release management**.
2. Under the **Release Announcements** tab, you can view the knowledge base (KB) articles corresponding to deployed OOB and regular Windows quality updates. You can also view the schedules for OOB update releases in the Release Schedule tab.

> [!NOTE]
> Announcements and OOB update schedules will be **removed** from the Release announcements tab when the next quality update is released. Further, if quality updates are paused for a deployment ring, the OOB updates will also be paused.

### Pause and resume a release

> [!CAUTION]
> You should only pause and resume [Windows quality](#pause-and-resume-a-release) and [Windows feature updates](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md#pause-and-resume-a-release) on Windows Autopatch managed devices using the Windows Autopatch Release management blade. Do **not** use the Microsoft Intune end-user experience flows to pause or resume Windows Autopatch managed devices.

The service-level pause is driven by the various software update deployment-related signals Windows Autopatch receives from Windows Update for Business, and several other product groups within Microsoft.

If Windows Autopatch detects a [significant issue with a release](../operate/windows-autopatch-groups-windows-quality-update-signals.md), we might decide to pause that release.

> [!IMPORTANT]
> Pausing or resuming an update can take up to eight hours to be applied to devices. Windows Autopatch uses Microsoft Intune as its device management solution and that's the average frequency Windows devices take to communicate back to Microsoft Intune with new instructions to pause, resume or rollback updates.<p>For more information, see [how long does it take for devices to get a policy, profile, or app after they are assigned from Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).</p>

**To pause or resume a Windows quality update:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Release management**.
1. In the **Release management** blade, go to the **Release schedule** tab and select **Windows quality updates**.
1. Select the Autopatch group or deployment ring that you want to pause or resume. Select either: **Pause** or **Resume**. Alternatively, you can select the **horizontal ellipses (...)** of the Autopatch group or deployment ring you want to pause or resume. Select, **Pause** or **Resume** from the dropdown menu.
1. Optional. Enter the justification(s) about why you're pausing or resuming the selected update.
1. Optional. Select **This pause is related to Windows Update**. When you select this checkbox, you must provide information about how the pause is related to Windows Update.
1. If you're resuming an update, you can select one or more Autopatch groups or deployment rings.
1. Select **Pause or Resume deployment**.

The three following statuses are associated with paused quality updates:

| Status | Description |
| ----- | ------ |
| Paused by Service | If the Windows Autopatch service paused an update, the release has the **Paused by Service** status. The **Paused by Service** status only applies to rings that aren't Paused by the Tenant. |
| Paused by Tenant | If you paused an update, the release has the **Paused by Tenant** status. The Windows Autopatch service can't overwrite a tenant pause. You must select **Resume** to resume the update. |

## Remediating Not ready and/or Not up to Date devices

To ensure your devices receive Windows quality updates, Windows Autopatch provides information on how you can [remediate Windows Autopatch device alerts](../operate/windows-autopatch-device-alerts.md).
