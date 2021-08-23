---
title: Policies for update compliance, activity, and end-user experience
ms.reviewer: 
manager: laurawi
description: 
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
author: jaimeo
ms.localizationpriority: medium
ms.audience: itpro
ms.topic: article
ms.collection: M365-modern-desktop
---

# Policies for update compliance, activity, and end-user experience
Keeping devices up to date is the best way to keep them working smoothly and securely. 

## Deadlines for update compliance

You can control how strictly devices must reliably keep to your desired update schedule by using update deadline policies. Windows components adapt based on these deadlines. Also, they can make tradeoffs between user experience and velocity in order to meet your desired update deadlines. For example, they can prioritize user experience well before the
deadline approaches, and then prioritize velocity as the deadline nears, while still affording the user some control.

### Deadlines

Beginning with Windows 10, version 1903 and with the August 2019 security update for Windows 10, version 1709
and late, a new policy was introduced to replace older deadline-like policies: **Specify deadlines for automatic updates and restarts**.

The older policies started enforcing deadlines once the device reached a “restart pending” state for
an update. The new policy starts the countdown for the update installation deadline from when the
update is published plus any deferral. In addition, this policy includes a configurable grace period and the option
to opt out of automatic restarts until the deadline is reached (although we recommend always allowing automatic
restarts for maximum update velocity).

> [!IMPORTANT]
> If you use the new **Specify deadlines for automatic updates and restarts** setting in Windows 10,
> version 1903, you must disable the [older deadline policies](wufb-compliancedeadlines.md#prior-to-windows-10-version-1709) because they could conflict.

We recommend you set deadlines as follows:
- Quality update deadline, in days: 3
- Feature update deadline, in days: 7
- 
Notifications are automatically presented to the user at appropriate times, and users can choose to be reminded
later, to reschedule, or to restart immediately, depending on how close the deadline is. We recommend that you
do **not** set any notification policies, because they are automatically configured with appropriate defaults. An exception is if you
have kiosks or digital signage.

While three days for quality updates and seven days for feature updates is our recommendation, you might decide
you want more or less, depending on your organization and its requirements, and this policy is configurable down
to a minimum of two days.


> [!IMPORTANT]
> If the device is unable to reach the Internet, it can't determine when Microsoft
> published the update, so it won't be able to enforce the deadline. Learn more about [low activity devices](#device-activity-policies).

### Grace periods

You can set a period of days for Windows to find a minimally disruptive automatic restart time before the restart is enforced. This
is especially useful in cases where a user has been away for many days (for example, on vacation) so that the device will not
be forced to update immediately when the user returns.

We recommend you set the following:

- Grace period, in days: 2

Once the deadline and grace period have passed, updates are applied automatically, and a restart occurs
regardless of [active hours](#active-hours).


### Let Windows choose when to restart

Windows can use user interactions to dynamically identify the least disruptive time for an
automatic restart. To take advantage of this feature, ensure **ConfigureDeadlineNoAutoReboot** is set to
**Disabled**.

## Device activity policies

Windows typically requires that a device is active and connected to the internet for at least six hours, with at least two
of continuous activity, in order to successfully complete a system update. The device could have other
physical circumstances that prevent successful installation of an update--for example, if a laptop is running low
on battery power, or the user has shut down the device before active hours end and the device cannot comply
with the deadline.

You can use the settings in this section to ensure that devices are actually available to install updates during the update compliance period.

### Active hours

"Active hours" identify the period of time when a device is expected to be in use. Normally, restarts will occur outside of
these hours. Windows 10, version 1903 introduced "intelligent active hours," which allow the system to learn active hours based on a user’s activities, rather than you as an administrator having to make decisions for your organization or allowing the user to choose active hours that minimize the period when the system can install an update.

> [!IMPORTANT]
> If you used the **Configure Active Hours** setting in previous versions of Windows 10, these
options must be **Disabled** in order to take advantage of intelligent active hours.

If you do set active hours, we recommend setting the following policies to **Disabled** in order to increase update
velocity:

- [Delay automatic reboot](waas-restart.md#delay-automatic-reboot). While it’s possible to set the system to delay restarts for users who are logged
in, this might delay an update indefinitely if a user is always either logged in or shut down. Instead, we
recommend setting the following polices to **Disabled**:
    - **Turn off auto-restart during active hours**
    - **No auto-restart with logged on users for scheduled automatic updates**

    - [Limit restart delays](waas-restart.md#limit-restart-delays). By using compliance deadlines, your users will receive notifications that
updates will occur, so we recommend that you set this policy to **Disabled**, to allow compliance deadlines to eliminate the user’s ability to delay a restart outside of compliance deadline settings.

- **Do not allow users to approve updates and reboots**. Letting users approve or engage with the update process outside of the deadline policies decreases update velocity and increases risk. These policies should be set to **Disabled**:
    - [Update/RequireUpdateApproval](/windows/client-management/mdm/policy-csp-update#update-requireupdateapproval)
    - [Update/EngagedRestartDeadline](/windows/client-management/mdm/policy-csp-update#update-engagedrestartdeadline)
    - [Update/EngagedRestartDeadlineForFeatureUpdates](/windows/client-management/mdm/policy-csp-update#update-engagedrestartdeadlineforfeatureupdates)
    - [Update/EngagedRestartSnoozeSchedule](/windows/client-management/mdm/policy-csp-update#update-engagedrestartsnoozeschedule)
    - [Update/EngagedRestartSnoozeScheduleForFeatureUpdates](/windows/client-management/mdm/policy-csp-update#update-engagedrestartsnoozescheduleforfeatureupdates)
    - [Update/EngagedRestartTransitionSchedule](/windows/client-management/mdm/policy-csp-update#update-engagedrestarttransitionschedule)

- [Configure automatic update](waas-wu-settings.md#configure-automatic-updates). By properly setting policies to configure automatic updates, you can increase update velocity by having clients contact a Windows Server Update Services (WSUS) server so it can manage them. We recommend that you set this policy to **Disabled**. However, if you need to provide values, ensure that you set downloads to install automatically by setting the [Group Policy](waas-manage-updates-wsus.md#configure-automatic-updates-and-update-service-location) to **4**. If you’re using Microsoft Intune, setting the value to [Reset to Default](/mem/intune/protect/windows-update-settings#user-experience-settings).
- **Allow auto Windows Update to download over metered networks**. Since more and more devices primarily use cellular data and do not have wi-fi access, consider allowing users to automatically download updates from a metered network. Though the default setting does not allow download over a metered network, setting this value to **1** can increase velocity by enabling users to get updates whether they are connected to the internet or not, provided they have cellular service. 

> [!IMPORTANT]
> Older versions of Windows don't support intelligent active hours. If your device runs a version of Windows prior to Windows 10, version 1903, we recommend setting the following policies:
>- [Configure active hours](waas-restart.md#configure-active-hours). Starting with Windows 10, version 1703, you can specify a maximum active-hour range which is counted from the active hours start time. We recommend setting
this value to **10**.
>- [Schedule update installation](waas-restart.md#schedule-update-installation). In the **Configure Automatic Updates** settings, there are two ways to control a forced restart after a specified installation time. If you use **schedule update installation**, do not enable both settings because they will most likely conflict.
>    - **Specify automatic maintenance time**. This setting lets you set broader maintenance windows for updates and ensures that this schedule does not conflict with active hours. We
recommend setting this value to **3** (corresponding to 3 AM). If 3:00 AM is in the middle of the work shift, pick another time that is at least a couple hours before your scheduled work time begins.
>    - **Schedule the install time**. This setting allows you to schedule an installation time for a restart. We do *not* recommend you set this to **Disabled** as it could conflict with active hours. 

### Power policies

Devices must actually be available during non-active hours in order to an update. They can't do this if power policies prevent them from waking up. In our organization, we strive to set a balance between security and eco-friendly configurations. We recommend the following settings to achieve what we feel are the appropriate tradeoffs:

To a user, a device is either on or off, but for Windows, there are states that will allow an update to occur (active) and states that do not (inactive). Some states are considered active (sleep), but the user may think the device is off. Also, there are power statuses (plugged in/battery) that Windows checks before starting an update.

You can override the default settings and prevent users from changing them in order to ensure that devices are available for updates during non-active hours.

> [!NOTE]
> One way to ensure that devices can install updates when you need them to is to educate your users to keep devices plugged in during non-active hours. Even with the best policies, a device that isn't plugged in will not be updated, even in sleep mode.

We recommend these power management settings:

- Sleep mode (S1 or S0 Low Power Idle or [Modern Standby](/windows-hardware/design/device-experiences/modern-standby)). When a device is in sleep mode, the system
appears to be off but if an update is available, it can wake the device up in order to take an update. The
power consumption in sleep mode is between working (system fully usable) and hibernate (S4 - lowest
power level before shutdown). When a device is not being used, the system will generally move to sleep
mode before it goes to hibernate. Issues in velocity arise when the time between sleep and hibernate is
too short and Windows does not have time to complete an update. Sleep mode is an important setting
because the system can wake the system from sleep in order to start the update process, as long as there
is enough power.

Set the following policies to **Enable** or **Do Not Configure** in order to allow the device to use sleep mode:
- [Power/AllowStandbyStatesWhenSleepingOnBattery](/windows/client-management/mdm/policy-csp-power#power-allowstandbystateswhensleepingonbattery)
- [Power/AllowStandbyWhenSleepingPluggedIn](/windows/client-management/mdm/policy-csp-power#power-selectlidcloseactionpluggedin)

Set the following policies to **1 (Sleep)** so that when a user closes the lid of a device, the system goes to
sleep mode and the device has an opportunity to take an update:
- [Power/SelectLidCloseActionOnBattery](/windows/client-management/mdm/policy-csp-power#power-selectlidcloseactiononbattery)
- [Power/SelectLidCloseActionPluggedIn](/windows/client-management/mdm/policy-csp-power#power-selectlidcloseactionpluggedin)

- **Hibernate**. When a device is hibernating, power consumption is very low and the system cannot wake up
without user intervention, like pressing the power button. If a device is in this state, it cannot be updated
unless it supports an ACPI Time and Alarm Device (TAD). That said, if a device supporting Traditional Sleep
(S3) is plugged in, and a Windows update is available, a hibernate state will be delayed until the update is complete.

> [!NOTE]
> This does not apply to devices that support Modern Standby (S0 Low Power Idle). You can check which system sleep state (S3 or S0 Low Power Idle) a device supports by running `powercfg /a` at a command prompt. For more, see [Powercfg options](/windows-hardware/design/device-experiences/powercfg-command-line-options#option_availablesleepstates).

The default timeout on devices that support traditional sleep is set to three hours. We recommend that you do not reduce these policies in order to allow Windows Update the opportunity to restart the device before sending it into hibernation:

- [Power/HibernateTimeoutOnBattery](/windows/client-management/mdm/policy-csp-power#power-hibernatetimeoutonbattery)
- [Power/HibernateTimeoutPluggedIn](/windows/client-management/mdm/policy-csp-power#power-hibernatetimeoutpluggedin)

## Old or conflicting policies

Each release of Windows 10 can introduce new policies to make the experience better for both administrators and their organizations. When we release a new client policy, we either release it purely for that release and later or we backport the policy to make it available on earlier versions. 

> [!IMPORTANT]
> If you are using Group Policy, note that we don't update the old ADMX templates and you must use the newer (1903) ADMX template in order to use the newer policy. Also, if you are
> using an MDM tool (Microsoft or non-Microsoft), you can't use the new policy until it's available in the tool interface.

As administrators, you have set up and expect certain behaviors, so we expressly do not remove older policies since they were set up for your particular use cases. However, if you set a new policy without disabling a similar older policy, you could have conflicting behavior and updates might not perform as expected.

> [!IMPORTANT] 
> We sometimes find that administrators set devices to get both Group Policy settings and MDM settings from an MDM server such as Microsoft Intune. Policy conflicts are handled differently, depending on how they are ultimately set up:
> - Windows updates: Group Policy settings take precedence over MDM.
> - Microsoft Intune: If you set different values for the same policy on two different groups, you will
> receive an alert and neither policy will be set until the conflict is resolved.
> It is crucial that you disable conflicting policies in order for devices in your organization to take updates as
> expected. For example, if a device is not reacting to your MDM policy changes, check to see if a similar
> policy is set in Group Policy with a differing value.
> If you find that update velocity is not as high as you expect or if some devices are slower than others, it might be
> time to clear all polices and settings and specify only the recommended update policies. See the Policy and settings reference for a consolidated list of recommended polices.

The following are policies that you might want to disable because they could decrease update velocity or there are better policies to use that might conflict:
- **Defer Feature Updates Period in Days**. For maximum update velocity, it's best to set this to **0** (no
deferral) so that the feature update can complete and monthly security updates will be offered again. Even if there is an urgent quality update that must be quickly deployed, it is best to use **Pause Feature
Updates** rather than setting a deferral policy. You can choose a longer period if you don't want to stay up to date with the latest feature update.
- **Defer Quality Updates Period in Days**. To minimize risk and maximize update velocity, the maximum time you might want to consider while evaluating the update with a different ring of devices is two to three days.
- **Pause Feature Updates Start Time**. Set to **Disabled** unless there is a known issue requiring time for a resolution.
- **Pause Quality Updates Start Time**. Set to **Disabled** unless there is a known issue requiring time for a resolution.
- **Deadline No Auto Reboot**. Default is **Disabled – Set to 0** . We recommend that devices automatically try to restart when an update is received. Windows uses user interactions to dynamically identify the least disruptive time to restart.

There are additional policies are no longer supported or have been superseded.