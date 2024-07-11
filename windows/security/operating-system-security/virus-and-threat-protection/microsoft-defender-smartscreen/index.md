---
title: Microsoft Defender SmartScreen overview
description: Learn how Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files.
ms.date: 07/10/2024
ms.topic: conceptual
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
- ✅ <a href="https://learn.microsoft.com/deployedge/microsoft-edge-support-lifecycle" target="_blank">Microsoft Edge</a>
---

# Microsoft Defender SmartScreen

Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files.

**Microsoft Defender SmartScreen determines whether a site is potentially malicious by:**

- Analyzing visited webpages and looking for indications of suspicious behavior. If Microsoft Defender SmartScreen determines that a page is suspicious, it shows a warning page to advise caution.
- Checking the visited sites against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, Microsoft Defender SmartScreen shows a warning to let the user know that the site might be malicious.

**Microsoft Defender SmartScreen determines whether a downloaded app or app installer is potentially malicious by:**

- Checking downloaded files against a list of reported malicious software sites and programs known to be unsafe. If it finds a match, Microsoft Defender SmartScreen shows a warning to let the user know that the site might be malicious.
- Checking downloaded files against a list of files that are well known and downloaded frequently. If the file isn't on that list, Microsoft Defender SmartScreen shows a warning, advising caution.

## Benefits of Microsoft Defender SmartScreen

Microsoft Defender SmartScreen provide an early warning system against websites that might engage in phishing attacks or attempt to distribute malware through a socially engineered attack. The primary benefits are:

- **Anti-phishing and anti-malware support:** Microsoft Defender SmartScreen helps to protect users from sites that are reported to host phishing attacks or attempt to distribute malicious software. It can also help protect against deceptive advertisements, scam sites, and drive-by attacks. Drive-by attacks are web-based attacks that tend to start on a trusted site, targeting security vulnerabilities in commonly used software. Because drive-by attacks can happen even if the user doesn't select or download anything on the page, the danger often goes unnoticed. For more information about drive-by attacks, see [Evolving Microsoft Defender SmartScreen to protect you from drive-by attacks](https://blogs.windows.com/msedgedev/2015/12/16/SmartScreen-drive-by-improvements/).
- **Reputation-based URL and app protection:** Microsoft Defender SmartScreen evaluates a website's URLs to determine if they're known to distribute or host unsafe content. It also provides reputation checks for apps, checking downloaded programs and the digital signature used to sign a file. If a URL, a file, an app, or a certificate has an established reputation, users don't see any warnings. If there's no reputation, the item is marked as a higher risk and presents a warning to the user.
- **Operating system integration:** Microsoft Defender SmartScreen is integrated into the Windows 10 operating system. It checks any files an app (including 3rd-party browsers and email clients) that attempts to download and run.
- **Improved heuristics and diagnostic data:** Microsoft Defender SmartScreen is constantly learning and endeavoring to stay up to date, so it can help to protect you against potentially malicious sites and files.
- **Management through group policy and Microsoft Intune:** Microsoft Defender SmartScreen supports using both group policy and Microsoft Intune settings. For more info about all available settings, see [Available Microsoft Defender SmartScreen group policy and mobile device management (MDM) settings](available-settings.md).
- **Blocking URLs associated with potentially unwanted applications:** In Microsoft Edge (based on Chromium), SmartScreen blocks URLs associated with potentially unwanted applications, or PUAs. For more information on blocking URLs associated with PUAs, see [Detect and block potentially unwanted applications](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).

> [!IMPORTANT]
> SmartScreen protects against malicious files from the internet. It does not protect against malicious files on internal locations or network shares, such as shared folders with UNC paths or SMB/CIFS shares.

[!INCLUDE [microsoft-defender-smartscreen](../../../../../includes/licensing/microsoft-defender-smartscreen.md)]

## Submit files to Microsoft Defender SmartScreen for review

If you believe a warning or block was incorrectly shown for a file or application, or if you believe an undetected file is malware, [submit a file](https://www.microsoft.com/wdsi/filesubmission/) to Microsoft for review. For more information, see [Submit files for analysis](/microsoft-365/security/intelligence/submission-guide).

When submitting a file for Microsoft Defender SmartScreen, make sure to select **Microsoft Defender SmartScreen** from the product menu.

![Windows Security, Microsoft Defender SmartScreen controls.](images/Microsoft-defender-smartscreen-submission.png)

## Related articles

- [SmartScreen frequently asked questions](https://fb.smartscreen.microsoft.com/smartscreenfaq.aspx)
- [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference)
