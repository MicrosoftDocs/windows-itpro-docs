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

-   Windows 10

Windows Defender SmartScreen helps to protect your employees if they try to visit sites previously reported as phishing or malware websites, or if an employee tries to download potentially malicious files. Based on how you set up Windows Defender SmartScreen, you can show employees a warning page, letting them continue to the site, or you can block the site entirely.

SmartScreen determines whether a site is potentially malicious by:

- In Microsoft Edge and Internet Explorer, analyzing visited webpages looking for indications of suspicious behavior. If it finds suspicious pages, SmartScreen shows a warning page,advising caution.

- In Microsoft Edge and Internet Explorer, checking the vistied sites against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, SmartScreen shows a warning that the site has been blocked for your safety.

- In Microsoft Edge, Internet Explorer, and third-party browsers, checking downloaded files against a list of reported malicious software sites and programs known to be unsafe. If it finds a match, SmartScreen shows a warning that the site has been blocked for your safety. SmartScreen also checks the files that you download against a list of files that are well known and downloaded by many Windows users. If the file isn't on that list, SmartScreen shows a warning, advising caution.

    >[!NOTE]
    >Before Windows 10, Version 1703 this tool was called the SmartScreen Filter when used within the browser and Windows SmartScreen when used outside of the browser.





Windows Defender SmartScreen notifies employees when they try to visit reported phishing and malware websites, or if they try to download potentially malicious files.

**Windows Defender SmartScreen in Microsoft Edge and Internet Explorer:**
- While browsing the web, SmartScreen analyzes pages looking for indications that it might be suspicious. If a page is found to be potentially harmful, SmartScreen presents a warning to the employee.

- SmartScreen compares the sites visited by employees against a dynamic list of reported phishing and malicious software sites. If SmartScreen finds a match, it shows a warning to the employee, so the site can be avoided.

- SmartScreen 


o	SmartScreen checks the sites that users visit against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, SmartScreen displays a warning to let the user know that the site might be malicious. has been blocked for safety. If a user downloads a file from a reported malicious site, a warning is also displayed for the download.

o	If a user downloads a file, SmartScreen immediately checks the file against a list of files that are well known and downloaded by Windows users. If the file isn’t on that list, SmartScreen displays a warning, and the user can avoid running the file.
•	For files downloaded through browsers other than Edge or Internet Explorer, SmartScreen still provides protections. When a user tries to run a file downloaded from the Internet, SmartScreen checks the file against a list of files that are well known and downloaded by Windows users. If the file isn’t on that list, SmartScreen displays a warning, and the user can avoid running the file.
Note  Depending on the settings you use, SmartScreen might prevent the user from continuing (“block”) or advise the user to use caution before continuing (“warn”) when it encounters an untrusted file or suspicious web page.
Before Windows 10, version 1703, this feature was named differently. Within the browser, it was called “SmartScreen Filter,” and outside the browser, it was called “Windows SmartScreen.”


>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).