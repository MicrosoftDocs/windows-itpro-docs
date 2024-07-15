---
title: Push notification support for device management
description: The DMClient CSP supports the ability to configure push-initiated device management sessions.
ms.topic: conceptual
ms.date: 07/08/2024
---

# Push notification support for device management

The [DMClient CSP](mdm/dmclient-csp.md) supports the ability to configure push-initiated device management sessions. With [Windows Notification Services (WNS)](/windows/apps/design/shell/tiles-and-notifications/windows-push-notification-services--wns--overview), a management server can request a device to establish a management session with the server through a push notification. A device is provided with a PFN for an application. This provision results in the device getting configured, to support a push to it by the management server. Once the device is configured, it registers a persistent connection with the WNS cloud (Battery Sense and Data Sense conditions permitting).

To initiate a device management session, the management server must first authenticate with WNS using its SID and client secret. Once authenticated, the server receives a token to initiate a raw push notification for any ChannelURI. When the management server wants to initiate a management session with a device, it can utilize the token and the device ChannelURI, and begin communicating with the device.

For more information about how to get push credentials (SID and client secret) and PFN to use in WNS, see [Get WNS credentials and PFN for MDM push notification](#get-wns-credentials-and-pfn-for-mdm-push-notification).

Because a device may not always be connected to the internet, WNS supports caching notifications for delivery to the device once it reconnects. To ensure your notification is cached for delivery, set the X-WNS-Cache-Policy header to Cache. Additionally, if the server wants to send a time-bound raw push notification, the server can use the X-WNS-TTL header that will provide WNS with a time-to-live binding so that the notification will expire after the time has passed. For more information, see [Raw notification overview](/windows/apps/design/shell/tiles-and-notifications/raw-notification-overview).

The following restrictions are related to push notifications and WNS:

- Push for device management uses raw push notifications. This restriction means that these raw push notifications don't support or utilize push notification payloads.
- Receipt of push notifications is sensitive to the Battery Saver and Data Sense settings on the device. For example, if the battery drops below certain thresholds, the persistent connection of the device with WNS is terminated. Additionally, if the user is utilizing Data Sense and has exceeded their monthly allotment of data, the persistent connection of the device with WNS is also terminated.
- A ChannelURI provided to the management server by the device is only valid for 30 days. The device automatically renews the ChannelURI after 15 days and triggers a management session on successful renewal of the ChannelURI. It's recommended that, during every management session, the management server queries the ChannelURI value to ensure that it has received the latest value. This query ensures that the management server doesn't attempt to use a ChannelURI that has expired.
- Push isn't a replacement for having a polling schedule.
- WNS reserves the right to block push notifications to your PFN if improper use of notifications is detected. Any devices being managed using this PFN cease to have push initiated device management support.

- In Windows 10, version 1511, we use the following retry logic for the DMClient:

  - If ExpiryTime is greater than 15 days, a schedule is set for when 15 days are left.
  - If ExpiryTime is between now and 15 days, a schedule set for 4 +/- 1 hours from now.
  - If ExpiryTime has passed, a schedule is set for 1 day +/- 4 hours from now.

- In Windows 10, version 1607 and later, we check for network connectivity before retrying. We don't check for internet connectivity. If network connectivity isn't available, the retry is skipped and a schedule is set for 4+/-1 hours to try again.

## Get WNS credentials and PFN for MDM push notification

To get a PFN and WNS credentials, you must create a Microsoft Store app.

1. Go to the Windows [Dashboard](https://dev.windows.com/en-US/dashboard) and sign in with your developer account.
1. Select **Apps and games** under Workspaces. Create a **New product** and select **MSIX or PWA app**.
1. Reserve an app name.
1. Select **Product Identity** under Product Management to view the **Package Family Name (PFN)** of your app.
1. Select **WNS/MPNS** under Product Management.
   1. Select the **App Registration portal** link. A new window opens showing your app in the Azure portal.
   1. In the Application Registration Portal page, you see the properties for the app that you created, such as:
      - Application ID
      - Application Secrets
      - Redirect URIs

For more information, see [Tutorial: Send notifications to Universal Windows Platform apps using Azure Notification Hubs](/azure/notification-hubs/notification-hubs-windows-store-dotnet-get-started-wns-push-notification).
