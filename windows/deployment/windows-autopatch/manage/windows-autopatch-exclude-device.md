---
title: Exclude a device
description: This article explains how to exclude a device from the Windows Autopatch service
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
  - tier2
---

# Exclude a device

To avoid end-user disruption, excluding a device in Windows Autopatch only deletes the Windows Autopatch device record itself. Excluding a device can't delete the Microsoft Intune and/or the Microsoft Entra device records. Microsoft assumes you'll keep managing those devices yourself in some capacity.

When you exclude a device from the Windows Autopatch service, the device is flagged as **excluded** so Windows Autopatch doesn't try to restore the device into the service again, since the exclusion command doesn't trigger device membership removal from the **Windows Autopatch Device Registration** group, or any other Microsoft Entra group, used with Autopatch groups.

> [!IMPORTANT]
> The Microsoft Entra team doesn't recommend appending query statements to remove specific device from a dynamic query due to dynamic query performance issues.

**To exclude a device:**

1. Sign into the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Windows Autopatch** in the left navigation menu.
1. Select **Devices**.
1. In either the **Ready** or **Not ready** tab, select the device(s) you want to exclude.
1. Once a device or multiple devices are selected, select **Device actions**. Then, select **Exclude device**.

> [!WARNING]
> Excluding devices from the Windows Autopatch Device Registration group, or any other Microsoft Entra group, used with Autopatch groups doesn't exclude devices from the Windows Autopatch service.

## Only view excluded devices

You can view the excluded devices in the **Not registered** tab to make it easier for you to bulk restore devices that were previously excluded from the Windows Autopatch service.

**To view only excluded devices:**

1. Sign into the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Windows Autopatch** in the left navigation menu.
1. Select **Devices**.
1. In the **Not registered** tab, select **Excluded** from the filter list. Leave all other filter options unselected.

## Restore a device or multiple devices previously excluded

**To restore a device or multiple devices previously excluded:**

1. Sign into the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
1. Select **Windows Autopatch** in the left navigation menu.
1. Select **Devices**.
1. In the **Not registered** tab, select the device(s) you want to restore.
1. Once a device or multiple devices are selected, select **Device actions**. Then, select **Restore excluded device**.
