---
title: Feature update status report
description: Provides a per device view of the current Windows OS upgrade status for all devices registered with Windows Autopatch.
ms.date: 07/08/2024
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

# Feature update status report

The Feature update status report provides a per device view of the current Windows OS upgrade status for all devices registered with Windows Autopatch. 

**To view the Feature update status report:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Reports** > **Windows Autopatch** > **Windows feature updates (preview)**.
1. Select the **Reports** tab.
1. Select **Feature update status**.

## Report information

### Default columns

The following information is available as default columns in the Feature update status report:

| Column name | Description |
| ----- | ----- |
| Device name | The name of the device. |
| Deployment ring | The currently assigned Windows Autopatch deployment ring for the device. |
| Update status | The current update status for the device. For more information, see [Windows feature update statuses](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-quality-and-feature-update-statuses). |
| Pause status | The current pause status whether Customer or Service initiated. For more information, see [Pause and resume a release](../operate/windows-autopatch-groups-manage-windows-feature-update-release.md#pause-and-resume-a-release). |
| Current version | The current version or build number of the device. For more information, see [Windows Versions](/windows/release-health/release-information?msclkid=ee885719baa511ecb838e1a689da96d2). |
| Readiness | The device readiness evaluation status. For more information, see [Post-device registration readiness checks](../deploy/windows-autopatch-post-reg-readiness-checks.md). |
| Alerts | The summary of any alerts affecting the device. For more information, see [Device alerts](../operate/windows-autopatch-device-alerts.md). |

### Optional columns

The following information is available as optional columns in the Feature update status report:

| Column name | Description |
| ----- | ----- |
| Microsoft Entra device ID | The current Microsoft Entra ID recorded device ID for the device |
| Serial number | The current Intune recorded serial number for the device |
| Intune last check in time | The last time the device checked in to Intune |
| Service State | The Service State provided from Windows Update |
| Service Substate | The Service Substate provided from Windows Update |
| Client State | The Client State provided from Windows Update |
| Client Substate | The Client Substate provided from Windows Update |
| Servicing Channel | The Servicing Channel provided from Windows Update |
| User Last Logged On | The last user who logged on as reported from Intune |
| Primary User UPN | The Primary User UPN as reported from Intune |
| Hex Error Code | The hex error provided from Windows Update |
| Feature Update Installed Time | The time the update was installed as reported from Windows Update |
| Servicing Channel | The Client Servicing Channel as defined in Windows Update |
| Phase | The phase as indicated from the Feature Update Release Scheduled |
| Release | The release the devices are associated with |

> [!NOTE]
> The Service State, Service Substate, Client State, Client Substate, Servicing Channel, and Hex Error Code columns may not display any values. These columns are supplemental and might not display for all devices

## Report options

The following options are available:

| Option | Description |
| ----- | ----- |
| Search | Use to search by device name, Microsoft Entra device ID or serial number |
| Sort | Select the **column headings** to sort the report data in ascending and descending order. |
| Export | Select **Export devices** at the top of the page to export data from this report into a CSV file. |
| Filter | Select either the **Add filters** or at the top of the report to filter the results. |
| Columns | Select a column to add or remove the column from the report. |
