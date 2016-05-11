---
title: Windows Defender Advanced Threat Protection settings
description: Use the menu to configure the time zone, suppression rules, and view license information.
keywords: Windows Defender ATP settings, Windows Defender, cybersecurity threat intelligence, advanced threat protection
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: DulceMV
---

# Windows Defender Advanced Threat Protection settings

**Applies to:**

- Windows 10 Insider Preview
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Use the **Settings** menu ![Settings icon](images/settings.png) to configure the time zone, suppression rules, and view license information.

## Time zone settings
The aspect of time is important in the assessment and analysis of perceived and actual cyberattacks.

Cyberforensic investigations often rely on time stamps to piece together the sequence of events. It’s important that your system reflects the correct time zone settings.

Windows Defender ATP can display either Coordinated Universal Time (UTC) or local time.

Your current time zone setting is shown in the Windows Defender ATP menu. You can change the displayed time zone in the **Settings** menu ![Settings icon](images/settings.png).

### UTC time zone
Windows Defender ATP uses UTC time by default.

Setting the Windows Defender ATP time zone to UTC will display all system timestamps (alerts, events, etc.) in UTC for all users. Choosing this setting means that all users will see the same timestamps in Windows Defender ATP, regardless of their regional settings. This can help security analysts working in different locations across the globe to use the same time stamps while investigating events.

### Local time zone
You can choose to have Windows Defender ATP use local time zone settings. All alerts and events will be displayed using your local time zone.

The local time zone is taken from your machine’s regional settings. If you change your regional settings, the Windows Defender ATP time zone will also change. Choosing this setting means that the timestamps displayed in Windows Defender ATP will be aligned to local time for all Windows Defender ATP users. Analysts located in different global locations will now see the Windows Defender ATP alerts according to their regional settings.

Choosing to use local time can be useful if the analysts are located in a single location. In this case it might be easier to correlate events to local time, for example – when a local user clicked on a suspicious email link.

### Set the time zone
The Windows Defender ATP time zone is set by default to UTC.
Setting the time zone also changes the times for all Windows Defender ATP views.
To set the time zone:

1.	Click the **Settings** menu ![Settings icon](images/settings.png).
2.	Select the **Timezone:UTC** indicator.
3.	The time zone indicator changes to **Timezone:Local**. Click it again to change back to **Timezone:UTC**.

## Suppression rules
The suppression rules control what alerts are suppressed. You can suppress alerts so that certain activities are not flagged as suspicious. See [Suppress alerts](manage-alerts-windows-defender-advanced-threat-protection.md#suppress-alerts).

## License
Click the license link in the **Settings** menu to view the license agreement information for Windows Defender ATP.
