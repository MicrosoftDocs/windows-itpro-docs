---
title: Manage device restarts after updates (Windows 10)
description: tbd
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: lomayor
ms.localizationpriority: medium
ms.author: lomayor
ms.date: 07/27/2017
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Manage device restarts after updates


**Applies to**

- Windows 10
- Windows 10 Mobile

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

You can use Group Policy settings, mobile device management (MDM) or Registry (not recommended) to configure when devices will restart after a Windows 10 update is installed. You can schedule update installation and set policies for restart, configure active hours for when restarts will not occur, or you can do both.

## Schedule update installation

In Group Policy, within **Configure Automatic Updates**, you can configure a forced restart after a specified installation time.

To set the time, you need to go to **Configure Automatic Updates**, select option **4 - Auto download and schedule the install**, and then enter a time in the **Scheduled install time** dropdown. Alternatively, you can specify that installation will occur during the automatic maintenance time (configured using **Computer Configuration\Administrative Templates\Windows Components\Maintenance Scheduler**).

**Always automatically restart at the scheduled time** forces a restart after the specified installation time and lets you configure a timer to warn a signed-in user that a restart is going to occur.

While not recommended, the same result can be achieved through Registry. Under **HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU**, set **AuOptions** to **4**, set the install time with **ScheduledInstallTime**, enable **AlwaysAutoRebootAtScheduledTime** and specify the delay in minutes through **AlwaysAutoRebootAtScheduledTimeMinutes**. Similar to Group Policy, **AlwaysAutoRebootAtScheduledTimeMinutes** sets the timer to warn a signed-in user that a restart is going to occur.

For a detailed description of these registry keys, see [Registry keys used to manage restart](#registry-keys-used-to-manage-restart).

## Delay automatic reboot

When **Configure Automatic Updates** is enabled in Group Policy, you can enable one of the following additional policies to delay an automatic reboot after update installation:

- **Turn off auto-restart for updates during active hours** prevents automatic restart during active hours.
- **No auto-restart with logged on users for scheduled automatic updates installations** prevents automatic restart when a user is signed in. If a user schedules the restart in the update notification, the device will restart at the time the user specifies even if a user is signed in at the time. This policy only applies when **Configure Automatic Updates** is set to option **4-Auto download and schedule the install**.

> [!NOTE]
> When using Remote Desktop Protocol connections, only active RDP sessions are considered as logged on users. Devices that do not have locally logged on users, or active RDP sessions, will be restarted. 

You can also use Registry, to prevent automatic restarts when a user is signed in. Under **HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU**, set **AuOptions** to **4** and enable **NoAutoRebootWithLoggedOnUsers**. As with Group Policy, if a user schedules the restart in the update notification, it will override this setting.

For a detailed description of these registry keys, see [Registry keys used to manage restart](#registry-keys-used-to-manage-restart).

## Configure active hours

*Active hours* identify the period of time when you expect the device to be in use. Automatic restarts after an update will occur outside of the active hours.

By default, active hours are from 8 AM to 5 PM on PCs and from 5 AM to 11 PM on phones. Users can change the active hours manually.

Starting with Windows 10, version 1703, you can also specify the max active hours range. The specified range will be counted from the active hours start time.

Administrators can use multiple ways to set active hours for managed devices:

- You can use Group Policy, as described in the procedure that follows.
- You can use MDM, as described in [Configuring active hours with MDM](#configuring-active-hours-with-mdm).
- While not recommended, you can also configure active hours, as described in [Configuring active hours through Registry](#configuring-active-hours-through-registry).

### Configuring active hours with Group Policy

To configure active hours using Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and open the **Turn off auto-restart for updates during active hours** policy setting. When the policy is enabled, you can set the start and end times for active hours.

![Use Group Policy to configure active hours](images/waas-active-hours-policy.png)

### Configuring active hours with MDM

MDM uses the [Update/ActiveHoursStart and Update/ActiveHoursEnd](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx#Update_ActiveHoursEnd)  and [Update/ActiveHoursMaxRange](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#update-activehoursmaxrange) settings in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx) to configure active hours.

### Configuring active hours through Registry

This method is not recommended, and should only be used when neither Group Policy or MDM are available.
Any settings configured through Registry may conflict with any existing configuration that uses any of the methods mentioned above.

You should set a combination of the following registry values, in order to configure active hours.
Under **HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate** use **SetActiveHours** to enable or disable active hours and **ActiveHoursStart**,**ActiveHoursEnd** to specify the range of active hours.

For a detailed description of these registry keys, see [Registry keys used to manage restart](#registry-keys-used-to-manage-restart).

>[!NOTE]
>To configure active hours manually on a single device, go to **Settings** > **Update & security** > **Windows Update** and select **Change active hours**.
>
>![Change active hours](images/waas-active-hours.png)

### Configuring active hours max range

With Windows 10, version 1703, administrators can specify the max active hours range users can set. This option gives you additional flexibility to leave some of the decision for active hours on the user's side, while making sure you allow enough time for updating. The max range is calculated from active hours start time.

To configure active hours max range through Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and open the **Specify active hours range for auto-restarts**.

To configure active hours max range through MDM, use [**Update/ActiveHoursMaxRange**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-activehoursmaxrange).

## Limit restart delays

After an update is installed, Windows 10 attempts automatic restart outside of active hours. If the restart does not succeed after 7 days (by default), the user will see a notification that restart is required. You can use the **Specify deadline before auto-restart for update installation** policy to change the delay from 7 days to a number of days between 2 and 14.

## Control restart notifications

In Windows 10, version 1703, we have added settings to control restart notifications for users.

### Auto-restart notifications

Administrators can override the default behavior for the auto-restart required notification. By default, this notification will dismiss automatically.

To configure this behavior through Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and select **Configure auto-restart required notification for updates**. When configured to **2 - User Action**, a user that gets this notification must manually dismiss it.

To configure this behavior through MDM, use [**Update/AutoRestartRequiredNotificationDismissal**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-AutoRestartRequiredNotificationDismissal)

You can also configure the period prior to an update that this notification will show up on. The default value is 15 minutes.

To change it through Group Policy, select **Configure auto-restart-reminder notifications for updates** under **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and select the period in minutes.

To change it through MDM, use [**Update/AutoRestartNotificationSchedule**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-AutoRestartNotificationSchedule).


In some cases, you don't need a notification to show up.

To do so through Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and select **Turn off auto-restart notifications for update installations**.

To do so through MDM, use [**Update/SetAutoRestartNotificationDisable**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-setautorestartnotificationdisable).

### Scheduled auto-restart warnings

Since users are not able to postpone a scheduled restart once the deadline has been reached, you can configure a warning reminder prior to the scheduled restart. You can also configure a warning prior to the restart, to notify users once the restart is imminent and allow them to save their work.

To configure both through Group Policy, find **Configure auto-restart warning notifications schedule for updates** under **Computer Configuration\Administrative Templates\Windows Components\Windows Update**. The warning reminder can be configured by **Reminder (hours)** and the warning prior to an imminent auto-restart can be configured by **Warning (mins)**.

In MDM, the warning reminder is configured using [**Update/ScheduleRestartWarning**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-ScheduleRestartWarning) and the auto-restart imminent warning is configured using [**Update/ScheduleImminentRestartWarning**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-ScheduleImminentRestartWarning).

### Engaged restart

Engaged restart is the period of time when users are required to schedule a restart. Initially, Windows will auto-restart outside of working hours. Once the set period ends (7 days by default), Windows transitions to user scheduled restarts.

The following settings can be adjusted for engaged restart:
* Period of time before auto-restart transitions to engaged restart.
* The number of days that users can snooze engaged restart reminder notifications.
* The number of days before a pending restart automatically executes outside of working hours.

In Group Policy, go to **Computer Configuration\Administrative Templates\Windows Components\Windows Update** and pick **Specify Engaged restart transition and notification schedule for updates**.

In MDM, use [**Update/EngagedRestartTransitionSchedule**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-EngagedRestartTransitionSchedule), [**Update/EngagedRestartSnoozeSchedule**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-EngagedRestartSnoozeSchedule) and [**Update/EngagedRestartDeadline**](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider?UpdatePolicies#update-EngagedRestartDeadline) respectively.

## Group Policy settings for restart

In the Group Policy editor, you will see a number of policy settings that pertain to restart behavior in **Computer Configuration\Administrative Templates\Windows Components\Windows Update**. The following table shows which policies apply to Windows 10.

| Policy | Applies to Windows 10 | Notes |
| --- | --- | --- |
| Turn off auto-restart for updates during active hours | ![yes](images/checkmark.png) | Use this policy to configure active hours, during which the device will not be restarted. This policy has no effect if the **No auto-restart with logged on users for scheduled automatic updates installations** or **Always automatically restart at the scheduled time** policies are enabled.  |
| Always automatically restart at the scheduled time | ![yes](images/checkmark.png) | Use this policy to configure a restart timer (between 15 and 180 minutes) that will start immediately after Windows Update installs important updates. This policy has no effect if the **No auto-restart with logged on users for scheduled automatic updates installations** policy is enabled. |
| Specify deadline before auto-restart for update installation | ![yes](images/checkmark.png)  | Use this policy to specify how many days (between 2 and 14) an automatic restart can be delayed. This policy has no effect if the **No auto-restart with logged on users for scheduled automatic updates installations** or **Always automatically restart at the scheduled time** policies are enabled.  |
| No auto-restart with logged on users for scheduled automatic updates installations | ![yes](images/checkmark.png) | Use this policy to prevent automatic restart when a user is logged on. This policy applies only when the **Configure Automatic Updates** policy is configured to perform scheduled installations of updates. <br>There is no equivalent MDM policy setting for Windows 10 Mobile. |
| Re-prompt for restart with scheduled installations | ![no](images/crossmark.png) |   |
| Delay Restart for scheduled installations | ![no](images/crossmark.png) |   |
| Reschedule Automatic Updates scheduled installations | ![no](images/crossmark.png) |   |

>[!NOTE]
>You can only choose one path for restart behavior.
>If you set conflicting restart policies, the actual restart behavior may not be what you expected.
>When using RDP, only active RDP sessions are considered as logged on users.


## Registry keys used to manage restart
The following tables list registry values that correspond to the Group Policy settings for controlling restarts after updates in Windows 10.

**HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate**

| Registry key |	Key type | Value |
| --- | --- | --- |
| ActiveHoursEnd	| REG_DWORD | 0-23: set active hours to end at a specific hour</br>starts with 12 AM (0) and ends with 11 PM (23) |
| ActiveHoursStart | REG_DWORD | 0-23: set active hours to start at a specific hour</br>starts with 12 AM (0) and ends with 11 PM (23) |
| SetActiveHours | REG_DWORD | 0: disable automatic restart after updates outside of active hours</br>1: enable automatic restart after updates outside of active hours |

**HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU**

| Registry key | Key type | Value |
| --- | --- | --- |
| AlwaysAutoRebootAtScheduledTime | REG_DWORD | 0: disable automatic reboot after update installation at scheduled time</br>1: enable automatic reboot after update installation at ascheduled time |
| AlwaysAutoRebootAtScheduledTimeMinutes | REG_DWORD | 15-180: set automatic reboot to occur after given minutes |
| AUOptions | REG_DWORD | 2: notify for download and notify for installation of updates</br>3: automatically download and notify for installation of updates</br>4: Automatically download and schedule installation of updates</br>5: allow the local admin to configure these settings</br>**Note:** To configure restart behavior, set this value to **4** |
| NoAutoRebootWithLoggedOnUsers | REG_DWORD | 0: disable do not reboot if users are logged on</br>1: do not reboot after an update installation if a user is logged on</br>**Note:** If disabled : Automatic Updates will notify the user that the computer will automatically restart in 5 minutes to complete the installation  |
| ScheduledInstallTime | REG_DWORD | 0-23: schedule update installation time to a specific hour</br>starts with 12 AM (0) and ends with 11 PM (23) |

There are 3 different registry combinations for controlling restart behavior:

- To set active hours, **SetActiveHours** should be **1**, while **ActiveHoursStart** and **ActiveHoursEnd** should define the time range.
- To schedule a specific installation and reboot time, **AUOptions** should be **4**, **ScheduledInstallTime** should specify the installation time, **AlwaysAutoRebootAtScheduledTime** set to **1** and **AlwaysAutoRebootAtScheduledTimeMinutes** should specify number of minutes to wait before rebooting.
- To delay rebooting if a user is logged on, **AUOptions** should be **4**, while **NoAutoRebootWithLoggedOnUsers** is set to **1**.

## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Manage updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
