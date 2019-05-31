---
title: Configure Windows Defender Antivirus with Group Policy
description: Configure Windows Defender Antivirus settings with Group Policy
keywords: group policy, GPO, configuration, settings
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

# Use Group Policy settings to configure and manage Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can use [Group Policy](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx) to configure and manage Windows Defender Antivirus on your endpoints.

In general, you can use the following procedure to configure or change Windows Defender Antivirus group policy settings:

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus**.

6. Expand the section (referred to as **Location** in the table in this topic) that contains the setting you want to configure, double-click the setting to open it, and make configuration changes.

7. [Deploy the updated GPO as you normally do](https://msdn.microsoft.com/library/ee663280(v=vs.85).aspx). 

The following table in this topic lists the Group Policy settings available in Windows 10, version 1703, and provides links to the appropriate topic in this documentation library (where applicable).


Location | Setting | Documented in topic
---|---|---
Client interface | Enable headless UI mode | [Prevent users from seeing or interacting with the Windows Defender Antivirus user interface](prevent-end-user-interaction-windows-defender-antivirus.md)
Client interface | Display additional text to clients when they need to perform an action | [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)
Client interface | Suppress all notifications | [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)
Client interface | Suppresses reboot notifications | [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)
Exclusions | Extension Exclusions | [Configure and validate exclusions in Windows Defender Antivirus scans](configure-exclusions-windows-defender-antivirus.md)
Exclusions | Path Exclusions | [Configure and validate exclusions in Windows Defender Antivirus scans](configure-exclusions-windows-defender-antivirus.md)
Exclusions | Process Exclusions | [Configure and validate exclusions in Windows Defender Antivirus scans](configure-exclusions-windows-defender-antivirus.md)
Exclusions | Turn off Auto Exclusions | [Configure and validate exclusions in Windows Defender Antivirus scans](configure-exclusions-windows-defender-antivirus.md)
MAPS | Configure the 'Block at First Sight' feature | [Enable block at first sight](configure-block-at-first-sight-windows-defender-antivirus.md)
MAPS | Join Microsoft MAPS | [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
MAPS | Send file samples when further analysis is required | [Enable cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
MAPS | Configure local setting override for reporting to Microsoft MAPS | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
MpEngine | Configure extended cloud check | [Configure the cloud block timeout period](configure-cloud-block-timeout-period-windows-defender-antivirus.md)
MpEngine | Select cloud protection level | [Specify the cloud-delivered protection level](specify-cloud-protection-level-windows-defender-antivirus.md)
Network inspection system | Specify additional definition sets for network traffic inspection | Not used
Network inspection system | Turn on definition retirement | Not used
Network inspection system | Turn on protocol recognition | Not used
Quarantine | Configure local setting override for the removal of items from Quarantine folder | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Quarantine | Configure removal of items from Quarantine folder | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for monitoring file and program activity on your computer | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for monitoring for incoming and outgoing file activity | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for scanning all downloaded files and attachments | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Real-time protection | Configure local setting override for turn on behavior monitoring | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Real-time protection | Configure local setting override to turn on real-time protection | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Real-time protection | Define the maximum size of downloaded files and attachments to be scanned | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Monitor file and program activity on your computer | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Scan all downloaded files and attachments | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Turn off real-time protection | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Turn on behavior monitoring | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Turn on process scanning whenever real-time protection is enabled | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Turn on raw volume write notifications | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Real-time protection | Configure monitoring for incoming and outgoing file and program activity | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Remediation | Configure local setting override for the time of day to run a scheduled full scan to complete remediation | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Remediation | Specify the day of the week to run a scheduled full scan to complete remediation | [Configure scheduled Windows Defender Antivirus scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Remediation | Specify the time of day to run a scheduled full scan to complete remediation | [Configure scheduled Windows Defender Antivirus scans](scheduled-catch-up-scans-windows-defender-antivirus.md)
Reporting | Configure Watson events | Not used
Reporting | Configure Windows software trace preprocessor components | Not used
Reporting | Configure WPP tracing level | Not used
Reporting | Configure time out for detections in critically failed state | Not used
Reporting | Configure time out for detections in non-critical failed state | Not used
Reporting | Configure time out for detections in recently remediated state | Not used
Reporting | Configure time out for detections requiring additional action | Not used
Reporting | Turn off enhanced notifications | [Configure the notifications that appear on endpoints](configure-notifications-windows-defender-antivirus.md)
Root | Turn off Windows Defender Antivirus | Not used (This setting must be set to **Not configured** to ensure any installed third-party antivirus apps work correctly)
Root | Define addresses to bypass proxy server | Not used
Root | Define proxy auto-config (.pac) for connecting to the network | Not used
Root | Define proxy server for connecting to the network | Not used
Root | Configure local administrator merge behavior for lists | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Root | Allow antimalware service to startup with normal priority | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Root | Allow antimalware service to remain running always | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Root | Turn off routine remediation | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Root | Randomize scheduled task times | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Allow users to pause scan | [Prevent users from seeing or interacting with the Windows Defender Antivirus user interface](prevent-end-user-interaction-windows-defender-antivirus.md)
Scan | Check for the latest virus and spyware definitions before running a scheduled scan | [Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md)
Scan | Define the number of days after which a catch-up scan is forced | [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
Scan | Turn on catch up full scan | [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
Scan | Turn on catch up quick scan | [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
Scan | Configure local setting override for maximum percentage of CPU utilization | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Scan | Configure local setting override for schedule scan day | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Scan | Configure local setting override for scheduled quick scan time | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Scan | Configure local setting override for scheduled scan time | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Scan | Configure local setting override for the scan type to use for a scheduled scan | [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-windows-defender-antivirus.md)
Scan | Create a system restore point | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Scan | Turn on removal of items from scan history folder | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Scan | Turn on heuristics | [Enable and configure Windows Defender Antivirus always-on protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md)
Scan | Turn on e-mail scanning | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Turn on reparse point scanning | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Run full scan on mapped network drives | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Scan archive files | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Scan network files | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Scan packed executables | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Scan removable drives | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Specify the maximum depth to scan archive files | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Specify the maximum percentage of CPU utilization during a scan | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Specify the maximum size of archive files to be scanned | [Configure scanning options in Windows Defender Antivirus](configure-advanced-scan-types-windows-defender-antivirus.md)
Scan | Specify the day of the week to run a scheduled scan | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Specify the interval to run quick scans per day | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Specify the scan type to use for a scheduled scan | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Specify the time for a daily quick scan | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Specify the time of day to run a scheduled scan | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Scan | Start the scheduled scan only when computer is on but not in use | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Security intelligence updates | Allow definition updates from Microsoft Update | [Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)
Security intelligence updates | Allow definition updates when running on battery power | [Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-windows-defender-antivirus.md)
Security intelligence updates | Allow notifications to disable definitions based repots to Microsoft MAPS | [Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md)
Security intelligence updates | Allow real-time definition updates based on reports to Microsoft MAPS | [Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md)
Security intelligence updates | Check for the latest virus and spyware definitions on startup | [Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md)
Security intelligence updates | Define file shares for downloading definition updates | [Manage Windows Defender Antivirus protection and definition updates](manage-protection-updates-windows-defender-antivirus.md)
Security intelligence updates | Define the number of days after which a catch up definition update is required | [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
Security intelligence updates | Define the number of days before spyware definitions are considered out of date | [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
Security intelligence updates | Define the number of days before virus definitions are considered out of date | [Manage updates for endpoints that are out of date](manage-outdated-endpoints-windows-defender-antivirus.md)
Security intelligence updates | Define the order of sources for downloading definition updates | [Manage Windows Defender Antivirus protection and definition updates](manage-protection-updates-windows-defender-antivirus.md)
Security intelligence updates | Initiate definition update on startup | [Manage event-based forced updates](manage-event-based-updates-windows-defender-antivirus.md)
Security intelligence updates | Specify the day of the week to check for definition updates | [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md)
Security intelligence updates | Specify the interval to check for definition updates | [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md)
Security intelligence updates | Specify the time to check for definition updates | [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-windows-defender-antivirus.md)
Security intelligence updates | Turn on scan after Security intelligence update | [Configure scheduled scans for Windows Defender Antivirus](scheduled-catch-up-scans-windows-defender-antivirus.md)
Threats | Specify threat alert levels at which default action should not be taken when detected | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)
Threats | Specify threats upon which default action should not be taken when detected | [Configure remediation for Windows Defender Antivirus scans](configure-remediation-windows-defender-antivirus.md)







## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
