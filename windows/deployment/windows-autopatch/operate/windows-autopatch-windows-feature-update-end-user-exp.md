---
title: Windows feature update end user experience
description: This article explains the Windows feature update end user experience
ms.date: 07/11/2022
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

# Windows feature update end user experience

Windows Autopatch aims to deploy updates predictably while minimizing the effect to end users by preventing restarts during business hours.

## User notifications  

In this section we'll review what an end user would see in the following three scenarios:

1. Typical update experience
2. Feature update deadline forces an update
3. Feature update grace period

> [!NOTE]
> Windows Autopatch doesn't yet support feature updates without notifying end users.<p>The "It's almost time to restart" and "Your organization requires your device to restart" notifications won't disappear until the user interacts with the notification.</p>

### Typical update experience

In this example, we'll be discussing a device in the First ring. When the policy is applied to the device, the device will download the update, and notify end users that the new version of Windows is ready to install. The end user can either:

1. Restart immediately to install the updates.
2. Schedule the installation.
3. Snooze (the device will attempt to install outside of active hours).

In the following example, the user schedules the restart and is notified 15 minutes prior to the scheduled restart time. The user can reschedule, if necessary, but isn't able to reschedule past the deadline.

:::image type="content" source="../media/windows-feature-typical-update-experience.png" alt-text="Typical Windows feature update experience" lightbox="../media/windows-feature-typical-update-experience.png":::

### Feature update deadline forces an update

The following example builds on the scenario outlined in the typical user experience, but the user ignores the notification and selects snooze. Further notifications are received, which the user ignores. The device is also unable to install the updates outside of active hours.

The deadline specified in the update policy is five days. Therefore, once this deadline is passed, the device will ignore the active hours and force a restart to complete the installation. The user will receive a 15-minute warning, after which, the device will install the update and restart.

:::image type="content" source="../media/windows-feature-force-update.png" alt-text="Force Windows feature update" lightbox="../media/windows-feature-force-update.png":::

### Feature update grace period

In the following example, the user is on holiday and the device is offline beyond the feature update deadline. The user then returns to work and the device is turned back on.

The grace period to install the update and restart depends on the deployment ring the device is assigned to:

| Deployment ring | Grace period (in days) |
| ----- | ----- |
| Test | Zero days |
| First | Two days |
| Fast | Two days |
| Broad | Two days |

The user will be notified of a pending installation and given options to choose from. Once the grace period has expired, the user is forced to restart with a 15-minute warning notification.

:::image type="content" source="../media/windows-feature-update-grace-period.png" alt-text="Windows feature update grace period" lightbox="../media/windows-feature-update-grace-period.png":::

## Servicing window

Windows Autopatch understands the importance of not disrupting end users but also updating the devices quickly. To achieve this goal, updates are automatically downloaded and installed at an optimal time determined by the device. Device restarts occur outside of active hours until the deadline is reached. By default, active hours are configured dynamically based on device usage patterns. If you wish to specify active hours for your organization, you can do so by deploying both the following policies:

| Policy | Description |
| ----- | ----- |
| [Active hours start](/windows/client-management/mdm/policy-csp-update#update-activehoursstart) | This policy controls the start of the protected window where devices won't restart. Supported values are from zero through to 23. Zero is 12∶00AM, representing the hours of the day in local time on that device. |
| [Active hours end](/windows/client-management/mdm/policy-csp-update#update-activehoursend) | This policy controls the end of the protected window where devices won't restart. Supported values are from zero through to 23. Zero is 12∶00AM, representing the hours of the day in local time on that device. This value can be no more than 12 hours after the time set in active hours start. |

> [!IMPORTANT]
> Both policies must be deployed for them to work as expected.

A device won't restart during active hours unless it has passed the date specified by the update deadline policy. Once the device has passed the deadline policy, the device will update as soon as possible.

> [!IMPORTANT]
> If your devices must be updated at a specific date or time, they aren't suitable for Windows Autopatch. Allowing you to choose specific dates to update devices would disrupt the rollout schedule and prevent us from delivering the service level objective. The use of any of the following CSPs on a managed device will render it ineligible for management: <ul><li>[Update/ScheduledInstallDay](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallday)</li><li>[Update/ScheduledInstallEveryWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstalleveryweek)</li><li>[Update/ScheduledInstallFirstWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfirstweek)</li><li>[Update/ScheduledInstallFourthWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallfourthweek)</li><li>[Update/ScheduledInstallSecondWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallsecondweek)</li><li>[Update/ScheduledInstallThirdWeek](/windows/client-management/mdm/policy-csp-update#update-scheduledinstallthirdweek)</li><li>[Update/ScheduledInstallTime](/windows/client-management/mdm/policy-csp-update#update-scheduledinstalltime)</li></ul>
