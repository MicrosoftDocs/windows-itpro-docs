---
title: Hide notifications from the Windows Security app
description: Prevent Windows Security app notifications from appearing on user endpoints
keywords: defender, security center, app, notifications, av, alerts
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# Hide Windows Security app notifications

**Applies to**

- Windows 10, version 1709 and later

**Audience**

- Enterprise security administrators

**Manageability available with**

- Group Policy

The Windows Security app is used by a number of Windows security features to provide notifications about the health and security of the machine. These include notifications about firewalls, antivirus products, Windows Defender SmartScreen, and others.

In some cases, it may not be appropriate to show these notifications, for example, if you want to hide regular status updates, or if you want to hide all notifications to the employees in your organization.

There are two levels to hiding notifications:

1. Hide non-critical notifications, such as regular updates about the number of scans Windows Defender Antivirus ran in the past week
2. Hide all notifications

If you set **Hide all notifications** to **Enabled**, changing the **Hide non-critical notifications** setting will have no effect.

You can only use Group Policy to change these settings.



## Use Group Policy to hide non-critical notifications

You can hide notifications that describe regular events related to the health and security of the machine. These are notifications that do not require an action from the machine's user. It can be useful to hide these notifications if you find they are too numerours or you have other status reporting on a larger scale (such as Update Compliance or System Center Configuration Manager reporting).

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Notifications**.

6.  Open the **Hide non-critical notifications** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 


## Use Group Policy to hide all notifications

You can hide all notifications that are sourced from the Windows Security app. This may be useful if you don't want users of the machines from inadvertently modifying settings, running antivirus scans, or otherwise performing security-related actions without your input.

This can only be done in Group Policy.

>[!IMPORTANT]
>### Requirements
>
>You must have Windows 10, version 1709 or later. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings. 

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Security > Notifications**.

6.  Open the **Hide all notifications** setting and set it to **Enabled**. Click **OK**.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx).

## Notifications

| Purpose | Notification text | Toast Identifier | Critical? |
|---------|------------------|-------------|-----------|
| Network isolation | Your IT administrator has caused Windows Defender to disconnect your device. Contact IT help desk. | SENSE_ISOLATION | Yes |
| Network isolation customized | _Company name_ has caused Windows Defender to disconnect your device. Contact IT help desk _phone number_, _email address_, _url_. | SENSE_ISOLATION_CUSTOM (body) | Yes |
| Restricted access | Your IT administrator has caused Windows Defender to limit actions on this device. Some apps may not function as expected. Contact IT help desk. | SENSE_PROCESS_RESTRICTION | Yes |
| Restricted access customized | _Company_ has caused Windows Defender to limit actions on this device. Some apps may not function as expected. Contact IT help desk. | SENSE_PROCESS_RESTRICTION_CUSTOM (body) | Yes |
| HVCI, driver compat check fails (upon trying to enable) | There may be an incompatibility on your device. | HVCI_ENABLE_FAILURE | Yes |
| HVCI, reboot needed to enable | The recent change to your protection settings requires a restart of your device. | HVCI_ENABLE_SUCCESS | Yes |
| Item skipped in scan, due to exclusion setting, or network scanning disabled by admin | The Windows Defender Antivirus scan skipped an item due to exclusion or network scanning settings. | ITEM_SKIPPED | Yes |
| Remediation failure | Windows Defender Antivirus couldn’t completely resolve potential threats. | CLEAN_FAILED | Yes |
| Follow-up action (restart & scan) | Windows Defender Antivirus found _threat_ in _file name_. Please restart and scan your device. Restart and scan | MANUALSTEPS_REQUIRED | Yes |
| Follow-up action (restart) | Windows Defender Antivirus found _threat_ in _file_. Please restart your device. | WDAV_REBOOT | Yes |
| Follow-up action (Full scan) | Windows Defender Antivirus found _threat_ in _file_. Please run a full scan of your device. | FULLSCAN_REQUIRED | Yes |
| Sample submission prompt | Review files that Windows Defender will send to Microsoft. Sending this information can improve how Windows Defender Antivirus helps protect your device. | SAMPLE_SUBMISSION_REQUIRED | Yes |
| OS support ending warning | Support for your version of Windows is ending. When this support ends, Windows Defender Antivirus won’t be supported, and your device might be at risk. | SUPPORT_ENDING | Yes |
| OS support ended, device at risk | Support for your version of Windows has ended. Windows Defender Antivirus is no longer supported, and your device might be at risk. | SUPPORT_ENDED _and_ SUPPORT_ENDED_NO_DEFENDER | Yes |
| Summary notification, items found | Windows Defender Antivirus successfully took action on _n_ threats since your last summary. Your device was scanned _n_ times. | RECAP_FOUND_THREATS_SCANNED | No |
| Summary notification, items found, no scan count | Windows Defender Antivirus successfully took action on _n_ threats since your last summary. | RECAP_FOUND_THREATS | No |
| Summary notification, **no** items found, scans performed | Windows Defender Antivirus did not find any threats since your last summary.  Your device was scanned _n_ times. | RECAP_NO THREATS_SCANNED | No |
| Summary notification, **no** items found, no scans | Windows Defender Antivirus did not find any threats since your last summary. | RECAP_NO_THREATS | No |
| Scan finished, manual, threats found | Windows Defender Antivirus scanned your device at _timestamp_ on _date_, and took action against threats. | RECENT_SCAN_FOUND_THREATS | No |
| Scan finished, manual, **no** threats found | Windows Defender Antivirus scanned your device at _timestamp_ on _date_.  No threats were found. | RECENT_SCAN_NO_THREATS | No |
| Threat found | Windows Defender Antivirus found threats. Get details. | CRITICAL | No |
| LPS on notification | Windows Defender Antivirus is periodically scanning your device.  You’re also using another antivirus program for active protection. | PERIODIC_SCANNING_ON | No |
| Long running BaFS | Your IT administrator  requires a security scan of this item.  The scan could take up to _n_ seconds. | BAFS | No |
| Long running BaFS customized | _Company_ requires a security scan of this item.  The scan could take up to _n_ seconds. | BAFS_DETECTED_CUSTOM (body) | No |
| Sense detection | This application was removed because it was blocked by your IT security settings | WDAV_SENSE_DETECTED | No |
| Sense detection customized | This application was removed because it was blocked by your IT security settings | WDAV_SENSE_DETECTED_CUSTOM (body) | No |
| Ransomware specific detection | Windows Defender Antivirus has detected threats which may include ransomware. | WDAV_RANSOMWARE_DETECTED | No |
| ASR (HIPS) block | Your IT administrator caused Windows Defender Security Center to block this action. Contact your IT help desk. | HIPS_ASR_BLOCKED | No |
| ASR (HIPS) block customized | _Company_ caused Windows Defender Security Center to block this action. Contact your IT help desk. | HIPS_ASR_BLOCKED_CUSTOM (body) | No |
| CFA (FolderGuard) block | Controlled folder access blocked _process_ from making changes to the folder _path_ | FOLDERGUARD_BLOCKED | No |
| Network protect (HIPS) network block customized | _Company_ caused Windows Defender Security Center to block this network connection. Contact your IT help desk. | HIPS_NETWORK_BLOCKED_CUSTOM (body) | No |
| Network protection (HIPS) network block | Your IT administrator caused Windows Defender Security Center to block this network connection. Contact your IT help desk. | HIPS_NETWORK_BLOCKED | No |
| PUA detection, not blocked | Your settings cause the detection of any app that might perform unwanted actions on your computer. | PUA_DETECTED | No |
| PUA notification | Your IT settings caused Windows Defender Antivirus to block an app that may potentially perform unwanted actions on your device. | PUA_BLOCKED | No |
| PUA notification, customized | _Company_ caused Windows Defender Antivirus to block an app that may potentially perform unwanted actions on your device. | PUA_BLOCKED_CUSTOM (body) | No |
| Network isolation ended |  |  | No |
| Network isolation ended, customized |  |  | No |
| Restricted access ended |  |  | No |
| Restricted access ended, customized |  |  | No |
| Dynamic lock on, but bluetooth off |  |  | No |
| Dynamic lock on, bluetooth on, but device unpaired |  |  | No |
| Dynamic lock on, bluetooth on, but unable to detect device |  |  | No |
| NoPa or federated no hello |  |  | No |
| NoPa or federated hello broken |  |  | No |
