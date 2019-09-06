---
title: Overview of web protection in Microsoft Defender ATP
description: Learn about web protection in Microsoft Defender ATP and how it can protect your organization
keywords: web protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser 
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

[!include[Prerelease information](prerelease.md)]

Web protection in Microsoft Defender ATP leverages [network protection](network-protection.md) to secure your machines against web threats without relying on a web proxy, providing security for devices that are either away or on premises. By integrating with Microsoft Edge as well as popular third-party browsers like Chrome and Firefox, web protection stops access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, as well as sites that you have blocked in your [custom indicator list](manage-indicators.md).

With web protection, you also get:
- Comprehensive visibility into web threats affecting your organization
- Investigation capabilities over web-related threat activity through alerts and comprehensive profiles of URLs and the machines that access these URLs
- A full set of security features that track general access trends to malicious and unwanted websites

>[!Note]
>It can take up to an hour for machines to receive new customer indicators.

## Prerequisites
Web protection uses network protection to provide web browsing security on Microsoft Edge and third-party web browsers.

To turn on network protection on your machines:
- Edit the Microsoft Defender ATP security baseline under **Web & Network Protection** to enable network protection before deploying or redeploying it. [Learn about reviewing and assigning the Microsoft Defender ATP security baseline](configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-atp-security-baseline)
- Turn network protection on using Intune device configuration, SCCM, Group Policy, or your MDM solution. [Read more about enabling network protection](../windows-defender-exploit-guard/enable-network-protection.md)  

>[!Note]
>If you set network protection to **Audit only**, blocking will be unavailable. Also, you will be able to detect and log attempts to access malicious and unwanted websites on Microsoft Edge only.


## In this section
Topic | Description
:---|:---
[Monitor web security](web-threat-protection-monitoring.md) | Monitor attempts to access malicious and unwanted websites. 
[Respond to web threats](web-threat-protection-response.md) | Investigate and manage alerts related to malicious and unwanted websites. Understand how end users are notified whenever a web threat is blocked.