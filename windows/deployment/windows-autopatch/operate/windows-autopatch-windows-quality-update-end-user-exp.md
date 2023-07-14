---
title: Windows quality update end user experience
description: This article explains the Windows quality update end user experience
ms.date: 05/30/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Windows quality update end user experience

Windows Autopatch aims to deploy updates predictably while minimizing the effect to end users by preventing restarts during business hours.

## User notifications  

In this section we'll review what an end user would see in the following three scenarios:

1. Typical update experience
2. Quality update deadline forces an update
3. Quality update grace period

> [!NOTE]
> The "It's almost time to restart" and "Your organization requires your device to restart" notifications won't disappear until the user interacts with the notification.

### Typical update experience

The Windows 10 quality update is published and devices in the Broad ring have a deferral period of nine days. Devices will wait nine days before downloading the latest quality update.

Once the deferral period has passed, the device will download the update and notify the end user that updates are ready to install. The end user can either:

- Restart immediately to install the updates
- Schedule the installation, or
- Snooze (the device will attempt to install outside of [active hours](#servicing-window).

In the following example, the user schedules the restart and is notified 15 minutes prior to the scheduled restart time. The user can reschedule, if necessary, but isn't able to reschedule past the deadline.

:::image type="content" source="../media/windows-quality-typical-update-experience.png" alt-text="Typical windows quality update experience" lightbox="../media/windows-quality-typical-update-experience.png":::

### Quality update deadline forces an update

In the following example, the user:

- Ignores the notification and selects snooze.
- Further notifications are received, which the user ignores.
- The device is unable to install the updates outside of active hours.

The deadline specified in the update policy is five days. Therefore, once this deadline is passed, the device will ignore the [active hours](#servicing-window) and force a restart to complete the update installation. The user will receive a 15-minute warning, after which, the device will install the update and restart.

:::image type="content" source="../media/windows-quality-force-update.png" alt-text="Force Windows quality update" lightbox="../media/windows-quality-force-update.png":::

### Quality update grace period

In the following example, the user is on holiday and the device is offline beyond the quality update deadline. The user then returns to work and the device is turned back on.

Since the deadline has already passed, the device is granted a two-day grace period to install the update and restart. The user will be notified of a pending installation and given options to choose from. Once the two-day grace period has expired, the user is forced to restart with a 15-minute warning notification.  

:::image type="content" source="../media/windows-quality-update-grace-period.png" alt-text="Windows quality update grace period" lightbox="../media/windows-quality-update-grace-period.png":::

## Servicing window

Windows Autopatch understands the importance of not disrupting end users but also updating the devices quickly. To achieve this goal, updates are automatically downloaded and installed at an optimal time determined by the device. Device restarts occur outside of active hours until the deadline is reached. By default, active hours are configured dynamically based on device usage patterns. If you wish to specify active hours for your organization, you can do so by deploying both the following policies:

| Policy | Description |
| ----- | ----- |
| [Active hours start](/windows/client-management/mdm/policy-csp-update#activehoursstart) | This policy controls the start of the protected window where devices won't restart. Supported values are from zero through to 23. Zero is 12∶00AM, representing the hours of the day in local time on that device. |
| [Active hours end](/windows/client-management/mdm/policy-csp-update#activehoursend) | This policy controls the end of the protected window where devices won't restart. Supported values are from zero through to 23. Zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |

> [!IMPORTANT]
> Both policies must be deployed for them to work as expected.

A device won't restart during active hours unless it has passed the date specified by the update deadline policy. Once the device has passed the deadline policy, the device will update as soon as possible.

> [!IMPORTANT]
> If your devices must be updated at a specific date or time, they aren't suitable for Windows Autopatch. Selecting specific dates to update devices would disrupt the rollout schedule, and prevent Windows Autopatch from delivering the [service level objective](../operate/windows-autopatch-windows-quality-update-overview.md#service-level-objective). The use of any of the following CSPs on a managed device will render it ineligible for the service level objective:<ul><li>[Update/ScheduledInstallDay](/windows/client-management/mdm/policy-csp-update#scheduledinstallday)</li><li>[Update/ScheduledInstallEveryWeek](/windows/client-management/mdm/policy-csp-update#scheduledinstalleveryweek)</li><li>[Update/ScheduledInstallFirstWeek](/windows/client-management/mdm/policy-csp-update#scheduledinstallfirstweek)</li><li>[Update/ScheduledInstallFourthWeek](/windows/client-management/mdm/policy-csp-update#scheduledinstallfourthweek)</li><li>[Update/ScheduledInstallSecondWeek](/windows/client-management/mdm/policy-csp-update#scheduledinstallsecondweek)</li><li>[Update/ScheduledInstallThirdWeek](/windows/client-management/mdm/policy-csp-update#scheduledinstallthirdweek)</li><li>[Update/ScheduledInstallTime](/windows/client-management/mdm/policy-csp-update#scheduledinstalltime)</li></ul>
