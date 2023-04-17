---
title: Microsoft 365 Apps for enterprise
description: This article explains how Windows Autopatch manages Microsoft 365 Apps for enterprise updates
ms.date: 03/10/2023 
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
ms.reviewer: hathind
---

# Microsoft 365 Apps for enterprise

## Service level objective

Windows Autopatch aims to keep at least 90% of eligible devices on a [supported version](/deployoffice/overview-update-channels#support-duration-for-monthly-enterprise-channel) of the Monthly Enterprise Channel (MEC) for the:

- [Enterprise Standard Suite](/deployoffice/about-microsoft-365-apps). The Enterprise Standard Suite includes Access, Excel, OneNote, Outlook, PowerPoint, and Word.
- Subscription versions of Microsoft Project and Visio desktop apps, for example, Project Plan 3 or Visio Plan 2.

Microsoft 365 Apps deployed on the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview) are supported for two months.

> [!NOTE]
> [Microsoft Teams](../operate/windows-autopatch-teams.md) uses a different update channel from the rest of Microsoft 365 Apps.

## Device eligibility

For a device to be eligible for Microsoft 365 Apps for enterprise updates (both 32-bit and 64-bit versions), as a part of Windows Autopatch, they must meet the following criteria:  

- The device must be turned on and have an internet connection.
- The device must be able to access the [required network endpoints](../prepare/windows-autopatch-configure-network.md#required-microsoft-product-endpoints) to reach the Office Content Delivery Network (CDN).
- There are no policy conflicts between Microsoft Autopatch policies and customer policies.
- The device must have checked into the Intune service in the last five days.
- If Microsoft 365 Apps are running, the apps must close for the update process to complete.

## Update release schedule

All devices registered for Windows Autopatch will receive updates from the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview). This practice provides your users with new features each month, and they'll receive just one update per month on a predictable release schedule. Updates are released on the second Tuesday of the month; these updates can include feature, security, and quality updates. These updates occur automatically and pulled directly from the Office Content Delivery Network (CDN).

Unlike Windows update, the Office CDN doesn't make the update available to all devices at once. Over the course of the release, the Office CDN gradually makes the update available to the whole population of devices. Windows Autopatch doesn't control the order in which updates are offered to devices across your estate. After the update downloads, there's a seven day [update deadline](/deployoffice/configure-update-settings-microsoft-365-apps) that specifies how long the user has until the user must apply the update.  

## Deployment rings

Since the Office CDN determines when devices are offered updates, Windows Autopatch doesn't use rings to control the rollout of these updates.

## End user experience

Windows Autopatch configures the following end user experiences:

- Behavior during updates
- Office client

### Behavior during updates

> [!NOTE]
> If Microsoft 365 Apps are running, the apps must close for the update process to complete.

Updates are only applied when Microsoft 365 Apps aren't running. Therefore, [end user notifications for Microsoft 365 Apps](/deployoffice/updates/end-user-update-notifications-microsoft-365-apps) usually appear when:

- The user is working in a Microsoft 365 App, such as Microsoft Outlook, and hasn't closed it in several days.
- The update [deadline arrives](/deployoffice/updates/end-user-update-notifications-microsoft-365-apps#notifications-your-users-see-when-you-set-an-update-deadline-for-microsoft-365-apps) and the updates still aren't applied.

### Office client app configuration

To ensure that users are receiving automatic updates, Windows Autopatch prevents the user from opting out of automatic updates.  

## Microsoft 365 Apps for enterprise update controls

Windows Autopatch doesn't allow you to pause or roll back an update in the Microsoft Intune admin center.  

[Submit a support request](../operate/windows-autopatch-support-request.md) to the Windows Autopatch Service Engineering Team to pause or roll back an update when needed.

> [!NOTE]
> Updates are bundled together into a single release in the [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview). Therefore, we can't roll back only a portion of the update for Microsoft 365 Apps for enterprise.  

## Allow or block Microsoft 365 App updates

For organizations seeking greater control, you can allow or block Microsoft 365 App updates for Windows Autopatch-enrolled devices. When the Microsoft 365 App update setting is set to **Block**, Windows Autopatch won't provide Microsoft 365 App updates on your behalf, and your organizations will have full control over these updates. For example, you can continue to receive updates from [channels](/deployoffice/overview-update-channels) other than the default [Monthly Enterprise Channel](/deployoffice/overview-update-channels#monthly-enterprise-channel-overview).

**To allow or block Microsoft 365 App updates:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to the **Devices** > **Release Management** > **Release settings**.
3. Go to the **Microsoft 365 apps updates** section. By default, the **Allow/Block** toggle is set to **Allow**.
4. Turn off the **Allow** toggle to opt out of Microsoft 365 App update policies. You'll see the notification: *Update in process. This setting will be unavailable until the update is complete.*
5. Once the update is complete, you’ll receive the notification: *This setting is updated.*

> [!NOTE]
> If the notification: *This setting couldn’t be updated. Please try again or submit a support request.* appears, use the following steps:<ol><li>Refresh your page.</li><li>Please repeat the same steps in To block Windows Autopatch Microsoft 365 apps updates.</li><li>If the issue persists, [submit a support request](../operate/windows-autopatch-support-request.md).</li>

**To verify if the Microsoft 365 App update setting is set to Allow:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Devices** > **Configuration profiles** > **Profiles**.
3. The following **five** profiles should be discoverable from the list of profiles:
    1. Windows Autopatch - Office Configuration
    2. Windows Autopatch - Office Update Configuration [Test]
    3. Windows Autopatch - Office Update Configuration [First]
    4. Windows Autopatch - Office Update Configuration [Fast]
    5. Windows Autopatch - Office Update Configuration [Broad]

**To verify if the Microsoft 365 App update setting is set to Block:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Devices** > **Configuration profiles** > **Profiles**.
3. The following **five** profiles should be removed from your list of profiles and no longer visible/active. Use the Search with the keywords “Office Configuration”. The result should return *0 profiles filtered*.
    1. Windows Autopatch - Office Configuration
    2. Windows Autopatch - Office Update Configuration [Test]
    3. Windows Autopatch - Office Update Configuration [First]
    4. Windows Autopatch - Office Update Configuration [Fast]
    5. Windows Autopatch - Office Update Configuration [Broad]

## Compatibility with Servicing Profiles

[Servicing profiles](/deployoffice/admincenter/servicing-profile) is a feature in the [Microsoft 365 Apps admin center](https://config.office.com/) that provides controlled update management of monthly Office updates, including controls for user and device targeting, scheduling, rollback, and reporting.

A [service profile](/deployoffice/admincenter/servicing-profile#compatibility-with-other-management-tools) takes precedence over other policies, such as a Microsoft Intune policy or the Office Deployment Tool. The servicing profile will affect all devices that meet the [device eligibility requirements](#device-eligibility) regardless of existing management tools in your environment. So, if you're targeting a managed device with a servicing profile it will be ineligible for Microsoft 365 App update management.

However, the device may still be eligible for other managed updates. For more information about a device's eligibility for a given [software update workload](windows-autopatch-update-management.md#software-update-workloads), see the Device eligibility section of each respective software update workload.

## Incidents and outages

If devices in your tenant aren't meeting the [service level objective](#service-level-objective) for Microsoft 365 Apps for enterprise updates, an incident will be raised. The Windows Autopatch Service Engineering Team will work to bring the devices back into compliance.

If you're experiencing issues related to Microsoft 365 Apps for enterprise updates, [submit a support request](../operate/windows-autopatch-support-request.md).
