---
title: Enforce compliance deadlines with policies
titleSuffix: Windows Update for Business
description: This article contains information on how to enforce compliance deadlines using Windows Update for Business.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 10/10/2023
---
# Enforcing compliance deadlines for updates

Deploying feature or quality updates for many organizations is only part of the equation for managing their device ecosystem. The ability to enforce update compliance is the next important part. Windows Update for Business provides controls to manage deadlines for when devices should migrate to newer versions.

With a current version, it's best to use the new policy introduced in June 2019 to Windows 10, version 1709 and later: **Specify deadlines for automatic updates and restarts**. In MDM, this policy is available as separate settings:

- [Update/ConfigureDeadlineForFeatureUpdates](/windows/client-management/mdm/policy-csp-update#update-configuredeadlineforfeatureupdates) 
- [Update/ConfigureDeadlineForQualityUpdates](/windows/client-management/mdm/policy-csp-update#update-configuredeadlineforqualityupdates)
- [Update/ConfigureDeadlineGracePeriod](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinegraceperiod)
- [Update/ConfigureDeadlineGracePeriodForFeatureUpdates](/windows/client-management/mdm/policy-csp-update#configuredeadlinegraceperiodforfeatureupdates) (Windows 11, version 22H2 or later)
- [Update/ConfigureDeadlineNoAutoReboot](/windows/client-management/mdm/policy-csp-update#update-configuredeadlinenoautoreboot)


## Policy setting overview for clients running Windows 11, version 22H2 and later

|Policy| Description |
|-|-|
| Specify deadlines for automatic updates and restarts | This policy lets you specify the number of days before quality and feature updates are installed on devices automatically, and a grace period, after which required restarts occur automatically. This policy includes an option to opt out of automatic restarts until the end of the grace period is reached. |

### Suggested configurations for clients running Windows 11, version 22H2 and later

| Policy | Location | Quality updates deadline in days | Quality updates grace period in days | Feature updates deadline in days | Feature updates grace period in days |
|-|-|-|-|-|-|
| Specify deadlines for automatic updates and restarts | GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts | 7 | 2 | 2 | 2 |

When **Specify deadlines for automatic updates and restarts** is set:

The deadline calculation for both quality and feature updates is based off the time the client's update scan initially discovered the update. Previously, the deadline was based off the release date of the update for quality updates and the reboot pending date for feature updates. The change for deadline calculation was made to improve the predictability of restart.

The grace period for both quality and feature updates starts its countdown from the time of a pending restart after the installation is complete. As soon as installation is complete and the device reaches pending restart, users are able to schedule restarts during the grace period and Windows can still automatically restart outside of active hours if users choose not to schedule restarts. Once the *effective deadline* is reached, the device tries to restart during active hours. (The effective deadline is whichever is the later of the restart pending date plus the specified deadline or the restart pending date plus the grace period.) Grace periods are useful for users who may be coming back from vacation, or other extended time away from their device, to ensure a forced reboot doesn't occur immediately after they return.

> [!NOTE]
> When **Specify deadlines for automatic updates and restarts** is used, download, installation, and reboot settings stemming from the [Configure Automatic Updates](waas-restart.md#schedule-update-installation) are ignored.

## Policy setting overview for clients running Windows 11, version 21H2 and earlier

|Policy|Description |
|-|-|
| (Windows 10, version 1709 and later) Specify deadlines for automatic updates and restarts | This policy includes a deadline and a configurable grace period with the option to opt out of automatic restarts until the deadline is reached. This is the recommended policy for Windows 10, version 1709 and later.|

### Suggested configurations for clients running Windows 11, version 21H2 and earlier

|Policy|Location|Quality update deadline in days|Feature update deadline in days|Grace period in days|
|-|-|-|-|-|
|(Windows 10, version 1709 and later) Specify deadlines for automatic updates and restarts | GPO: Computer Configuration > Administrative Templates > Windows Components > Windows Update > Specify deadlines for automatic updates and restarts  | 2 | 2 | 5 |

When **Specify deadlines for automatic updates and restarts** is set (Windows 10, version 1709 and later):

For feature updates, the deadline and grace period start their countdown from the time of a pending restart after the installation is complete. As soon as installation is complete and the device reaches pending restart, the device tries to update outside of active hours. Once the *effective deadline* is reached, the device tries to restart during active hours. (The effective deadline is whichever is the later of the restart pending date plus the specified deadline or the restart pending date plus the grace period.) 

For quality updates, the deadline countdown starts from the time the update is *offered* (not downloaded or installed). The grace period countdown starts from the time of the pending restart. The device tries to download and install the update at a time based on your other download and installation policies (the default is to automatically download and install in the background). When the pending restart time is reached, the device notifies the user and tries to update outside of active hours. Once the effective deadline is reached, the device tries to restart during active hours.

> [!NOTE]
> - When using the newer policy that contains **Feature updates grace period in days**, this setting is ignored by clients that are running Windows 11 version 21H2 and earlier. The grace period for quality updates is used for both quality updates and feature updates for these clients.
> - When **Specify deadlines for automatic updates and restarts** is used, download, installation, and reboot settings stemming from the [Configure Automatic Updates](waas-restart.md#schedule-update-installation) are ignored.
