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





This protection is URL reputation-based, which means that it evaluates the URLs to determine whether they are known to distribute or host unsafe content. SmartScreen also provides application reputation checks, which check the reputation of a downloaded program itself, or the digital signature that is used to sign a file. If the file or certificate has an established reputation, no warnings are shown. If the file does not have an established reputation, the user is at higher risk of malware infection and is shown a warning.
•	Integration into the operating system. As of Windows 10, SmartScreen is integrated into the operating system itself, which allows SmartScreen to protect users from running suspicious downloads, regardless of the web browser they are using or the path that the app uses to arrive on the device (for example, email, USB flash drive).
•	Heuristics and telemetry that have been enhanced over time. Heuristics and telemetry that have been enhanced over time allow SmartScreen to identify and warn users about malicious sites more quickly. 
•	Management through Group Policy and Microsoft Intune. Group policy settings or Microsoft Intune settings can be used to manage SmartScreen. For more information, see Using Group Policy and Microsoft Intune to manage settings for SmartScreen, later in this topic.



>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).