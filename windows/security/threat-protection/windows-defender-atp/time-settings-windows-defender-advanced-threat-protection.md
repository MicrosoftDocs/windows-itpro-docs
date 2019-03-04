---
title: Windows Defender Security Center time zone settings
description: Use the menu to configure the time zone and view license information.
keywords: settings, Windows Defender, cybersecurity threat intelligence, advanced threat protection, time zone, utc, local time, license
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
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
ms.date: 02/13/2018
---

# Windows Defender Security Center time zone settings

**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-settings-abovefoldlink)

Use the **Time zone** menu ![Time zone settings icon](images/atp-time-zone.png) to configure the time zone and view license information.

## Time zone settings
The aspect of time is important in the assessment and analysis of perceived and actual cyberattacks.

Cyberforensic investigations often rely on time stamps to piece together the sequence of events. It’s important that your system reflects the correct time zone settings.

Windows Defender ATP can display either Coordinated Universal Time (UTC) or local time.

Your current time zone setting is shown in the Windows Defender ATP menu. You can change the displayed time zone in the **Time zone** menu ![Time zone settings icon](images/atp-time-zone.png).

### UTC time zone
Windows Defender ATP uses UTC time by default.

Setting the Windows Defender ATP time zone to UTC will display all system timestamps (alerts, events, and others) in UTC for all users. This can help security analysts working in different locations across the globe to use the same time stamps while investigating events.

### Local time zone
You can choose to have Windows Defender ATP use local time zone settings. All alerts and events will be displayed using your local time zone.

The local time zone is taken from your machine’s regional settings. If you change your regional settings, the Windows Defender ATP time zone will also change. Choosing this setting means that the timestamps displayed in Windows Defender ATP will be aligned to local time for all Windows Defender ATP users. Analysts located in different global locations will now see the Windows Defender ATP alerts according to their regional settings.

Choosing to use local time can be useful if the analysts are located in a single location. In this case it might be easier to correlate events to local time, for example – when a local user clicked on a suspicious email link.

### Set the time zone
The Windows Defender ATP time zone is set by default to UTC.
Setting the time zone also changes the times for all Windows Defender ATP views.
To set the time zone:

1.	Click the **Time zone** menu ![Time zone settings icon](images/atp-time-zone.png).
2.	Select the **Timezone UTC** indicator.
3.	Select **Timezone UTC** or your local time zone, for example -7:00. 

### Regional settings
To apply different date formats for Windows Defender ATP, use regional settings for Internet Explorer (IE) and Microsoft Edge (Edge). If you're using another browser such as Google Chrome, follow the required steps to change the time and date settings for that browser. 


**Internet Explorer (IE) and Microsoft Edge**

IE and Microsoft Edge use the **Region** settings configured in the **Clocks, Language, and Region** option in the Control panel. 


#### Known issues with regional formats

**Date and time formats**<br>
There are some known issues with the time and date formats. 

The following date formats are supported:
- MM/dd/yyyy
- dd/MM/yyyy

The following date and time formats are currently not supported:
- Date format yyyy-MM-dd
- Date format dd-MMM-yy
- Date format dd/MM/yy
- Date format MM/dd/yy
- Date format with yy. Will only show yyyy.
- Time format HH:mm:ss is not supported (the 12 hour AM/PM format is not supported). Only the 24-hour format is supported.

**Decimal symbol used in numbers**<br>
Decimal symbol used is always a dot, even if a comma is selected in  the **Numbers** format settings in **Region** settings. For example, 15,5K is displayed as 15.5K.


