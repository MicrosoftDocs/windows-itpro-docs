---
title: Windows Defender SmartScreen overview (Windows 10)
description: Conceptual info about Windows Defender SmartScreen.
keywords: SmartScreen Filter, Windows SmartScreen
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
localizationpriority: high
---

# Windows Defender SmartScreen overview
**Applies to:**

- Windows 10
- Windows 10 Mobile

Windows Defender SmartScreen helps to protect your employees if they try to visit sites previously reported as phishing or malware websites, or if an employee tries to download potentially malicious files. Based on how you set up Windows Defender SmartScreen, you can show employees a warning page and let them continue to the site, or you can block the site entirely.

SmartScreen determines whether a site is potentially malicious by:

**In Microsoft Edge and Internet Explorer**

- Analyzing visited webpages looking for indications of suspicious behavior. If it finds suspicious pages, SmartScreen shows a warning page,advising caution.

- Checking the vistied sites against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, SmartScreen shows a warning to let the user know that the site might be malicious.

**In Microsoft Edge, Internet Explorer, and 3rd-party browsers**

- Checking downloaded files against a list of reported malicious software sites and programs known to be unsafe. If it finds a match, SmartScreen shows a warning to let the user know that the site might be malicious. 

- Checking downloaded files against a list of files that are well known and downloaded by many Windows users. If the file isn't on that list, SmartScreen shows a warning, advising caution.

    >[!NOTE]
    >Before Windows 10, Version 1703 this feature was called the SmartScreen Filter when used within the browser and Windows SmartScreen when used outside of the browser.

## Benefits of Windows Defender SmartScreen
Windows Defender SmartScreen helps to provide an early warning system against websites that might engage in phishing attacks or attempt to distribute malware through a socially-engineered attack. The primary benefits are:

- **Anti-phishing and anti-malware support.** SmartScreen helps to protect your employees from sites that are reported to host phishing attacks or attempt to distribute malicious software. It can also help protect against deceptive advertisements, scam sites, and drive-by attacks. Drive-by attacks are web-based attacks that tend to start on a trusted site, targeting security vulnerabilities in commonly-used software. Because drive-by attacks don't typically require any interaction, there's nothing to click, nothing to download, the infection is often invisible. For more info about drive-by attacks, see [Evolving Microsoft SmartScreen to protect you from drive-by attacks](https://blogs.windows.com/msedgedev/2015/12/16/smartscreen-drive-by-improvements/#3B7Bb8bzeAPq8hXE.97)

- **Reputation-based URL and app protection.** SmartScreen evaluates a website's URLs to determine if they're known to distribute or host unsafe content. It also provides reputation checks for apps, checking downloaded programs and the digital signature used to sign a file. If a URL, a file, an app, or a certificate have an established reputation, your employees won't see any warnings. If however there's no reputation, the item is marked as a higher risk and presents a warning to the employee.

- **Operating system integration.** Windows Defender SmartScreen is integrated into the Windows 10 operating system, helping to protect your employees from running suspicious downloads, regardless of the browser being used or the path used by the app to get to the device (for example, email, or a USB flash drive).

- **Improved heuristics and telemetry.** Improvements to SmartScreen's heuristics and telemetry help to more quickly identify and warn your employees about malicious sites.

- **Management through Group Policy and Microsoft Intune.** SmartScreen supports using both Group Policy and Microsoft Intune settings. For more info, see [Managing Windows Defender SmartScreen in Group Policy and Microsoft Intune](manage-windows-defender-smartscreen-using-group-policy-and-intune.md).

## How SmartScreen works when a user tries to run an app
Windows Defender SmartScreen checks the reputation of any web-based app the first time it's run from the Internet, checking digital signatures and other factors against a Microsoft-maintained service. If an app has no reputation or is known to be malicious, SmartScreen can warn the employee or block the app from running entirely, depending on how you've configured the feature to run in your organization.
By default, your employees can bypass SmartScreen protection, letting them run legitimate apps after accepting a warning message prompt. You can also use Group Policy or Microsoft Intune to block employees from using unrecognized apps, or to entirely turn off Windows Defender SmartScreen (not recommended).

### Use Windows Defender Security Center
Starting with Windows 10, Version 1703 you can use Windows Defender Security Center to set up Windows Defender SmartScreen for an individual device, unless you've used Group Policy or Microsoft Intune to prevent it.

![Windows Defender Security Center](images/windows-defender-security-center.png)















## Windows Defender SmartScreen on Windows Mobile
Windows Defender SmartScreen on Windows Mobile helps to provide anti-phishing protection. If SmartScreen detects malicious content on a site, it can block the site itself or in some cases just specific content on the page. Also available for Internet Explorer 11 on Windows Mobile, is the SmartScreen URL reputation filter, which blocks or warns your employees about suspicious or potentially malicious websites.

## Related topics
- [Keep Windows 10 secure](https://technet.microsoft.com/itpro/windows/keep-secure/index)
- [Security technologies in Windows 10](https://technet.microsoft.com/itpro/windows/keep-secure/security-technologies)
- [Available policies for Microsoft Edge](https://technet.microsoft.com/itpro/microsoft-edge/available-policies)


>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).