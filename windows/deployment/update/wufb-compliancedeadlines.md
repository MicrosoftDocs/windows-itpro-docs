---
title: Enforce compliance deadlines with policies in Windows Update for Business (Windows 10)
description: This article contains information on how to enforce compliance deadlines using Windows Update for Business.
ms.custom: seo-marvel-apr2020
ms.prod: w10
ms.mktglfcycl: manage
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer:
manager: laurawi
ms.topic: article
---
# Enforcing compliance deadlines for updates

> Applies to: Windows 10

Deploying feature or quality updates for many organizations is only part of the equation for managing their device ecosystem. The ability to enforce update compliance is the next important part. Windows Update for Business provides controls to manage deadlines for when devices should migrate to newer versions.

The compliance options have changed for devices on Windows 10, version 1709 and above:

- [For Windows 10, version 1709 and above](#for-windows-10-version-1709-and-above)
- [Prior to Windows 10, version 1709](#prior-to-windows-10-version-1709)

## For Windows 10, version 1709 and above

With a current version of Windows 10, it's best to use the new policy introduced in June 2019 to Windows 10, version 1709 and above: **Specify deadlines for automatic updates and restarts**. In MDM, this policy is available as four separate settings:

- Update/ConfigureDeadlineForFeatureUpdates
- Update/ConfigureDeadlineForQualityUpdates
- Update/ConfigureDeadlineGracePeriod
- Update/ConfigureDeadlineNoAutoReboot


### Policy setting overview

|Policy|Description |
|-|-|
| (Windows 10, version 1709 and later) Specify deadlines for automatic updates and restarts | This policy includes a deadline and a configurable grace period with the option to opt out of automatic restarts until the deadline is reached. This is the recommended policy for Windows 10, version 1709 and later.|

### Suggested configurations

|Policy|Location|Quality update deadline in days|Feature update deadline in days|Grace period in days|
|-|-|-|-|-|
|(Windows 10, version 1709 and later) Specify deadlines for automatic updates and restarts | GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts    | 3 | 7 | 2 |

When **Specify deadlines for automatic updates and restarts** is set (Windows 10, version 1709 and later):

For feature updates, the deadline and grace period start their countdown from the time of a pending restart after the installation is complete. As soon as installation is complete and the device reaches pending restart, the device will try to update outside of active hours. Once the *effective deadline* is reached, the device will try to restart during active hours. (The effective deadline is whichever is the later of the restart pending date plus the specified deadline or the restart pending date plus the grace period.) 

For quality updates, the deadline countdown starts from the time the update is *offered* (not downloaded or installed). The grace period countdown starts from the time of the pending restart. The device will try to download and install the update at a time based on your other download and installation policies (the default is to automatically download and install in in the background). When the pending restart time is reached, the device will notify the user and try to update outside of active hours. Once the effective deadline is reached, the device will try to restart during active hours.



## Prior to Windows 10, version 1709

Two compliance flows are available:

- [Deadline only](#deadline-only)
- [Deadline with user engagement](#deadline-with-user-engagement)

### Deadline only

This flow only enforces the deadline where the device will attempt to silently restart outside of active hours before the deadline is reached. Once the deadline is reached the user is prompted with either a confirmation button or a restart now option.

#### User experience

Once the device is in the pending restart state, it will attempt to restart the device during non-active hours. This is known as the auto-restart period, and by default it does not require user interaction to restart the device.

> [!NOTE]
> Deadlines are enforced from pending restart state (for example, when the device has completed the installation and download from Windows Update).

#### Policy overview

|Policy|Description |
|-|-|
|Specify deadline before auto-restart for update installation|Governs the update experience once the device has entered pending restart state. It specifies a deadline, in days, to enforce compliance (such as imminent installation).|
|Configure Auto-restart warning notification schedule for updates|Configures the reminder notification and the warning notification for a scheduled installation. The user can dismiss a reminder, but not the warning.|

#### Suggested configuration

|Policy|Location|3-day compliance|5-day compliance|7-day compliance|
|-|-|-|-|-|
|Specify deadline before auto-restart for update installation| GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify deadline before auto-restart for update installation |State: Enabled<br>**Specify the number of days before pending restart will automatically be executed outside of active hours:** 2| State: Enabled<br>**Specify the number of days before pending restart will automatically be executed outside of active hours:** 3 | State: Enabled<br>**Specify the number of days before pending restart will automatically be executed outside of active hours:** 4|

#### Controlling notification experience for deadline

|Policy| Location|Suggested Configuration |
|-|-|-|
|Configure Auto-restart warning notification schedule for updates|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure auto-restart warning notifications schedule for updates	|State: Enabled <br>**Reminder** (hours): 2<br>**Warning** (minutes): 60 |

#### Notification experience for deadline

Notification users get for a quality update deadline:

![The notification users get for an impending quality update deadline](images/wufb-quality-notification.png)

Notification users get for a feature update deadline:

![The notification users get for an impending feature update deadline](images/wufb-feature-notification.png)

### Deadline with user engagement

This flow provides the end user with prompts to select a time to restart the device before the deadline is reached. If the device is unable to restart at the time specified by the user or the time selected is outside the deadline, the device will restart the next time it is active.

#### End-user experience

Before the deadline the device will be in two states: auto-restart period and engaged-restart period. During the auto-restart period the device will silently try to restart outside of active hours. If the device can't find an idle moment to restart, then the device will go into engaged-restart. The end user, at this point, can select a time that they would like the device to try to restart. Both phases happen before the deadline; once that deadline has passed then the device will restart at the next available time.

#### Policy overview

|Policy| Description |
|-|-|
|Specify engaged restart transition and notification schedule for updates|Governs how the user will be impacted by the pending restart. Transition days, first starts out in Auto-Restart where the device will find an idle moment to restart the device. After 2 days engaged restart will commence and the user will be able to choose a time|
|Configure Auto-restart required notification for updates|Governs the notifications during the Auto-Restart period. During Active hours, the user will be notified that the device is trying to restart. They will have the option to confirm or dismiss the notification|

#### Suggested configuration

|Policy| Location|	3-day compliance|  	5-day compliance|	7-day compliance |
|-|-|-|-|-|
|Specify engaged restart transition and notification schedule for updates|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify Engaged restart transition and notification schedule for updates|State: Enabled<br>**Transition** (Days): 2<br>**Snooze** (Days): 2<br>**Deadline** (Days): 3|State: Enabled<br>**Transition** (Days): 2<br>**Snooze** (Days): 2<br>**Deadline** (Days): 4|State: Enabled<br>**Transition** (Days): 2<br>**Snooze** (Days): 2<br>**Deadline** (Days): 5|

#### Controlling notification experience for engaged deadline

|Policy| Location	|Suggested Configuration
|-|-|-|
|Configure Auto-restart required notification for updates	|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure Auto-restart required notification for updates|State: Enabled <br>**Method**: 2- User|

#### Notification experience for engaged deadlines

Notification users get for quality update engaged deadline:

![The notification users get for an impending engaged quality update deadline example](images/wufb-quality-engaged-notification.png)

Notification users get for a quality update deadline:

![The notification users get for an impending quality update deadline example](images/wufb-quality-notification.png)

Notification users get for a feature update engaged deadline:

![The notification users get for an impending feature update engaged deadline example](images/wufb-feature-update-engaged-notification.png)

Notification users get for a feature update deadline:

![The notification users get for an impending feature update deadline example](images/wufb-feature-update-deadline-notification.png)

