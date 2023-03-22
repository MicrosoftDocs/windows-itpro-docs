---
title: Enforce compliance deadlines with policies in Windows Update for Business (Windows 10)
description: This article contains information on how to enforce compliance deadlines using Windows Update for Business.
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 12/31/2017
---
# Enforcing compliance deadlines for updates

**Applies to**

- Windows 10
- Windows 11

Deploying feature or quality updates for many organizations is only part of the equation for managing their device ecosystem. The ability to enforce update compliance is the next important part. Windows Update for Business provides controls to manage deadlines for when devices should migrate to newer versions.

With a current version, it's best to use the new policy introduced in June 2019 to Windows 10, version 1709 and later: **Specify deadlines for automatic updates and restarts**. In MDM, this policy is available as four separate settings:

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

As deadline policy set, we no longer consider install time from AU policy anymore as AU option policy and deadline policy works independent with each other.
