---
title: Windows quality update summary dashboard
description: Provides a summary view of the current update status for all devices enrolled into Windows Autopatch with Autopatch groups
ms.date: 05/01/2023
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

# Windows quality update summary dashboard (public preview)

> [!IMPORTANT]
> Windows Autopatch groups is in **public preview**. This feature is being actively developed and might not be complete. You can test and use these features in production environments and provide feedback.<p>The Windows Autopatch group experience only applies if you’ve opted-in to use Windows Autopatch groups.</p><br>**To opt-in to use Windows Autopatch groups:**<ol><li>Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Devices** from the left navigation menu.</li><li>Under **Windows Autopatch**, select **Release Management**, then select **Autopatch groups (preview)**.</li><li>Review the **[Microsoft Privacy Statement](../overview/windows-autopatch-privacy.md)** and the **[Autopatch groups Public Preview Addendum](../references/windows-autopatch-groups-public-preview-addendum.md)**. If you agree, select the **I have reviewed and agree to the Autopatch groups Public Preview Addendum** checkbox. Then, select **Use preview** to test out Windows Autopatch groups and its bundled feature set. If the **Use preview** option is greyed out, ensure you meet all the [Autopatch group prerequisites](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#autopatch-groups-prerequisites).</li></ol>

The summary dashboard provides a summary view of the current update status for all devices enrolled into Windows Autopatch.

**To view the current update status for all your enrolled devices:**

1. Sign into the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Reports** > **Windows Autopatch** > **Windows quality updates**.

> [!NOTE]
> The data in this report is refreshed every 24 hours with data received by your Windows Autopatch managed devices. The last refreshed on date/time can be seen at the top of the page. For more information about how often Windows Autopatch receives data from your managed devices, see [Data latency](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#about-data-latency).

## Report information

The following information is available in the summary dashboard:

| Column name | Description |
| ----- | ----- |
| Autopatch group | The Autopatch group and deployment ring. For more information, see [Windows Autopatch groups](../deploy/windows-autopatch-groups-overview.md). |
| Device count | Total device count per Autopatch group or deployment ring. |
| Up to date | Total device count reporting a status of Up to date. For more information, see [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices). |
| Not up to Date | Total device count reporting a status of Not Up to date. For more information, see [Not Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices). |
| In progress | Total device counts reporting the In progress status. For more information, see [In progress](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-sub-statuses). |
| Paused | Total device count reporting the status of the pause whether it’s Service or Customer initiated. For more information, see [Up to Date](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#up-to-date-devices). |
| Not ready | Total device count reporting the Not ready status. For more information, see [Not ready](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#not-up-to-date-devices). |

## Report options

The following options are available:

| Option | Description |
| ----- | ----- |
| Refresh | The option to **Refresh** the summary dashboard is available at the top of the page. This process will ensure that the summary dashboard view is updated to the latest available dataset from within the last 24-hour period. |
| Summary links | Each column represents the summary of included devices. Select the hyperlinked number to produce a filtered report in a new browser tab. |
