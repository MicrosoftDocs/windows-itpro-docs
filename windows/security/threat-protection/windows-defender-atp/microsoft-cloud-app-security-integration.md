---
title: Microsoft Cloud App Security integration overview
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: high
ms.date: 09/03/2018
---

# Microsoft Cloud App Security integration overview
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

[Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) gives you visibility into your cloud apps and services by allowing you to control and limit access to cloud apps, while enforcing compliance requirements on data stored in the cloud.

Cloud App Security integrates into your eco-system in two places:

1. Firewall and proxy servers route your endpoints traffic to the web and forward cloud traffic logs to Cloud App Security.

2. Cloud App Security connects to your cloud app public API to enable control and governance of the data stored on cloud apps.

![Cloud apps](./images/cloud-apps.png)

Microsoft Cloud App Security (Cloud App Security) is a comprehensive solution that helps you keep control of assets through improved visibility over cloud apps that are being used across an organization. Cloud Discovery analyzes network traffic data to provide you with ongoing visibility into cloud use, Shadow IT, and the risk Shadow IT poses into your organization.

Windows Defender ATP provides one-click integration with Cloud Discovery by forwarding network connection data gathered from onboarded machines and users. These signals are sent to Cloud App Security, giving administrators deeper visibility into cloud usage, including the use of unsanctioned cloud services.  

By leveraging the Windows Defender ATP endpoint network sensor signals, this integration further enhances Cloud App Security visibility into  machine related activity and expanding coverage of off-network traffic. 



## Related topic

- [Configure Microsoft Cloud App Security integration](microsoft-cloud-app-security-config.md)