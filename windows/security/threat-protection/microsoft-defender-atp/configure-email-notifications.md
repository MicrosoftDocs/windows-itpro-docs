---
title: Configure alert notifications in Microsoft Defender for Endpoint
description: You can use Microsoft Defender for Endpoint to configure email notification settings for security alerts, based on severity and other criteria.
keywords: email notifications, configure alert notifications, microsoft defender atp notifications, microsoft defender atp alerts, windows 10 enterprise, windows 10 education
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Configure alert notifications in Microsoft Defender ATP

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-emailconfig-abovefoldlink)

You can configure Defender for Endpoint to send email notifications to specified recipients for new alerts. This feature enables you to identify a group of individuals who will immediately be informed and can act on alerts based on their severity.

> [!NOTE]
> Only users with 'Manage security settings' permissions can configure email notifications. If you've chosen to use basic permissions management, users with Security Administrator or Global Administrator roles can configure email notifications.

You can set the alert severity levels that trigger notifications. You can also add or remove recipients of the email notification. New recipients get notified about alerts encountered after they are added. For more information about alerts, see [View and organize the Alerts queue](alerts-queue.md).

If you're using role-based access control (RBAC), recipients will only receive notifications based on the device groups that were configured in the notification rule.
Users with the proper permission can only create, edit, or delete notifications that are limited to their device group management scope.
Only users assigned to the Global administrator role can manage notification rules that are configured for all device groups.

The email notification includes basic information about the alert and a link to the portal where you can do further investigation.


## Create rules for alert notifications
You can create rules that determine the devices and alert severities to send email notifications for and the notification recipients.


1. In the navigation pane, select **Settings** > **Alert notifications**.

2. Click **Add notification rule**.

3. Specify the General information:
    - **Rule name** - Specify a name for the notification rule.
    - **Include organization name** - Specify the customer name that appears on the email notification.
    - **Include tenant-specific portal link** - Adds a link with the tenant ID to allow access to a specific tenant.
    - **Include device information** - Includes the device name in the email alert body.
    
        >[!NOTE]
        > This information might be processed by recipient mail servers that ar not in the geographic location you have selected for your Defender for Endpoint data.

    - **Devices** - Choose whether to notify recipients for alerts on all devices (Global administrator role only) or on selected device groups. For more information, see [Create and manage device groups](machine-groups.md).
    - **Alert severity** - Choose the alert severity level.

4. Click **Next**.
	
5. Enter the recipient's email address then click **Add recipient**. You can add multiple email addresses.

6. Check that email recipients are able to receive the email notifications by selecting **Send test email**.

7. Click **Save notification rule**.

## Edit a notification rule
1. Select the notification rule you'd like to edit.

2. Update the General and Recipient tab information.

3. Click **Save notification rule**.


## Delete notification rule

1. Select the notification rule you'd like to delete.

2. Click **Delete**.


## Troubleshoot email notifications for alerts
This section lists various issues that you may encounter when using email notifications for alerts.

**Problem:** Intended recipients report they are not getting the notifications.

**Solution:** Make sure that the notifications are not blocked by email filters:

1. Check that the Defender for Endpoint email notifications are not sent to the Junk Email folder. Mark them as Not junk.
2. Check that your email security product is not blocking the email notifications from Defender for Endpoint.
3. Check your email application rules that might be catching and moving your Defender for Endpoint email notifications.

## Related topics
- [Update data retention settings](data-retention-settings.md)
- [Configure advanced features](advanced-features.md)
