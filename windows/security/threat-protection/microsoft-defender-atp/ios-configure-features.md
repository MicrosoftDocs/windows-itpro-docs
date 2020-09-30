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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

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
protection feature. [Web
protection](web-protection-overview.md) helps
to secure devices against web threats and protect users from phishing attacks.

>[!NOTE]
>Microsoft Defender ATP for iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device. 

