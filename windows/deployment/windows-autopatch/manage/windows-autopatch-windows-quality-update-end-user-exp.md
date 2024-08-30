---
title: Windows quality update end user experience
description: This article explains the Windows quality update end user experience
ms.date: 09/16/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: adnich
ms.collection:
  - highpri
  - tier1
---

# Windows quality update end user experience

[!INCLUDE [windows-autopatch-applies-to-all-licenses](../includes/windows-autopatch-applies-to-all-licenses.md)]

## User notifications

In this section we review what an end user would see in the following three scenarios:

1. Typical update experience
2. Quality update deadline forces an update
3. Quality update grace period

> [!NOTE]
> The "It's almost time to restart" and "Your organization requires your device to restart" notifications won't disappear until the user interacts with the notification.

### Typical update experience

The Windows quality update is published and devices in the Broad ring have a deferral period of nine days. Devices wait nine days before downloading the latest quality update.

In the following example, the user:

| Day | Description |
| --- | --- |
| Day 0 | The Windows quality update is published. |
| Day 7 | The deferral period expires.<p>Once the deferral period passes, the device downloads the update and notifies the end user that updates are ready to install.</p><p>The end user can either:<ul><li>Restart immediately to install the updates</li><li>Schedule the installation, or</li><li>Snooze the device attempts to install outside of active hours.</li></ul></p><p>In this example, the user schedules the restart and is notified 15 minutes before the scheduled restart time. The user can reschedule, if necessary, but isn't able to reschedule past the deadline.</p> |
| Day 10 | Windows quality update deadline. The end user must download the update and restart their device. |

:::image type="content" source="../media/windows-quality-typical-update-experience.png" alt-text="Typical windows quality update experience" lightbox="../media/windows-quality-typical-update-experience.png":::

### Quality update deadline forces an update

In the following example, the user:

| Day | Description |
| --- | --- |
| Day 0 | The Windows quality update is published. |
| Day 7-9 | The deferral period expires.<p><ul><li>Ignores the notification and selects snooze.</li><li>Further notifications are received, which the user ignores.</li><li>The device is unable to install the updates outside of active hours.</li></ul></p> |
| Day 10 | Windows quality update deadline.<p>The deadline specified in the update policy is five days. Therefore, once this deadline is passed, the device ignores the [active hours](/windows/client-management/mdm/policy-csp-update#activehoursstart) and force a restart to complete the update installation. The user will receive a 15-minute warning, after which, the device will install the update and restart.</p> |

:::image type="content" source="../media/windows-quality-force-update.png" alt-text="Force Windows quality update" lightbox="../media/windows-quality-force-update.png":::

### Quality update grace period

In the following example, the user:

| Day | Description |
| --- | --- |
| Day 0-13 | While the user is on holiday and the device is offline:<ul><li>The Windows quality update is published.</li><li>The deferral period expires.</li><li>The deadline expires.</li></ul> |
| Day 14 |<ul><li>Grace period starts. Since the deadline passed, the device is granted a two-day grace period to install the update and restart.</li><li>The user returns to work and the device is turned back on.</li></ul> |
| Day 15 | The user is notified of a pending installation and given the following options:<ul><li>Pick a time</li><li>Remind me later</li><li>Restart now</li></ul>|
| Day 16 | Grace period expires.<p>Once the two-day grace period expired, the user is forced to restart with a 15-minute warning notification.</p> |

:::image type="content" source="../media/windows-quality-update-grace-period.png" alt-text="Windows quality update grace period" lightbox="../media/windows-quality-update-grace-period.png":::

## Minimize user disruption due to updates

Windows Autopatch understands the importance of not disrupting end users but also updating the devices quickly. To achieve this goal, updates are automatically downloaded and installed at an optimal time determined by the device. By default, [Active hours](/windows/client-management/mdm/policy-csp-update#activehoursstart) are configured dynamically based on device usage patterns. Device restarts occur outside of active hours until the deadline is reached.
