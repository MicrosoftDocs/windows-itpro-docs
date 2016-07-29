---
title: Configure enhanced notifications for Windows Defender
description: In Windows 10, you can enable advanced notifications for endpoints throughout your enterprise network.
keywords: notifications, defender, endpoint, management, admin
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: iaanw
---

# Configure enhanced notifications for Windows Defender in Windows 10

**Applies to:**

- Windows 10, version 1607

In Windows 10, application notifications about malware detection and remediation by Windows Defender are more robust, consistent, and concise.

Notifications will appear on endpoints when manually triggered and scheduled scans are completed and threats are detected. These notifications will also be seen in the **Notification Summar**, and a summary of scans and threat detections will also appear at regular time intervals.

You can enable and disable enhanced notifications  with the registry or in Windows Settings. 

## Configure enhanced notifications

You can disable enhanced notifications on individual endpoints by configuring the registry or in Windows Settings. You can also use Group Policy to suppress certain types of notifications, or display additional, customized text to endpoints inside the notifications.

**Use the registry to disable Windows Defender notifications on individual endpoints:**

1. Click **Start**, type **Run**, and press **Enter**.

2. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the **ux configuration** key under:

   ```text
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender
```

5. Double-click the **Notifications_Suppress** value and set it to **1**.

![Image of enhanced notification suppression in Registry Editor](images/defender/ux-config-key.png)


**Use Windows Settings to disable enhanced notifications on individual endpoints**

1. Open the **Start** menu and click or type **Settings**.

1. Click **Update & Security** and then **Windows Defender**. Scroll to the bottom of the settings page until you see the **Enhanced notifications** section.

1. Toggle the setting between **On** and **Off**.

![Windows Defender enhanced notifications](images/defender/enhanced-notifications.png)


## Related topics

[Windows Defender in Windows 10](windows-defender-in-windows-10.md)