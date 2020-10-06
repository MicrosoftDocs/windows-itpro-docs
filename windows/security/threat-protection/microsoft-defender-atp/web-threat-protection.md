---
title: Protect your organization against web threats
description: Learn about web protection in Microsoft Defender ATP and how it can protect your organization
keywords: web protection, web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Protect your organization against web threats

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web threat protection is part of [Web protection](web-protection-overview.md) in Microsoft Defender ATP. It uses [network protection](network-protection.md) to secure your devices against web threats. By integrating with Microsoft Edge and popular third-party browsers like Chrome and Firefox, web threat protection stops web threats without a web proxy and can protect devices while they are away or on premises. Web threat protection stops access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, as well as sites that you have blocked in your [custom indicator list](manage-indicators.md).

>[!Note]
>It can take up to an hour for devices to receive new customer indicators.

## Prerequisites
Web protection uses network protection to provide web browsing security on Microsoft Edge and third-party web browsers.

To turn on network protection on your devices:
- Edit the Microsoft Defender ATP security baseline under **Web & Network Protection** to enable network protection before deploying or redeploying it. [Learn about reviewing and assigning the Microsoft Defender ATP security baseline](configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-atp-security-baseline)
- Turn network protection on using Intune device configuration, SCCM, Group Policy, or your MDM solution. [Read more about enabling network protection](enable-network-protection.md)  

>[!Note]
>If you set network protection to **Audit only**, blocking will be unavailable. Also, you will be able to detect and log attempts to access malicious and unwanted websites on Microsoft Edge only.

## Related topics

- [Web protection overview](web-protection-overview.md)
- [Web threat protection](web-threat-protection.md)
- [Monitor web security](web-protection-monitoring.md)
- [Respond to web threats](web-protection-response.md)
- [Network protection](network-protection.md)
