---
title: Customize Windows Update settings Autopatch groups experience
description: How to customize Windows Updates with Autopatch groups
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: rekhanr
ms.collection:
  - highpri
  - tier1
---

# Customize Windows Update settings

You can customize the Windows Update deployment schedule for each deployment ring in Windows Autopatch groups per your business and organizational needs. This capability is allowed for both [Default](../deploy/windows-autopatch-groups-overview.md#about-the-default-autopatch-group) and [Custom Autopatch groups](../deploy/windows-autopatch-groups-overview.md#about-custom-autopatch-groups). However, we recommend that you remain within service defined boundaries to maintain compliance.

When the deployment cadence is customized, Windows Autopatch will override our service defaults with your preferred deployment cadence. Depending on the selected options, devices with [customized schedules](#scheduled-install) may not count towards the Windows Autopatch [Windows quality update service level objective](../operate/windows-autopatch-groups-windows-quality-update-overview.md#service-level-objective).

## Deployment cadence

### Cadence types

For each tenant, at the deployment ring level, there are two cadence types to configure and manage your Windows Update deployments for all the devices in those deployment rings:

- [Deadline-driven](#deadline-driven)
- [Scheduled install](#scheduled-install)

> [!NOTE]
> Windows Autopatch uses the [Update rings policy for Windows 10 and later in Microsoft Intune](/mem/intune/protect/windows-10-update-rings) to apply either **Deadline-driven** or **Scheduled install** cadence types. Microsoft Intune implements [Update rings policy for Windows 10 and later](/mem/intune/protect/windows-10-update-rings) using the settings available in the [Update policy CSP](/windows/client-management/mdm/policy-csp-update).

#### Deadline-driven

With the deadline-drive cadence type, you can control and customize the deferral, deadline, and grace period to meet your specific business needs and organizational requirements.

There are certain limits that Windows Autopatch defines and you'll only be able to make changes with those boundaries. The following boundaries are implemented so that Windows Autopatch can maintain update compliance.

| Boundary | Description |
| ----- | ----- |
| Deferrals and deadlines | Windows Autopatch will enforce that deadline plus deferral days for a deployment ring to be less than or equal to 14 days. |
| Grace period | The permitted customization range is zero to seven days. |

> [!NOTE]
> The configured grace period will apply to both Windows quality updates and Windows feature updates.

Each deployment ring can be scheduled independent of the others, and there are no dependencies that the previous deployment ring must be scheduled before the next ring. Further, if the cadence type is set as **Deadline-driven**, the automatic update behavior setting, **Reset to default** in the Windows Update for Business policy, will be applied.

It's possible for you to change the cadence from the Windows Autopatch Release management blade while update deployments are in progress. Windows Autopatch will abide by the principle to always respect your preferences over service-defined values.

However, if an update has already started for a particular deployment ring, Windows Autopatch won't be able to change the cadence for that ring during that ongoing update cycle. The changes will only be effective in the next update cycle.

#### Scheduled install

> [!NOTE]
>If you select the Schedule install cadence type, the devices in that ring won't be counted towards the [Windows quality update service level objective](../operate/windows-autopatch-groups-windows-quality-update-overview.md#service-level-objective).

While the Windows Autopatch default options will meet the majority of the needs for regular users with corporate devices, we understand there are devices that run critical activities and can only receive Windows Updates at specific times. The **Scheduled install** cadence type will minimize disruptions by preventing forced restarts and interruptions to critical business activities for end users. Upon selecting the **Scheduled install** cadence type, any previously set deadlines and grace periods will be removed. Devices will only update and restart according to the time specified.

If other applications force a device to restart outside of the specified time and a Windows Update is pending a restart, the Windows Update will complete its installation at this time. For this reason, ensure that you consider your update and restart scenarios for devices running business critical activities, or restart sensitive workloads before using the Scheduled Install option.

> [!NOTE]
> The compliance deadline and grace period for Windows quality updates won't be configured for the Scheduled Install cadence type.

Devices **must** be active and available at the time when the device is scheduled for installation to ensure the optimal experience. If the device is consistently unavailable during the scheduled install time, the device can remain unprotected and unsecured, or the device may have the Windows Update scan and install during active hours.

##### Scheduled install types

> [!NOTE]
> For devices with **Active hours** configured, if the device is consistently unavailable, Windows will attempt to keep the devices up to date, including installation of updates during Active hours.<p>For Windows 10 devices, Windows Update can start 30 minutes prior to the specified install time. If the installation start time is specified at 2:00 AM, some of the devices may start the installation 30 mins prior.</p>

The Scheduled install cadence has two options:

| Option | Description |
| ----- | ----- |
| Active hours | The period (daily) that the user normally does their work, or the device is busy performing business critical actions.<p>The time outside of active hours is when the device is available for Windows to perform an update and restart the device (daily). The max range for Active hours is 18 hours. The six-hour period outside of the active hours is the deployment period, when Windows Update for Business will scan, install and restart the device.</p>
| Schedule install and restart | Use this option to prevent the service from installing Windows Updates except during the specified start time. You can specify the following occurrence options:<ul><li>Weekly</li><li>Bi-weekly</li><li>Monthly</li></ul><p>Select a time when the device has low activity for the updates to complete. Ensure that the Windows Update has three to four hours to complete the installation and restart the device.</p> |

> [!NOTE]
> Changes made in one deployment ring won't impact other rings in your tenant.<p>Configured **Active hours** and **Scheduled install and restart** options will apply to both Windows quality updates and Windows feature updates.</p>

### User notifications

In addition to the cadence type, you can also manage the end user notification settings. End users will receive all update notifications by default. For critical devices or devices where notifications need to be hidden, use the **Manage notifications** option to configure notifications. For each tenant, at the deployment ring level, there are four options for you to configure end user update notification settings:

- Not configured
- Use the default Windows Update notifications
- Turn off all notifications excluding restart warnings
- Turn off all notifications including restart warnings

For more information, see [Windows Update settings you can manage with Intune update ring policies for Windows 10/11 devices](/mem/intune/protect/windows-update-settings).

## Customize the Windows Update deployment cadence

> [!IMPORTANT]
> The Windows update setting customizations can take up to eight hours to be applied to devices. Windows Autopatch uses Microsoft Intune as its device management solution and that's the average frequency Windows devices take to communicate back to Microsoft Intune with new instructions to apply new software update settings.<p>For more information, see [how long does it take for devices to get a policy, profile, or app after they are assigned from Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot#how-long-does-it-take-for-devices-to-get-a-policy-profile-or-app-after-they-are-assigned).</p>

**To customize the Windows Update deployment cadence:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Devices** > **Windows Autopatch** > **Release management** > **Release settings** select **Autopatch groups**. Select the **horizontal ellipses (…)** > **Edit** for the Autopatch group you want to edit.
3. Select the **horizontal ellipses (…)** across each ring to manage the deployment cadence or notification settings.
4. Select **Next** to navigate to the Windows update settings page. The page lists the existing settings for each of the deployment rings in the Autopatch group.
5. Select [**Manage deployment cadence**](#cadence-types) to customize Windows Update settings.
    1. Select one of the cadence types for the ring:
        1. Select **Deadline-driven** to configure the deferral, deadline, and grace periods. This option will enforce forced restarts based on the selected deadline and grace period. In the event you want to switch back to the service recommended defaults, for each of the settings, select the option tagged as "default".
        1. Select **Scheduled install** to opt-out of deadline-based forced restart.
            1. Select either **Active hours** or **Schedule install and restart time**.
    2. Select **Save**.
6. Select **Manage notifications**. A fly-in pane opens.
    1. Select one of  following [Windows Update restart notifications](#user-notifications) for your devices that are part of the selected deployment ring. By default, Windows Autopatch recommends that you enable all notifications.
        1. Not configured
        1. Use the default Windows Update notifications
        1. Turn off all notifications excluding restart warnings
        1. Turn off all notifications included restart warnings
    1. Select **Save** once you select the preferred setting.
7. Repeat the same process to customize each of the rings. Once done, select **Next**.
8. In **Review + apply**, you'll be able to review the selected settings for each of the rings.
9. Select **Apply** to apply the changes to the ring policy. Once the settings are applied, the saved changes can be verified in the **Release schedule** tab. The Windows quality update schedule on the **Release schedule** tab will be updated as per the customized settings.
