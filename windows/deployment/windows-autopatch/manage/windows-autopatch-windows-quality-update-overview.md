---
title: Windows quality updates overview
description: This article explains how Windows quality updates are managed
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
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

You can manage Windows quality update profiles for Windows 10 and later devices. You can expedite a specific Windows quality update using targeted policies.

For more information about how to expedite quality update for Windows 10 or later in Microsoft Intune, see [Use Intune to expedite Windows quality updates](/mem/intune/protect/windows-10-expedite-updates).

## Service level objective

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Windows Autopatch aims to keep at least 95% of [Up to Date devices](../monitor/windows-autopatch-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices) on the latest quality update. Autopatch uses the previously defined release schedule on a per ring basis with a five-day reporting period to calculate and evaluate the service level objective (SLO). The result of the service level objective is the column "% with the latest quality update" displayed in the Windows updates blade and reporting.

## Service level objective calculation

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

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

## Out of Band releases

[!INCLUDE [windows-autopatch-applies-to-all-licenses](../includes/windows-autopatch-applies-to-all-licenses.md)]

Windows Autopatch schedules and deploys required Out of Band (OOB) updates released outside of the normal schedule.

For the deployment rings that pass quality updates deferral date, the OOB release schedule is expedited and deployed on the same day. For the deployment rings that have deferral upcoming, OOBs are released as per the set deferral dates.

## Pause and resume a release

The service-level pause is driven by the various software update deployment-related signals Windows Autopatch receives from Windows Update for Business, and several other product groups within Microsoft.

If Windows Autopatch detects a significant issue with a release, we might decide to pause that release.

> [!IMPORTANT]
> **Pausing or resuming an update can take up to eight hours to be applied to devices**. Windows Autopatch uses Microsoft Intune as its device management solution and that's the average frequency Windows devices take to communicate back to Microsoft Intune with new instructions to pause, resume or rollback updates.<p>For more information, see [how long does it take for devices to get a policy, profile, or app after they are assigned from Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).</p>

**To pause and resume a release:**

> [!IMPORTANT]
> **You can only pause an Autopatch group if you have Windows Enterprise E3+ or F3 licenses (included in Microsoft 365 F3, E3, or E5) licenses and have [activated Windows Autopatch features](../overview/windows-autopatch-overview.md#windows-enterprise-e3-and-f3-licenses).**<p>[Feature activation](../prepare/windows-autopatch-feature-activation.md) is optional and at no additional cost to you if you have Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5) licenses.</p><p>For more information, see [Licenses and entitlements](../prepare/windows-autopatch-prerequisites.md#licenses-and-entitlements). If you choose not to go through feature activation, you can still use the Windows Autopatch service for the features included in [Business premium and A3+ licenses](../overview/windows-autopatch-overview.md#business-premium-and-a3-licenses).</p>

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Devices** from the left navigation menu.
1. Under the **Manage updates** section, select **Windows updates**.
1. In the **Windows updates** blade, select the **Quality updates** tab.
1. Select the Autopatch group or deployment ring that you want to pause or resume. Select either: **Pause** or **Resume**. Alternatively, you can select the **horizontal ellipses (...)** of the Autopatch group or deployment ring you want to pause or resume. Select, **Pause, or **Resume** from the dropdown menu.
1. Optional. Enter the justification about why you're pausing or resuming the selected update.
1. Optional. Select **This pause is related to Windows Update**. When you select this checkbox, you must provide information about how the pause is related to Windows Update.
1. If you're resuming an update, you can select one or more Autopatch groups or deployment rings.
1. Select **Pause or Resume deployment**.

The following statuses are associated with paused quality updates:

| Status | Description |
| ----- | ------ |
| Paused by Service | If the Windows Autopatch service paused an update, the release has the **Paused by Service** status. The **Paused by Service** status only applies to rings that aren't Paused by the Tenant. |
| Paused by Tenant | If you paused an update, the release has the **Paused by Tenant** status. The Windows Autopatch service can't overwrite a tenant pause. You must select **Resume** to resume the update. |

## Remediating Not ready and/or Not up to Date devices

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

To ensure your devices receive Windows quality updates, Windows Autopatch provides information on how you can [remediate Windows Autopatch device alerts](../monitor/windows-autopatch-device-alerts.md).
