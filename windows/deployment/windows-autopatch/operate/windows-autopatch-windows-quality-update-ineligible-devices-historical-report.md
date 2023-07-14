---
title: Ineligible devices report—historical
description: Provides a visual representation of why devices have been ineligible to receive quality updates over the last 90 days.
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

# Ineligible devices report—historical

The historical Ineligible devices report provides a visual representation of why devices have been ineligible to receive quality updates over the last 90 days.

> [!NOTE]
> Devices must have at least six hours of usage, with at least two hours being continuous. You may see an increase in the number of ineligible devices when the widget refreshes every second Tuesday of each month.

**To view the historical Ineligible devices report:**

1. Sign into the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Reports** > **Windows Autopatch** > **Windows Quality Updates**.
1. Select the **Reports** tab.
1. Select **Ineligible devices report—historical**.

:::image type="content" source="../media/windows-autopatch-ineligible-devices-historical-report.png" alt-text="Ineligible devices—historical report" lightbox="../media/windows-autopatch-ineligible-devices-historical-report.png":::

> [!NOTE]
> This report provides a time stamp of when the report trend was last generated and can be seen at the top of the page.

## Report options

The following options are available:

| Option | Description |
| ----- | ----- |
| Export | Select **Export devices** at the top of the page to export data from this report into a CSV file. |
| Filter | Select either the **Update status** or **Deployment rings** filters at the top of the report to filter the results. Then, select **Generate trend**. |

For a description of the displayed device status trends, see [Windows quality update statuses](windows-autopatch-windows-quality-update-reports-overview.md#windows-quality-update-statuses).
