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
author: jaimeo
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



### Reboot

## Device activity policies

### Active hours

### Power policies

## Old or conflicting policies