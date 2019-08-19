---
title: Enforce compliance deadlines with policies in Windows Update for Business (Windows 10)
description: Learn how to enforce compliance deadlines using Windows Update for Business.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jaimeo
ms.localizationpriority: medium
ms.author: jaimeo
ms.reviewer: 
manager: laurawi
ms.topic: article
---
# Enforcing compliance deadlines for updates 

>Applies to: Windows 10

Deploying feature or quality updates for many organizations is only part of the equation for managing their device ecosystem. The ability to enforce update compliance is the next important part. Windows Update for Business provides controls to manage deadlines for when devices should migrate to newer versions. 

The compliance options have changed with the release of Windows 10, version 1903:

- Starting with Windows 10, version 1903
- Prior to Windows 10, version 1903


## Starting with Windows 10, version 1903

With a current version of Windows 10, it's best to use the new policy introduced in Windows 10, version 1903: **Specify deadlines for automatic updates and restarts**. In MDM, this policy is available as four separate settings:

- Update/ConfigureDeadlineForFeatureUpdates 
- Update/ConfigureDeadlineForQualityUpdates 
- Update/ConfigureDeadlineGracePeriod 
- Update/ConfigureDeadlineNoAutoReboot 

This policy starts the countdown for the update installation deadline from when the update is published, instead of starting with the "restart pending" state as the older policies did.

The policy also includes a configurable grace period to allow, for example, users who have been away to have extra time before being forced to restart their devices.

Further, the policy includes the option to opt out of automatic restarts until the deadline is reached by presenting the "engaged restart experience" until the deadline has actually expired. At this point the device will automatically schedule a restart regardless of active hours.



### Policy setting overview

|Policy|Description |
|-|-|
| (starting in Windows 10, version 1903) Specify deadlines for automatic updates and restarts | Similar to the older "Specify deadline before auto-restart for update installation," but starts the deadline countdown from when the update was published. Also introduces a configurable grace period and the option to opt out of automatic restarts until the deadline is reached. |



### Suggested configurations  

|Policy|Location|Quality update deadline in days|Feature update deadline in days|Grace period in days|
|-|-|-|-|-|
|(starting in Windows 10, version 1903) Specify deadlines for automatic updates and restarts | GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts    | 7 | 7 | 2 |

When **Specify deadlines for automatic updates and restarts** is set (starting in Windows 10, version 1903):

**While restart is pending, before the deadline occurs:**
- For the first few days, the user receives a toast notification
- After this period, the user receives this dialog:

![The notification users get for an impending restart prior to deadline](images/wufb-update-deadline-warning.png)
- If the user scheduled a restart, or if an auto restart is scheduled, 15 minutes before the scheduled time the user is receives this notification that the restart is about to occur:

![The notification users get for an impending restart 15 minutes prior to restart](images/wufb-restart-imminent-warning.png)

**If the restart is still pending after the deadline passes:**
- Within 12 hours before the deadline passes, the user receives this notification that the deadline is approaching:

![The notification users get for an approaching restart deadline](images/wufb-pastdeadline-restart-warning.png)
- Once the deadline has passed, the user is forced to restart to keep their devices in compliance and receives this notification:

![The notification users get for an imminent restart after the deadline](images/wufb-pastdeadline-restartnow.png)




## Prior to Windows 10, version 1903


Two compliance flows are available: 

- [Deadline only](#deadline-only)
- [Deadline with user engagement](#deadline-with-user-engagement)

### Deadline only 

This flow only enforces the deadline where the device will attempt to silently restart outside of active hours before the deadline is reached. Once the deadline is reached the user is prompted with either a confirmation button or a restart now option. 

#### End-user experience

Once the device is in the pending restart state, it will attempt to restart the device during non-active hours. This is known as the auto-restart period, and by default it does not require user interaction to restart the device. 

>[!NOTE]
>Deadlines are enforced from pending restart state (for example, when the device has completed the installation and download from Windows Update).

#### Policy overview

|Policy|Description |
|-|-|
|Specify deadline before auto-restart for update installation|Governs the update experience once the device has entered pending restart state. It specifies a deadline, in days, to enforce compliance (such as imminent installation).|
|Configure Auto-restart warning notification schedule for updates|Configures the reminder notification and the warning notification for a scheduled installation. The user can dismiss a reminder, but not the warning.|




#### Suggested configurations  

|Policy|Location|3-day compliance|5-day compliance|7-day compliance|
|-|-|-|-|-|
|Specify deadline before auto-restart for update installation| GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify deadline before auto-restart for update installation |State: Enabled 
Specify the number of days before pending restart will automatically be executed outside of active hours: 2| State: Enabled 
Specify the number of days before pending restart will automatically be executed outside of active hours: 3 | State: Enabled 
Specify the number of days before pending restart will automatically be executed outside of active hours: 4|

### Controlling notification experience for deadline 

|Policy| Location|Suggested Configuration |
|-|-|-|
|Configure Auto-restart warning notification schedule for updates|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure auto-restart warning notifications schedule for updates	|State: Enabled <br>**Reminder** (hours): 2<br>**Warning** (minutes): 60 |

### Notification experience for deadline

Notification users get for a quality update deadline:
![The notification users get for an impending quality update deadline](images/wufb-quality-notification.png)

Notification users get for a feature update deadline:
![The notification users get for an impending feature update deadline](images/wufb-feature-notification.png)

## Deadline with user engagement 

This flow provides the end user with prompts to select a time to restart the device before the deadline is reached. If the device is unable to restart at the time specified by the user or the time selected is outside the deadline, the device will restart the next time it is active. 

### End-user experience

Before the deadline the device will be in two states: auto-restart period and engaged-restart period. During the auto-restart period the device will silently try to restart outside of active hours. If the device can't find an idle moment to restart, then the device will go into engaged-restart. The end user, at this point, can select a time that they would like the device to try to restart. Both phases happen before the deadline; once that deadline has passed then the device will restart at the next available time. 

### Policy overview

|Policy| Description |
|-|-|
|Specify engaged restart transition and notification schedule for updates|Governs how the user will be impacted by the pending restart. Transition days, first starts out in Auto-Restart where the device will find an idle moment to restart the device. After 2 days engaged restart will commence and the user will be able to choose a time|
|Configure Auto-restart required notification for updates|Governs the notifications during the Auto-Restart period. During Active hours, the user will be notified that the device is trying to restart. They will have the option to confirm or dismiss the notification|

### Suggested configuration 

|Policy| Location|	3-day compliance|  	5-day compliance|	7-day compliance |
|-|-|-|-|-|
|Specify engaged restart transition and notification schedule for updates|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify Engaged restart transition and notification schedule for updates|State: Enabled<br>**Transition** (Days): 2<br>**Snooze** (Days): 2<br>**Deadline** (Days): 3|State: Enabled<br>**Transition** (Days): 2<br>**Snooze** (Days): 2<br>**Deadline** (Days): 4|State: Enabled<br>**Transition** (Days): 2<br>**Snooze** (Days): 2<br>**Deadline** (Days): 5|

### Controlling notification experience for engaged deadline 

|Policy| Location	|Suggested Configuration 
|-|-|-|
|Configure Auto-restart required notification for updates	|GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure Auto-restart required notification for updates|State: Enabled <br>**Method**: 2- User|

### Notification experience for engaged deadlines

Notification users get for quality update engaged deadline:

![The notification users get for an impending engaged quality update deadline](images/wufb-quality-engaged-notification.png)

Notification users get for a quality update deadline:

![The notification users get for an impending quality update deadline](images/wufb-quality-notification.png)

Notification users get for a feature update engaged deadline:

![The notification users get for an impending feature update engaged deadline](images/wufb-feature-update-engaged-notification.png)

Notification users get for a feature update deadline:

![The notification users get for an impending feature update deadline](images/wufb-feature-update-deadline-notification.png)


