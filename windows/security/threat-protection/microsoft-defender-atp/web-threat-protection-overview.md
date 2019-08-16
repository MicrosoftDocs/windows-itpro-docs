---
title: Overview of web threat protection in Microsoft Defender ATP
description: Learn about web threat protection in Microsoft Defender ATP and how it can protect your organization
keywords: web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 08/30/2019
---

# Protect your organization against web threats

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Web threat protection in Microsoft Defender ATP secures your devices against web threats without relying on a web proxy, providing security for devices that are either away or on premises. By integrating with Microsoft Edge as well as popular third-party browsers like Chrome and Firefox, web threat protection stops access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, as well as sites that you have blocked in your [custom indicator list](manage-indicators.md).

With web threat protection in Microsoft Defender ATP, you get:
- Comprehensive visibility of web browsing security
- Investigation capabilities over web-related threat activity through alerts and comprehensive profiles of URLs and the machines that access these URLs
- A full set of security features that track general access trends to malicious and unwanted websites

## Prerequisites
Web threat protection uses network protection to provide web browsing security on Microsoft Edge and third-party web browsers.
To turn on network protection on devices:
- Edit the Microsoft Defender ATP security baseline under **Web & Network Protection** to enable network protection before deploying or redeploying it. [Learn about reviewing and assigning the Microsoft Defender ATP security baseline](configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-atp-security-baseline)
- Turn network protection on using Intune device configuration, SCCM, Group Policy, or your MDM solution. [Read more about enabling network protection](enable-network-protection.md)  

>[!Note]
>If you set network protection set to **Audit only**, blocking will be unavailable. Also, you will be able to detect and log attempts to access malicious and unwanted websites on Microsoft Edge only.

## Reporting and policy deployment latencies
Note the following latencies when blocking URLs or domains or when monitoring web activity:
- After you add a URL or domain to your custom indicator list, it takes approximately an hour before your machines receive the new setting and start blocking the website.
- While alerts are generated almost in real-time, the web threat protection reports can have a 12-hour delay from the time a block occurs and the time the block is reflected in the cards or the domain list.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhunting-belowfoldlink)


## Related topics
- [Monitor web security](web-threat-protection-monitoring.md)
- [Respond to web threats](web-threat-protection-response.md)
- [Notifications on Windows and web browsers](web-threat-protection-end-user-notifications)