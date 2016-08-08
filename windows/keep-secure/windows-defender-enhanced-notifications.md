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
localizationpriority: medium
author: iaanw
---

# Configure enhanced notifications for Windows Defender in Windows 10

**Applies to:**

- Windows 10, version 1607

In Windows 10, application notifications about malware detection and remediation by Windows Defender are more robust, consistent, and concise.

Notifications will appear on endpoints when manually triggered and scheduled scans are completed and threats are detected. These notifications will also be seen in the **Notification Center**, and a summary of scans and threat detections will also appear at regular time intervals.

You can enable and disable enhanced notifications with the registry or in Windows Settings. 

## Disable notifications

You can disable enhanced notifications on individual endpoints in Windows Settings. 

**Use Windows Settings to disable enhanced notifications on individual endpoints**

1. Open the **Start** menu and click or type **Settings**.

1. Click **Update & Security** and then **Windows Defender**. Scroll to the bottom of the settings page until you see the **Enhanced notifications** section.

1. Toggle the setting between **On** and **Off**.

![Windows Defender enhanced notifications](images/defender/enhanced-notifications.png)



**Use Group Policy to disable Windows Defender notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender > Client Interface** and configure the following settings:
    
    1.  Double-click the **Suppress all notifications** setting and set the option to **Enabled**. Click **OK**. This will disable all notifications shown by the Windows Defender client.
    
    1.  Double-click the **Suppresses reboot notifications** setting and set the option to **Enabled**. Click **Ok**. This will disable notifications that ask the endpoint user to reboot the machine to perform additional cleaning.
>[!NOTE]
>Usually, users are asked to reboot the endpoint to perform a scan with Windows Defender Offline. For details on performing offline scans, see the [Windows Defender Offline](windows-defender-offline.md#manage-notifications) topic.

**Use the registry to disable Windows Defender enhanced notifications:**

1. Click **Start**, type `Run`, and press **Enter**.
2. From the **Run** dialog box, type `regedit` and press **Enter**.
3. In the Registry Editor navigate to the following key:
    ```
    HKLM\Software\Policies\Microsoft\Windows Defender
    ``` 
4. Right-click the Windows Defender key and add a new key. Name it `Features`. 
5. Right-click the **Features** key you created and select **New** then **DWORD (32-bit) Value**. Name the value `DisableEnhancedNotifications`.
6. Double-click the **DisableEnhancedNotifications** value and set it to `1`.


## Related topics

- [Windows Defender in Windows 10](windows-defender-in-windows-10.md)