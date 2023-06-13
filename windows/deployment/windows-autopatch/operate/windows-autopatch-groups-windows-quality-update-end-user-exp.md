---
title: Windows quality update end user experience for Autopatch groups
description: This article explains the Windows quality update end user experience using the Autopatch groups exp
ms.date: 05/01/2023
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: adnich
ms.collection:
  - highpri
  - tier1
---

# Windows quality update end user experience: Windows Autopatch groups experience (public preview) 

> [!IMPORTANT]
> Windows Autopatch groups is in **public preview**. This feature is being actively developed and might not be complete. You can test and use these features in production environments and provide feedback.<p>The Windows Autopatch group experience only applies if you’ve opted-in to use Windows Autopatch groups.</p><br>**To opt-in to use Windows Autopatch groups:**<ol><li>Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Devices** from the left navigation menu.</li><li>Under **Windows Autopatch**, select **Release Management**, then select **Autopatch groups (preview)**.</li><li>Review the **[Microsoft Privacy Statement](../overview/windows-autopatch-privacy.md)** and the **[Autopatch groups Public Preview Addendum](../references/windows-autopatch-groups-public-preview-addendum.md)**. If you agree, select the **I have reviewed and agree to the Autopatch groups Public Preview Addendum** checkbox. Then, select **Use preview** to test out Windows Autopatch groups and its bundled feature set. If the **Use preview** option is greyed out, ensure you meet all the [Autopatch group prerequisites](../deploy/windows-autopatch-groups-manage-autopatch-groups.md#autopatch-groups-prerequisites).</li></ol>

## User notifications  

In this section we'll review what an end user would see in the following three scenarios:

1. Typical update experience
2. Quality update deadline forces an update
3. Quality update grace period

> [!NOTE]
> The "It's almost time to restart" and "Your organization requires your device to restart" notifications won't disappear until the user interacts with the notification.

### Typical update experience

The Windows quality update is published and devices in the Broad ring have a deferral period of nine days. Devices will wait nine days before downloading the latest quality update.

Once the deferral period has passed, the device will download the update and notify the end user that updates are ready to install. The end user can either:

- Restart immediately to install the updates
- Schedule the installation, or
- Snooze the device will attempt to install outside of [active hours](/windows/client-management/mdm/policy-csp-update#activehoursstart).

In the following example, the user schedules the restart and is notified 15 minutes prior to the scheduled restart time. The user can reschedule, if necessary, but isn't able to reschedule past the deadline.

:::image type="content" source="../media/windows-quality-typical-update-experience.png" alt-text="Typical windows quality update experience" lightbox="../media/windows-quality-typical-update-experience.png":::

### Quality update deadline forces an update

In the following example, the user:

- Ignores the notification and selects snooze.
- Further notifications are received, which the user ignores.
- The device is unable to install the updates outside of active hours.

The deadline specified in the update policy is five days. Therefore, once this deadline is passed, the device will ignore the [active hours](/windows/client-management/mdm/policy-csp-update#activehoursstart) and force a restart to complete the update installation. The user will receive a 15-minute warning, after which, the device will install the update and restart.

:::image type="content" source="../media/windows-quality-force-update.png" alt-text="Force Windows quality update" lightbox="../media/windows-quality-force-update.png":::

### Quality update grace period

In the following example, the user is on holiday and the device is offline beyond the quality update deadline. The user then returns to work and the device is turned back on.

Since the deadline has already passed, the device is granted a two-day grace period to install the update and restart. The user will be notified of a pending installation and given options to choose from. Once the two-day grace period has expired, the user is forced to restart with a 15-minute warning notification.  

:::image type="content" source="../media/windows-quality-update-grace-period.png" alt-text="Windows quality update grace period" lightbox="../media/windows-quality-update-grace-period.png":::

## Minimize user disruption due to updates

Windows Autopatch understands the importance of not disrupting end users but also updating the devices quickly. To achieve this goal, updates are automatically downloaded and installed at an optimal time determined by the device. By default, [Active hours](/windows/client-management/mdm/policy-csp-update#activehoursstart) are configured dynamically based on device usage patterns. Device restarts occur outside of active hours until the deadline is reached.

Windows Autopatch understands the importance of not disrupting critical devices but also updating the devices quickly. If you wish to configure a specific installation time or [Active hours](/windows/client-management/mdm/policy-csp-update#activehoursstart), use the [Customize Windows Update settings](../operate/windows-autopatch-groups-windows-update.md), and select the [**ScheduledInstall**](../operate/windows-autopatch-groups-windows-update.md#scheduled-install) option. Using this option removes the deadline enforced for a device restart. Devices with this configuration will also **not** be counted towards the [service level objective](../operate/windows-autopatch-groups-windows-quality-update-overview.md#service-level-objective).  
