---
title: Start using Windows Autopatch
description: This article details how to activate Autopatch features
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Start using Windows Autopatch

[!INCLUDE [windows-autopatch-enterprise-e3-f3-licenses](../includes/windows-autopatch-enterprise-e3-f3-licenses.md)]

Before you begin the process of deploying updates with Windows Autopatch, ensure you meet the [prerequisites](../prepare/windows-autopatch-prerequisites.md).

Once you're ready to deploy updates to your devices, you can either use Microsoft Intune or Microsoft Graph to manage updates with Windows Autopatch.

## Use Microsoft Intune for Windows Autopatch

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. In the left pane, select **Devices** and then navigate to **Manage updates** > **Windows updates**.

To start using the service, you must create an update policy owned by Windows Autopatch. The update policy can be one of the following:

- [Update rings](../manage/windows-autopatch-update-rings.md)
- [Windows quality updates](../manage/windows-autopatch-windows-quality-update-overview.md)
- [Windows feature updates](../manage/windows-autopatch-windows-feature-update-overview.md)
- [Driver and firmware updates](../manage/windows-autopatch-manage-driver-and-firmware-updates.md)

Once a device or Microsoft Entra device group is associated with a Windows Autopatch policy, your tenant is now using the Autopatch service to manage updates. Devices are registered with the service following the process as described in [Register your devices](../deploy/windows-autopatch-register-devices.md).

## Activate Windows Autopatch features

> [!IMPORTANT]
> You must be a Global Administrator to consent to the feature activation flow.

If your tenant meets the licensing entitlement for Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5), you can activate Windows Autopatch features by either:

| Method | Description |
| --- | --- |
| Banner method | **Select the banner** and follow the consent prompt on the side page that appears. |
| Intune admin center | Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431). In the left pane, select **Tenant Administration** > **Windows Autopatch** > **Activate features**. |

When you activate Windows Autopatch features, Windows Autopatch creates deployment rings. For more information about deployment rings, see [Windows Autopatch deployment rings](../deploy/windows-autopatch-device-registration-overview.md#windows-autopatch-deployment-rings).
