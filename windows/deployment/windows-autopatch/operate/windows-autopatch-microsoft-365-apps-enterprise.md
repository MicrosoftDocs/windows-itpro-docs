---
title: Microsoft 365 Apps for enterprise
description: This article explains how Microsoft 365 Apps for enterprise updates are managed in Windows Autopatch
ms.date: 08/08/2022
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
msreviewer: hathind
---

# Microsoft 365 Apps for enterprise

## Service level objective

Windows Autopatch aims to keep at least 90% of eligible devices on a [supported version](/deployoffice/overview-update-channels#support-duration-for-monthly-enterprise-channel) of the Monthly Enterprise Channel (MEC) for [Enterprise Standard Suite](/deployoffice/about-microsoft-365-apps) (Access, Excel, OneNote, Outlook, PowerPoint, and Word). Microsoft 365 Apps deployed on the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview) are supported for two months.

> [!NOTE]
> [Microsoft Teams](../operate/windows-autopatch-teams.md) uses a different update channel from the rest of Microsoft 365 Apps.

## Device eligibility

For a device to be eligible for Microsoft 365 Apps for enterprise updates (both 32-bit and 64-bit versions), as a part of Windows Autopatch, they must meet the following criteria:  

- There are no policy conflicts between Microsoft Autopatch policies and customer policies.
- The device must have checked into the Intune service in the last five days.

## Update release schedule

All devices registered for Windows Autopatch will receive updates from the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview). This practice provides your users with new features each month, and they'll receive just one update per month on a predictable release schedule. Updates are released on the second Tuesday of the month; these updates can include feature, security, and quality updates. These updates occur automatically and are pulled directly from the Office Content Delivery Network (CDN).

Unlike Windows update, the Office CDN doesn't make the update available to all devices at once. Over the course of the release, the Office CDN gradually makes the update available to the whole population of devices. Windows Autopatch doesn't control the order in which updates are offered to devices across your estate. After the update has been downloaded, there's a seven day [update deadline](/deployoffice/configure-update-settings-microsoft-365-apps) that specifies how long the user has until the user must apply the update.  

## Deployment rings

Since the Office CDN determines when devices are offered updates, Windows Autopatch doesn't use rings to control the rollout of these updates.

## End user experience

There are two parts of the end user experience that are configured by Windows Autopatch:

- Behavior during updates
- Office client

### Behavior during updates

Updates can only be applied when Microsoft 365 Apps aren't running. Therefore, notifications usually appear because the user is working in a Microsoft 365 App, such as Microsoft Outlook, and hasn't closed it in several days.

Once the device has downloaded the update, users are given notifications leading up to the deadline. They'll receive the following message in the notification area in Windows, reminding them that updates are ready to be applied.

*Updates ready to be applied
Updates are required by your system admin are blocked by one or more apps. Office will restart at mm/dd/yyyy h:mm AM/PM to apply updates.*

Alternatively, users can select **Update now** to apply the updates. The user is then prompted to close all open Office programs. After the updates are applied, the message disappears.

When the deadline arrives and the updates still aren't applied, users will:

1. See a dialog box that warns them that they have 15 minutes before the updates are applied.
1. Have 15 minutes to save and close any work.

When the countdown reaches 00∶00, any open Office programs are closed, and the updates are applied.

### Office client app configuration

To ensure that users are receiving automatic updates, Windows Autopatch prevents the user from opting out of automatic updates.  

## Update controls

If Windows Autopatch detects issues between versions of Microsoft 365 Apps for enterprise, we might pause the update by forcing Microsoft 365 Apps to stay on a specific version.  

Windows Autopatch will either:

- Choose to stay on the previous version for rings that haven't received the update yet.
- Force all devices to roll back to the previous version.

> [!NOTE]
> Windows Autopatch doesn't currently allow customers to force their devices to stay on a previous version or rollback to a previous version.

Since quality updates are bundled together into a single release in the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview), we can't roll back only a portion of the update for Microsoft 365 Apps for enterprise.  

## Compatibility with Servicing Profiles

[Servicing profiles](/deployoffice/admincenter/servicing-profile) is a feature in the [Microsoft 365 Apps admin center](https://config.office.com/) that provides controlled update management of monthly Office updates, including controls for user and device targeting, scheduling, rollback, and reporting.

A [service profile](/deployoffice/admincenter/servicing-profile#compatibility-with-other-management-tools) takes precedence over other policies, such as a Microsoft Intune policy or the Office Deployment Tool. This means that the servicing profile will affect all devices that meet the [device eligibility requirements](#device-eligibility) regardless of existing management tools in your environment. So, if you're targeting a managed device with a servicing profile it will be ineligible for Microsoft 365 App update management.

However, the device may still be eligible for other managed updates. For more information about a device's eligibility for a given [software update workload](windows-autopatch-update-management.md#software-update-workloads), see the Device eligibility section of each respective software update workload.

## Incidents and outages

If devices in your tenant aren't meeting the [service level objective](#service-level-objective) for Microsoft 365 Apps for enterprise updates, an incident will be raised. The Windows Autopatch Service Engineering Team will work to bring the devices back into compliance.

If you're experiencing issues related to Microsoft 365 Apps for enterprise updates, [submit a support request](../operate/windows-autopatch-support-request.md).
