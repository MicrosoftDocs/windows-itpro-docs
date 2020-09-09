---
title: Configure Microsoft Defender ATP for iOS features
ms.reviewer:
description: Describes how to deploy Microsoft Defender ATP for iOS using an app
keywords: microsoft, defender, atp, ios, configure, features, ios
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
ms.topic: conceptual
---

# Configure Microsoft Defender ATP for iOS features

> [!IMPORTANT]
> **PUBLIC PREVIEW EDITION**
> 
> This documentation is for a pre-release solution. The guidelines and the solution are subject to change between now and its general availability.
> 
> As with any pre-release solution, remember to exercise caution when determining the target population for your deployments.


## Configure custom indicators 
Microsoft Defender ATP for iOS enables admins to configure custom indicators on
iOS devices as well. Refer to [Manage
indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators)
on how to configure custom indicators

## Web Protection
By default, Microsoft Defender ATP for iOS includes and enables the web
protection feature. [Web
protection](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/web-protection-overview) helps
to secure devices against web threats and protect users from phishing attacks.

>[!NOTE]
>Microsoft Defender ATP for iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device. 


>[!NOTE]
>**Battery Consumption by Microsoft Defender ATP for iOS**<br>
> Battery usage by an app is computed by Apple based on a multitude of factors
including CPU and Network usage. Microsoft Defender ATP uses VPN in the
background to check web traffic for any malicious websites or connections. Every
network packet from any app goes through this check and iOS
wrongly accounts this in computing the battery usage of Microsoft Defender ATP.
This gives a false impression to the user. The actual battery consumption of
Microsoft Defender ATP is much less than what is shown on the Battery Settings
page on the device.
