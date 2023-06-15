---
title: Windows feature update summary dashboard
description: Provides a broader view of the current Windows OS upgrade status for all devices registered with Windows Autopatch.
ms.date: 05/01/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: andredm7
ms.collection:
  - highpri
  - tier1
---

# Windows feature update summary dashboard (public preview)

> [!IMPORTANT]
> Windows Autopatch groups is in **public preview**. This feature is being actively developed and might not be complete. You can test and use these features in production environments and provide feedback.<p>The Windows Autopatch group experience only applies if you’ve opted-in to use Windows Autopatch groups.</p><br>**To opt-in to use Windows Autopatch groups:**<ol><li>Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Devices** from the left navigation menu.</li><li>Under **Windows Autopatch**, select **Release Management**, then select **Autopatch groups (preview)**.</li><li>Review the **[Microsoft Privacy Statement](../overview/windows-autopatch-privacy.md)** and the **[Autopatch groups Public Preview Addendum](../references/windows-autopatch-groups-public-preview-addendum.md)**. If you agree, select the **I have reviewed and agree to the Autopatch groups Public Preview Addendum** checkbox. Then, select **Use preview** to test out Windows Autopatch groups and its bundled feature set. If the **Use preview** option is greyed out, ensure you meet all the [Autopatch group prerequisites](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#autopatch-groups-prerequisites).</li></ol>

The summary dashboard provides a broader view of the current Windows OS update status for all devices registered with Windows Autopatch.

The first part of the summary dashboard provides you with an all-devices trend report where you can follow the deployment trends within your organization. You can view if updates were successfully installed, failing, in progress, not ready or have their Windows feature update paused.

**To view a generated summary dashboard for your Windows feature update deployments:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Reports** from the left navigation menu.
1. Under the **Windows Autopatch** section, select **Windows feature updates (preview)**.

## Report information

The following information is available in the summary dashboard:

| Column name | Description |
| ----- | ----- |
| Release | The release name and its phases. For more information, see [Windows feature updates](../operate/windows-autopatch-groups-windows-feature-update-overview.md). |
| Version to deploy | The version being deployed to the device based on which Windows feature update release the device is assigned. |
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
