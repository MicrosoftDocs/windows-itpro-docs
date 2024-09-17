---
title: Windows feature update summary dashboard
description: Provides a broader view of the current Windows OS upgrade status for all devices registered with Windows Autopatch.
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

# Windows feature update summary dashboard

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

The Summary dashboard provides a broader view of the current Windows OS update status for all devices registered with Windows Autopatch.

The first part of the Summary dashboard provides you with an all-devices trend report where you can follow the deployment trends within your organization. You can view if updates were successfully installed, failing, in progress, not ready or have their Windows feature update paused.

**To view a generated Summary dashboard for your Windows feature update deployments:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Reports** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Windows feature updates**.

## Report information

The following information is available in the Summary dashboard:

| Column name | Description |
| ----- | ----- |
| Release | The release name and its phases. For more information, see [Windows feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md). |
| Version to deploy | The version being deployed to the device based on which Windows feature update release the device is assigned. |
| Device count | Total device count per Autopatch group or deployment ring. |
| Up to date | Total device count reporting a status of Up to date. For more information, see [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices). |
| Not up to Date | Total device count reporting a status of Not Up to date. For more information, see [Not Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices). |
| In progress | Total device counts reporting the In progress status. For more information, see [In progress](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-sub-statuses). |
| Paused | Total device count reporting the status of the pause whether it's Service or Customer initiated. For more information, see [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices). |
| Not ready | Total device count reporting the Not ready status. For more information, see [Not ready](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices). |
| % with the target feature update | Percent of [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices) devices on the targeted feature update. |

## Report options

The following options are available:

| Option | Description |
| ----- | ----- |
| Refresh | The option to **Refresh** the Summary dashboard is available at the top of the page. This process ensures that the Summary dashboard view is updated to the latest available dataset from within the last 24-hour period. |
| Summary links | Each column represents the summary of included devices. Select the hyperlinked number to produce a filtered report in a new browser tab. |
