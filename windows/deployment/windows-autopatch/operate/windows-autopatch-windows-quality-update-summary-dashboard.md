---
title: Windows quality update summary dashboard
description: Provides a summary view of the current update status for all devices enrolled into Windows Autopatch
ms.date: 01/22/2024
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: adnich
ms.collection:
  - highpri
  - tier1
---

# Windows quality update summary dashboard

The Summary dashboard provides a summary view of the current update status for all devices enrolled into Windows Autopatch.

**To view the current update status for all your enrolled devices:**

1. Sign into the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Reports** > **Windows Autopatch** > **Windows quality updates**.

> [!NOTE]
> The data in this report is refreshed every 24 hours with data received by your Windows Autopatch managed devices. The last refreshed on date/time can be seen at the top of the page. For more information about how often Windows Autopatch receives data from your managed devices, see [Data latency](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#about-data-latency).

## Report information

The following information is available in the Summary dashboard:

| Column name | Description |
| ----- | ----- |
| Autopatch group | The Autopatch group and deployment ring. For more information, see [Windows Autopatch groups](../deploy/windows-autopatch-groups-overview.md). |
| Device count | Total device count per Autopatch group or deployment ring. |
| Up to date | Total device count reporting a status of Up to date. For more information, see [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices). |
| Not up to Date | Total device count reporting a status of Not Up to date. For more information, see [Not Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices). |
| In progress | Total device counts reporting the In progress status. For more information, see [In progress](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-sub-statuses). |
| Paused | Total device count reporting the status of the pause whether it's Service or Customer initiated. For more information, see [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices). |
| Not ready | Total device count reporting the Not ready status. For more information, see [Not ready](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices). |
| % with the latest quality update | Percent of [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices) devices on the most current Windows release and its build number |

## Report options

The following options are available:

| Option | Description |
| ----- | ----- |
| Refresh | The option to **Refresh** the Summary dashboard is available at the top of the page. This process ensures that the Summary dashboard view is updated to the latest available dataset from within the last 24-hour period. |
| Summary links | Each column represents the summary of included devices. Select the hyperlinked number to produce a filtered report in a new browser tab. |
