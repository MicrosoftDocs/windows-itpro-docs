---
title: Feature update trending report
description: Provides a visual representation of Windows OS upgrade trends for all devices over the last 90 days.
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

# Feature update trending report (public preview)

> [!IMPORTANT]
> Windows Autopatch groups is in **public preview**. This feature is being actively developed and might not be complete. You can test and use these features in production environments and provide feedback.<p>The Windows Autopatch group experience only applies if you’ve opted-in to use Windows Autopatch groups.</p><br>**To opt-in to use Windows Autopatch groups:**<ol><li>Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Devices** from the left navigation menu.</li><li>Under **Windows Autopatch**, select **Release Management**, then select **Autopatch groups (preview)**.</li><li>Review the **[Microsoft Privacy Statement](../overview/windows-autopatch-privacy.md)** and the **[Autopatch groups Public Preview Addendum](../references/windows-autopatch-groups-public-preview-addendum.md)**. If you agree, select the **I have reviewed and agree to the Autopatch groups Public Preview Addendum** checkbox. Then, select **Use preview** to test out Windows Autopatch groups and its bundled feature set. If the **Use preview** option is greyed out, ensure you meet all the [Autopatch group prerequisites](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#autopatch-groups-prerequisites).</li></ol>

Windows Autopatch provides a visual representation of Windows OS upgrade trends for all devices over the last 90 days.

**To view the Feature update trending report:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Reports** > **Windows Autopatch** > **Windows feature updates (public preview)**.
1. Select the **Reports** tab.
1. Select **Feature update trending**.

> [!NOTE]
> This report provides a time stamp of when the report trend was last generated and can be seen at the top of the page.

## Report options

The following options are available:

| Option | Description |
| ----- | ----- |
| Filter | Select either the **Update status** or **Deployment rings** filters at the top of the report to filter the results. Then, select **Generate trend**. |
| By percentage | Select **by percentage** to show your trending graphs and indicators by percentage. |
| By device count | Select **by device count** to show your trending graphs and indicators by numeric value. |

For a description of the displayed device status trends, see [Windows feature update statuses](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#windows-quality-and-feature-update-statuses).
