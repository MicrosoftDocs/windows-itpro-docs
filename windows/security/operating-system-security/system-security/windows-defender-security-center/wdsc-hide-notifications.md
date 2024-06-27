---
title: Hide notifications from Windows Security
description: Prevent Windows Security notifications from appearing on user endpoints
ms.date: 06/27/2024
ms.topic: how-to
---

# Hide Windows Security notifications

**Windows Security** is used by many Windows security features to provide notifications about the health and security of the machine. These include notifications about firewalls, antivirus products, Windows Defender SmartScreen, and others.

In some cases, it may not be appropriate to show these notifications, for example, if you want to hide regular status updates, or if you want to hide all notifications to the users in your organization.

There are two levels to hiding notifications:

1. Hide noncritical notifications, such as regular updates about the number of scans Microsoft Defender Antivirus ran in the past week
1. Hide all notifications

If you set **Hide all notifications** to **Enabled**, changing the **Hide non-critical notifications** setting has no effect.

You can only use Group Policy to change these settings.

## Use Group Policy to hide noncritical notifications

You can hide notifications that describe regular events related to the health and security of the machine. These notifications are the ones that don't require an action from the machine's user. It can be useful to hide these notifications if you find they're too numerous or you have other status reporting on a larger scale (such as Windows Update for Business reports or Microsoft Configuration Manager reporting).

These notifications can be hidden only by using Group Policy.

> [!IMPORTANT]
> You must have Windows 10, version 1903 or higher. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. Download the latest [Administrative Templates (.admx) for Windows 10, v2004](https://www.microsoft.com/download/101445).
1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)). Right-click the Group Policy Object (GPO) you want to configure and select **Edit**.
1. In **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.
1. Expand the tree to **Windows components > Windows Security > Notifications**. For Windows 10 version 1803 and below, the path would be **Windows components > Windows Defender Security Center > Notifications**
1. Open the **Hide non-critical notifications** setting and set it to **Enabled**. Select **OK**.
1. [Deploy](/windows/win32/srvnodes/group-policy) the updated GPO as you normally do.

## Use Group Policy to hide all notifications

You can hide all notifications that are sourced from **Windows Security**. This option may be useful if you don't want users of the machines from inadvertently modifying settings, running antivirus scans, or otherwise performing security-related actions without your input.

These notifications can be hidden only by using Group Policy.

> [!IMPORTANT]
> You must have Windows 10, version 1903 or higher. The ADMX/ADML template files for earlier versions of Windows do not include these Group Policy settings.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)). Right-click the Group Policy Object you want to configure and select **Edit**.
1. In **Group Policy Management Editor**, go to **Computer configuration** and select **Administrative templates**.
1. Expand the tree to **Windows components > Windows Security > Notifications**. For Windows 10 version 1803 and below, the path would be **Windows components > Windows Defender Security Center > Notifications**.

    > [!NOTE]
    > For Windows 10 version 2004 and above the path would be **Windows components > Windows Security > Notifications**.

1. Open the **Hide all notifications** setting and set it to **Enabled**. Select **OK**.
1. [Deploy](/windows/win32/srvnodes/group-policy) the updated GPO as you normally do.

> [!NOTE]
> You can use the following registry key and DWORD value to **Hide all notifications**.
>
> ```text
> [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications]
>   "DisableNotifications"=dword:00000001
> ```
>
> You can use the following registry key and DWORD value to **Hide not-critical notifications**.
>
> ```text
> [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications]
>   "DisableEnhancedNotifications"=dword:00000001
> ```

## Notifications

| Purpose | Notification text | Toast Identifier | Critical? |Notification Toggle|
|---------|------------------|-------------|-----------|---------|
| Network isolation | Your IT administrator has caused Windows Defender to disconnect your device. Contact IT help desk. | SENSE_ISOLATION | Yes |Firewall and network protection notification|
| Network isolation customized | _Company name_ has caused Windows Defender to disconnect your device. Contact IT help desk _phone number_, _email address_, _url_. | SENSE_ISOLATION_CUSTOM (body) | Yes |Firewall and network protection notification|
| Restricted access | Your IT administrator has caused Windows Defender to limit actions on this device. Some apps may not function as expected. Contact IT help desk. | SENSE_PROCESS_RESTRICTION | Yes |Firewall and network protection notification|
| Restricted access customized | _Company_ has caused Windows Defender to limit actions on this device. Some apps may not function as expected. Contact IT help desk. | SENSE_PROCESS_RESTRICTION_CUSTOM (body) | Yes |Firewall and network protection notification|
| HVCI, driver compat check fails (upon trying to enable) | There may be an incompatibility on your device. | HVCI_ENABLE_FAILURE | Yes |Firewall and network protection notification|
| HVCI, reboot needed to enable | The recent change to your protection settings requires a restart of your device. | HVCI_ENABLE_SUCCESS | Yes |Firewall and network protection notification|
| Item skipped in scan, due to exclusion setting, or network scanning disabled by admin | The Microsoft Defender Antivirus scan skipped an item due to exclusion or network scanning settings. | ITEM_SKIPPED | Yes |Virus & threat protection notification|
| Remediation failure | Microsoft Defender Antivirus couldn't completely resolve potential threats. | CLEAN_FAILED | Yes |Virus & threat protection notification|
| Follow-up action (restart & scan) | Microsoft Defender Antivirus found _threat_ in _file name_. Restart and scan your device. Restart and scan | MANUALSTEPS_REQUIRED | Yes |Virus & threat protection notification|
| Follow-up action (restart) | Microsoft Defender Antivirus found _threat_ in _file_. Restart your device. | WDAV_REBOOT | Yes |Virus & threat protection notification|
| Follow-up action (Full scan) | Microsoft Defender Antivirus found _threat_ in _file_. Run a full scan of your device. | FULLSCAN_REQUIRED | Yes |Virus & threat protection notification|
| Sample submission prompt | Review files that Windows Defender will send to Microsoft. Sending this information can improve how Microsoft Defender Antivirus helps protect your device. | SAMPLE_SUBMISSION_REQUIRED | Yes |Virus & threat protection notification|
| OS support ending warning | Support for your version of Windows is ending. When this support ends, Microsoft Defender Antivirus won't be supported, and your device might be at risk. | SUPPORT_ENDING | Yes |Virus & threat protection notification|
| OS support ended, device at risk | Support for your version of Windows has ended. Microsoft Defender Antivirus is no longer supported, and your device might be at risk. | SUPPORT_ENDED _and_ SUPPORT_ENDED_NO_DEFENDER | Yes |Virus & threat protection notification|
| Summary notification, items found | Microsoft Defender Antivirus successfully took action on _n_ threats since your last summary. Your device was scanned _n_ times. | RECAP_FOUND_THREATS_SCANNED | No |Virus & threat protection notification|
| Summary notification, items found, no scan count | Microsoft Defender Antivirus successfully took action on _n_ threats since your last summary. | RECAP_FOUND_THREATS | No |Virus & threat protection notification|
| Summary notification, **no** items found, scans performed | Microsoft Defender Antivirus didn't find any threats since your last summary. Your device was scanned _n_ times. | RECAP_NO THREATS_SCANNED | No |Virus & threat protection notification|
| Summary notification, **no** items found, no scans | Microsoft Defender Antivirus didn't find any threats since your last summary. | RECAP_NO_THREATS | No |Virus & threat protection notification|
| Scan finished, manual, threats found | Microsoft Defender Antivirus scanned your device at _timestamp_ on _date_, and took action against threats. | RECENT_SCAN_FOUND_THREATS | No |Virus & threat protection notification|
| Scan finished, manual, **no** threats found | Microsoft Defender Antivirus scanned your device at _timestamp_ on _date_. No threats were found. | RECENT_SCAN_NO_THREATS | No |Virus & threat protection notification|
| Threat found | Microsoft Defender Antivirus found threats. Get details. | CRITICAL | No |Virus & threat protection notification|
| LPS on notification | Microsoft Defender Antivirus is periodically scanning your device. You're also using another antivirus program for active protection. | PERIODIC_SCANNING_ON | No |Virus & threat protection notification|
| Long running BaFS | Your IT administrator  requires a security scan of this item. The scan could take up to _n_ seconds. | BAFS | No |Firewall and network protection notification|
| Long running BaFS customized | _Company_ requires a security scan of this item. The scan could take up to _n_ seconds. | BAFS_DETECTED_CUSTOM (body) | No |Firewall and network protection notification|
| Sense detection | This application was removed because it was blocked by your IT security settings | WDAV_SENSE_DETECTED | No |Firewall and network protection notification|
| Sense detection customized | This application was removed because it was blocked by your IT security settings | WDAV_SENSE_DETECTED_CUSTOM (body) | No |Firewall and network protection notification|
| Ransomware specific detection | Microsoft Defender Antivirus has detected threats, which may include ransomware. | WDAV_RANSOMWARE_DETECTED | No |Virus & threat protection notification|
| ASR (HIPS) block | Your IT administrator caused Windows Defender Security Center to block this action. Contact your IT help desk. | HIPS_ASR_BLOCKED | No |Firewall and network protection notification|
| ASR (HIPS) block customized | _Company_ caused Windows Defender Security Center to block this action. Contact your IT help desk. | HIPS_ASR_BLOCKED_CUSTOM (body) | No |Firewall and network protection notification|
| CFA (FolderGuard) block | Controlled folder access blocked _process_ from making changes to the folder _path_ | FOLDERGUARD_BLOCKED | No |Firewall and network protection notification|
| Network protect (HIPS) network block customized | _Company_ caused Windows Defender Security Center to block this network connection. Contact your IT help desk. | HIPS_NETWORK_BLOCKED_CUSTOM (body) | No |Firewall and network protection notification|
| Network protection (HIPS) network block | Your IT administrator caused Windows Defender Security Center to block this network connection. Contact your IT help desk. | HIPS_NETWORK_BLOCKED | No |Firewall and network protection notification|
| PUA detection, not blocked | Your settings cause the detection of any app that might perform unwanted actions on your computer. | PUA_DETECTED | No |Firewall and network protection notification|
| PUA notification | Your IT settings caused Microsoft Defender Antivirus to block an app that may potentially perform unwanted actions on your device. | PUA_BLOCKED | No |Firewall and network protection notification|
| PUA notification, customized | _Company_ caused Microsoft Defender Antivirus to block an app that may potentially perform unwanted actions on your device. | PUA_BLOCKED_CUSTOM (body) | No |Firewall and network protection notification|
| Network isolation ended |  |  | No |Firewall and network protection notification|
| Network isolation ended, customized |  |  | No |Firewall and network protection notification|
| Restricted access ended |  |  | No |Firewall and network protection notification|
| Restricted access ended, customized |  |  | No |Firewall and network protection notification|
| Dynamic lock on, but bluetooth off |  |  | No |Account protection notification|
| Dynamic lock on, bluetooth on, but device unpaired |  |  | No |Account protection notification|
| Dynamic lock on, bluetooth on, but unable to detect device |  |  | No |Account protection notification|
| NoPa or federated no hello |  |  | No |Account protection notification|
| NoPa or federated hello broken |  |  | No |Account protection notification|
