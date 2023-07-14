---
title: Summary dashboard
description: Provides a summary view of the current update status for all devices enrolled into Windows Autopatch.
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

# Summary dashboard

The Summary dashboard provides a summary view of the current update status for all devices enrolled into Windows Autopatch.

**To view the current update status for all your enrolled devices:**

1. Sign into the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Navigate to **Reports** > **Windows Autopatch** > **Windows Quality Updates**.

:::image type="content" source="../media/windows-autopatch-summary-dashboard.png" alt-text="Summary dashboard" lightbox="../media/windows-autopatch-summary-dashboard.png":::

> [!NOTE]
> The data in this report is refreshed every 24 hours. The last refreshed on date/time can be seen at the top of the page.

## Report information

The following information is available in the Summary dashboard:

| Column name | Description |
| ----- | ----- |
| Windows quality update status | The device update state. For more information, see [Windows quality update status](windows-autopatch-windows-quality-update-reports-overview.md#windows-quality-update-statuses). |
| Devices | The number of devices showing as applicable for the state. |

## Report options

The following option is available:

| Option | Description |
| ----- | ----- |
| Refresh | The option to **Refresh** the Summary dashboard is available at the top of the page. This process will ensure that the Summary dashboard view is updated to the latest available dataset from within the last 24-hour period. |
