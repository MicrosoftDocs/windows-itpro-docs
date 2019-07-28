---
title: Configure Windows Defender Antivirus notifications
description: Configure and customize Windows Defender Antivirus notifications.
keywords: notifications, defender, antivirus, endpoint, management, admin
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Configure the notifications that appear on endpoints

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

In Windows 10, application notifications about malware detection and remediation are more robust, consistent, and concise.

Notifications appear on endpoints when manually triggered and scheduled scans are completed and threats are detected. These notifications also appear in the **Notification Center**, and a summary of scans and threat detections appear at regular time intervals.

You can also configure how standard notifications appear on endpoints, such as notifications for reboot or when a threat has been detected and remediated.

## Configure the additional notifications that appear on endpoints

You can configure the display of additional notifications, such as recent threat detection summaries, in the [Windows Security app](windows-defender-security-center-antivirus.md) and with Group Policy.

> [!NOTE]
> In Windows 10, version 1607 the feature was called **Enhanced notifications** and could be configured under **Windows Settings** > **Update & security** > **Windows Defender**. In Group Policy settings in all versions of Windows 10, it is called **Enhanced notifications**.

> [!IMPORTANT]
> Disabling additional notifications will not disable critical notifications, such as threat detection and remediation alerts.

**Use the Windows Security app to disable additional notifications:**

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then the **Virus & threat protection settings** label:

    ![Screenshot of the Virus & threat protection settings label in the Windows Security app](images/defender/wdav-protection-settings-wdsc.png)

3. Scroll to the **Notifications** section and click **Change notification settings**.

4. Slide the switch to **Off** or **On** to disable or enable additional notifications.

**Use Group Policy to disable additional notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender Antivirus > Reporting**.

5. Double-click **Turn off enhanced notifications** and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

## Configure standard notifications on endpoints

You can use Group Policy to:

- Display additional, customized text on endpoints when the user needs to perform an action
- Hide all notifications on endpoints
- Hide reboot notifications on endpoints

Hiding notifications can be useful in situations where you can't hide the entire Windows Defender Antivirus interface. See [Prevent users from seeing or interacting with the Windows Defender Antivirus user interface](prevent-end-user-interaction-windows-defender-antivirus.md) for more information.

> [!NOTE]
> Hiding notifications will only occur on endpoints to which the policy has been deployed. Notifications related to actions that must be taken (such as a reboot) will still appear on the [System Center Configuration Manager Endpoint Protection monitoring dashboard and reports](https://docs.microsoft.com/sccm/protect/deploy-use/monitor-endpoint-protection).

See [Customize the Windows Security app for your organization](../windows-defender-security-center/windows-defender-security-center.md) for instructions to add custom contact information to the notifications that users see on their machines.

**Use Group Policy to hide notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure, and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus > Client interface**. 

4. Double-click **Suppress all notifications** and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

**Use Group Policy to hide reboot notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components > Windows Defender Antivirus > Client interface**.

5. Double-click **Suppresses reboot notifications** and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Configure end-user interaction with Windows Defender Antivirus](configure-end-user-interaction-windows-defender-antivirus.md)
