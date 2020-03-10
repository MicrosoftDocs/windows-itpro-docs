---
title: Windows Defender SmartScreen overview (Windows 10)
description: Conceptual info about Windows Defender SmartScreen.
keywords: SmartScreen Filter, Windows SmartScreen, Windows Defender SmartScreen
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.author: macapara
audience: ITPro
ms.localizationpriority: medium
ms.date: 11/27/2019
ms.reviewer: 
manager: dansimp
---

# Windows Defender SmartScreen

**Applies to:**

- Windows 10
- Windows 10 Mobile

Windows Defender SmartScreen protects against phishing or malware websites, and the downloading of potentially malicious files.

**Windows Defender SmartScreen determines whether a site is potentially malicious by:**

- Analyzing visited webpages looking for indications of suspicious behavior. If Windows Defender Smartscreen determines that a page is suspicious, it will show a warning page to advise caution.

- Checking the visited sites against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, Windows Defender SmartScreen shows a warning to let the user know that the site might be malicious.

**Windows Defender SmartScreen determines whether a downloaded app or app installer is potentially malicious by:**

- Checking downloaded files against a list of reported malicious software sites and programs known to be unsafe. If it finds a match, Windows Defender SmartScreen shows a warning to let the user know that the site might be malicious.

- Checking downloaded files against a list of files that are well known and downloaded by many Windows users. If the file isn't on that list, Windows Defender SmartScreen shows a warning, advising caution.

    >[!NOTE]
    >Before Windows 10, version 1703, this feature was called _the SmartScreen filter_ when used within the browser and _Windows SmartScreen_ when used outside of the browser.

## Benefits of Windows Defender SmartScreen

Windows Defender SmartScreen provide an early warning system against websites that might engage in phishing attacks or attempt to distribute malware through a socially-engineered attack. The primary benefits are:

- **Anti-phishing and anti-malware support.** Windows Defender SmartScreen helps to protect your employees from sites that are reported to host phishing attacks or attempt to distribute malicious software. It can also help protect against deceptive advertisements, scam sites, and drive-by attacks. Drive-by attacks are web-based attacks that tend to start on a trusted site, targeting security vulnerabilities in commonly-used software. Because drive-by attacks can happen even if the user does not click or download anything on the page, the danger often goes unnoticed. For more info about drive-by attacks, see [Evolving Windows Defender SmartScreen to protect you from drive-by attacks](https://blogs.windows.com/msedgedev/2015/12/16/SmartScreen-drive-by-improvements/#3B7Bb8bzeAPq8hXE.97)

- **Reputation-based URL and app protection.** Windows Defender SmartScreen evaluates a website's URLs to determine if they're known to distribute or host unsafe content. It also provides reputation checks for apps, checking downloaded programs and the digital signature used to sign a file. If a URL, a file, an app, or a certificate has an established reputation, your employees won't see any warnings. If however there's no reputation, the item is marked as a higher risk and presents a warning to the employee.

- **Operating system integration.** Windows Defender SmartScreen is integrated into the Windows 10 operating system, meaning that it checks any files an app (including 3rd-party browsers and email clients) attempts to download and run.

- **Improved heuristics and diagnostic data.** Windows Defender SmartScreen is constantly learning and endeavoring to stay up-to-date, so it can help to protect you against potentially malicious sites and files.

- **Management through Group Policy and Microsoft Intune.** Windows Defender SmartScreen supports using both Group Policy and Microsoft Intune settings. For more info about all available settings, see [Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings](windows-defender-smartscreen-available-settings.md).

- **Blocking URLs associated with potentially unwanted applications.** In the next major version of Microsoft Edge (based on Chromium), SmartScreen will blocks URLs associated with potentially unwanted applications, or PUAs. For more information on blocking URLs associated with PUAs, see [Detect and block potentially unwanted applications](../windows-defender-antivirus/detect-block-potentially-unwanted-apps-windows-defender-antivirus.md).

> [!IMPORTANT]
> SmartScreen protects against malicious files from the internet. It does not protect against malicious files on internal locations or network shares such asshared folders with a UNC paths (SMB/CIFS shares).

## Viewing Windows Defender SmartScreen anti-phishing events

When Windows Defender SmartScreen warns or blocks an employee from a website, it's logged as [Event 1035 - Anti-Phishing](https://technet.microsoft.com/scriptcenter/dd565657(v=msdn.10).aspx).

## Viewing Windows event logs for Windows Defender SmartScreen
Windows Defender SmartScreen events appear in the Microsoft-Windows-SmartScreen/Debug log in Event Viewer.

Windows event log for SmartScreen is disabled by default, users can use Event Viewer UI to enable the log or use the command line to enable it:

```
wevtutil sl Microsoft-Windows-SmartScreen/Debug /e:true
```

> [!NOTE]
> For information on how to use the Event Viewer, see [Windows Event Viewer](https://docs.microsoft.com/host-integration-server/core/windows-event-viewer1).


EventID | Description
-|-
1000 | Application Windows Defender SmartScreen Event
1001 | Uri Windows Defender SmartScreen Event
1002 | User Decision Windows Defender SmartScreen Event

## Related topics
- [Windows Defender SmartScreen Frequently Asked Questions (FAQ)](https://feedback.smartscreen.microsoft.com/smartscreenfaq.aspx)

- [SmartScreen Frequently Asked Questions (FAQ)](https://feedback.smartscreen.microsoft.com/smartscreenfaq.aspx)
- [Threat protection](../index.md)
- [Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-available-settings)
