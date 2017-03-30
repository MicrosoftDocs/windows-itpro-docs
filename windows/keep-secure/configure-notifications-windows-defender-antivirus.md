---
title: Configure notifications for Windows Defender Antivirus
description: Configure and customize notifications from Windows Defender AV.
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

# Configure the notifications that appear on endpoints

**Applies to:**

- Windows 10, version 1703

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy
- Windows Defender Security Center app

In Windows 10, application notifications about malware detection and remediation by Windows Defender are more robust, consistent, and concise.

Notifications will appear on endpoints when manually triggered and scheduled scans are completed and threats are detected. These notifications will also be seen in the **Notification Center**, and a summary of scans and threat detections will also appear at regular time intervals.

You can also configure how standard notifications appear on endpoints, such as notfications for reboot or when a threat has been detected and remediated.

## Configure the additional notifications that appear on endpoints

You can configure the display of additional notifications, such as recent threat detection summaries, in the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md) and with Group Policy.

> [!NOTE]
> In Windows 10, version 1607 the feature was called **Enhanced notifications** and could be configured under **Windows Settings** > **Update & security** > **Windows Defender**. In Group Policy settings in all versions of Windows 10 it is called **Enhanced notifications**.

> [!IMPORTANT]
> Disabling additional notifications will not disable critical notifications, such as threat detection and remediation alerts.

**Use the Windows Defender Security Center app to disable additional notifications:** 

1. Open the Windows Defender Security Center by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then the **Virus & threat protection settings** label:

![Screenshot of the Virus & threat protection settings label in the Windows Defender Security Center](images/defender/wdav-protection-settings-wdsc.png)
    
3.	Scroll to the **Notifications** section and click **Change notification settings**.

4. Slide the switch to **Off** or **On** to disable or enable additional notifications.

**Use Group Policy to disable additional notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Reporting**. 

6.  Double-click the **Turn off enhanced notifications** setting and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.


## Configure standard notifications on endpoints

You can use Group Policy to:
- Display additional, customized text on endpoints when the user needs to perform an action
- Hide all notifications on endpoints
- Hide reboot notifications on endpoints

Hiding notifications can be useful in situations where you cannot hide the entire Windows Defender AV interface. See [Prevent users from seeing or interacting with the Windows Defender AV user interface](prevent-end-user-interaction-windows-defender-antivirus.md) for more information.

> [!NOTE]
> Hiding notifications will only occur on endpoints to which the policy has been deployed. Notifications related to actions that must be taken (such as a reboot) will still appear on the [System Center Configuration Manager Endpoint Protection monitoring dashboard and reports](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/monitor-endpoint-protection).

**Use Group Policy to display additional, custom text in notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Client interface**. 

6.  Double-click the **Display additional text to clients when they need to perform an action** setting and set the option to **Enabled**. 

7. Enter the additional text you want to be shown to users. Click **OK**. 

**Use Group Policy to hide notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Client interface**. 

6.  Double-click the **Suppress all notifications** setting and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

**Use Group Policy to hide reboot notifications:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Client interface**. 

6.  Double-click the **Suppresses reboot notifications** setting and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.






## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Configure end-user interaction with Windows Defender AV](configure-end-user-interaction-windows-defender-antivirus.md)
