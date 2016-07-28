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

In Windows 10, application notifications about malware detection and remediation by Windows Defender is more robust, consistent, and concise. Endpoint users will now see fewer messages, and messages will be more clearer about the actions the user needs to take.

Notifications will appear on endpoints when manually triggered and scheduled scans are completed. A summary also appears in the **Notification center** at regular time intervals.

<span style="background-color: yellow">{{Would be good to get an updated screenshot for this}}</span>

You can enable and disable enhanced notifications and with the registry or in Windows Settings. You can also configure notifications and disable the Windows Defender user interface with Group Policy.

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


**Use Windows Settings to disable notifications on individual endpoints**

1. Open the **Start** menu and click or type **Settings**.

1. Click **Update & Security** and then **Windows Defender**. Scroll to the bottom of the settings page until you see the **Enhanced notifications** section.

1. Toggle the setting between **On** and **Off**.

![Windows Defender enhanced notifications](images/defender/enhanced-notifications.png)

**Use Group Policy to suppress Windows Defender notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:
    
    1.  Double-click the **Suppress all notifications** setting and set the option to **Enabled**. Click **OK**. This will disable all notifications shown by the Windows Defender client.
    
    1.  Double-click the **Suppresses reboot notifications** setting and set the option to **Enabled**. Click **Ok**. This will disable notifications that ask the endpoint user to reboot the machine to perform additional cleaning.
>[!NOTE]
>Usually, users are asked to reboot the endpoint to perform a scan with Windows Defender Offline. For details on performing offline scans, see the [Windows Defender Offline](windows-defender-offline.md#manage-notifications) topic.


**Use Group Policy to display customized text inside Windows Defender notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface**.

1.  Double-click the **Display additional text to clients when they need to perform an action** setting and set the option to **Enabled**. Enter the text you want to be displayed when Windows Defender requires further action from the endpoint user.

>[!NOTE] The notification will only display the first 1024 characters of the message specified in this setting. The additional text will only appear in notifications that prompt the endpoint user for additional actions, such as rebooting the endpoint or manually reviewing a detection.


## Configure the Windows Defender user interface

You can hide the Windows Defender user interface by modifying the registry or configuring Group Policy settings.

>[!NOTE]
>These instructions will prevent the Windows Defender interface from being seen by the user. The interface will be hidden, but Windows Defender will still be running normally.

**Use Group Policy to disable the Windows Defender user interface:** 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface**.

1.  Double-click the **Enable headless UI mode** setting and set the option to **Enabled**.

**Use the registry to disable the Windows Defender user interface:**

1. Click **Start**, type **Run** and press **Enter**.

2. From the **Run** dialog box, type **regedit** and press **Enter**.

4. In the **Registry Editor** navigate to the **ux configuration** key under:

   ```text
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender
```

5. Double-click the **UILockdown** value and set it to **1**.

![Image of Windows Defender user interface setting in Registry Editor](images/defender/ux-uilockdown-key.png)

## Related topics

[Windows Defender in Windows 10](windows-defender-in-windows-10.md)