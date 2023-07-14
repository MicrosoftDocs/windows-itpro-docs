---
title: Windows quality update reports
description: This article details the types of reports available and info about update device eligibility, device update health, device update trends in Windows Autopatch
ms.date: 12/01/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: adnich
ms.collection:
  - highpri
  - tier1
---

# Windows quality update reports

The Windows quality update reports provide you information about:

- Quality update device eligibility
- Device update health
- Device update trends  

Together, these reports provide insight into the quality update state and compliance of Windows devices that are enrolled into Windows Autopatch.  

The report types are organized into the following focus areas:

| Focus area | Description |
| ----- | ----- |
| Operational detail | <ul><li>[Summary dashboard](windows-autopatch-windows-quality-update-summary-dashboard.md): Provides the current update status summary for all devices.</li><li>[All devices report](windows-autopatch-windows-quality-update-all-devices-report.md): Provides the current update status of all devices at the device level.</li></ul> |
| Device trends | <ul><li>[All devices report – historical](windows-autopatch-windows-quality-update-all-devices-historical-report.md): Provides the update status trend of all devices over the last 90 days.</li><li>[Eligible devices report – historical](windows-autopatch-windows-quality-update-eligible-devices-historical-report.md): Provides the update status trend of all eligible devices to receive quality updates over the last 90 days.</li><li>[Ineligible devices report – historical](windows-autopatch-windows-quality-update-ineligible-devices-historical-report.md): Provides a trending view of why ineligible devices haven’t received quality updates over the last 90 days.</li></ul> |

## Who can access the reports?

Users with the following permissions can access the reports:

- Global Administrator
- Intune Service Administrator
- Administrators assigned to an Intune role with read permissions

## About data latency

The data source for these reports is the [Windows diagnostic data](../overview/windows-autopatch-privacy.md#microsoft-windows-1011-diagnostic-data). The data typically uploads from enrolled devices once per day. Then, the data is processed in batches before being made available in Windows Autopatch. The maximum end-to-end latency is approximately 24 hours.

## Windows quality update statuses

The following statuses are used throughout the Windows Autopatch reporting suite to describe the quality update status for devices:  

- [Healthy devices](#healthy-devices)
- [Not Up to Date (Microsoft Action)](#not-up-to-date-microsoft-action)
- [Ineligible Devices (Customer Action)](#ineligible-devices-customer-action)

Each status has its own set of sub statuses to further describe the status.

### Healthy devices

Healthy devices are devices that meet all of the following prerequisites:

- [Prerequisites](../prepare/windows-autopatch-prerequisites.md)
- [Prerequisites for device registration](../deploy/windows-autopatch-register-devices.md#prerequisites-for-device-registration)
- [Windows quality update device eligibility](../operate/windows-autopatch-windows-quality-update-overview.md#device-eligibility)

> [!NOTE]
> Healthy devices will remain with the **In Progress** status for the 21-day service level objective period. Devices which are **Paused** are also considered healthy.

| Sub status | Description |
| ----- | ----- |
| Up to Date | Devices are up to date with the latest quality update deployed through the [Windows Autopatch release schedule](../operate/windows-autopatch-windows-quality-update-overview.md#windows-quality-update-releases). |
| In Progress | Devices are currently installing the latest quality update deployed through the [Windows Autopatch release schedule](../operate/windows-autopatch-windows-quality-update-overview.md#windows-quality-update-releases). |
| Paused | Devices that are currently paused due to a Windows Autopatch or customer-initiated Release Management pause. For more information, see [Pausing and resuming a release](../operate/windows-autopatch-windows-quality-update-overview.md#pausing-and-resuming-a-release). |

### Not Up to Date (Microsoft Action)

Not Up to Date means a device isn’t up to date when the:

- Quality update is more than a month out of date, or the device is on last month’s quality update  
- Device is more than 21 days overdue from the last release.

> [!NOTE]
> Microsoft Action refers to the responsibility of the Windows Autopatch Service Engineering Team to carry out the appropriate action to resolve the reported device state. Windows Autopatch aims to keep at least [95% of eligible devices on the latest Windows quality update 21 days after release](../operate/windows-autopatch-windows-quality-update-overview.md#service-level-objective).

| Sub status | Description |
| ----- | ----- |
| No Heartbeat | The Windows Update service hasn’t been able to connect to this device. The service can’t offer the update to that device. |
| Not Offered | The Windows Update service hasn’t offered the update to that device. |
| Policy Blocking Update | This device has a policy that is blocking the update, such as a deferral or pause policy. Devices are only in this state after the 21-day threshold. |
| In Progress—Stuck | This device has downloaded the update but is getting stuck in a loop during the install process. The update isn’t complete. |
| Other | This device isn't up to date and isn’t reporting back data from the client. |

### Ineligible Devices (Customer Action)

Customer Action refers to the responsibility of the designated customer IT administrator to carry out the appropriate action to resolve the reported device sub status.  

Within each 24-hour reporting period, devices that are ineligible are updated with one of the following sub statuses.

| Sub status | Description |
| ----- | ----- |
| Insufficient Usage | Devices must have at least six hours of usage, with at least two hours being continuous. |
| Low Connectivity | Devices must have a steady internet connection, and access to [Windows update endpoints](../prepare/windows-autopatch-configure-network.md). |
| Out of Disk Space | Devices must have more than one GB (GigaBytes) of free storage space. |
| Not Deployed | Windows Autopatch doesn't update devices that haven't yet been deployed. |
| Not On Supported Windows Edition | Devices must be on a Windows edition supported by Windows Autopatch. For more information, see [prerequisites](../prepare/windows-autopatch-prerequisites.md). |
| Not On Supported Windows Build | Devices must be on a Windows build supported by Windows Autopatch. For more information, see [prerequisites](../prepare/windows-autopatch-prerequisites.md). |
| Intune Sync Older Than 5 Days | Devices must have checked in with Intune within the last five days. |

## Data export

Select **Export devices** to export data for each report type.  

> [!NOTE]
> You can’t export Windows Autopatch report data using Microsoft Graph RESTful web API.
