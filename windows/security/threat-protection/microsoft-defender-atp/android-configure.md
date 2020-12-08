---
title: Configure Microsoft Defender ATP for Android features
ms.reviewer:
description: Describes how to configure Microsoft Defender ATP for Android 
keywords: microsoft, defender, atp, android, configuration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
---

# Configure Defender for Endpoint for Android features

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint for Android](microsoft-defender-atp-android.md)

## Conditional Access with Defender for Endpoint for Android  
Microsoft Defender for Endpoint for Android along with Microsoft Intune and Azure Active
Directory enables enforcing Device compliance and Conditional Access policies
based on device risk levels. Defender for Endpoint is a Mobile Threat Defense
(MTD) solution that you can deploy to leverage this capability via Intune.

For more information about how to set up Defender for Endpoint for Android and Conditional Access, see [Defender for Endpoint and
Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection).


## Configure custom indicators  

>[!NOTE]
> Defender for Endpoint for Android only supports creating custom indicators for IP addresses and URLs/domains.

Defender for Endpoint for Android enables admins to configure custom indicators to support Android devices as well. For more information on how to configure custom indicators, see [Manage indicators](manage-indicators.md).

## Configure web protection
Defender for Endpoint for Android allows IT Administrators the ability to configure the web protection feature. This capability is available within the Microsoft Endpoint Manager Admin center.

>[!NOTE]
> Defender for Endpoint for Android would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device. 
For more information, see [Configure web protection on devices that run Android](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection-manage-android).


## Related topics
- [Overview of Microsoft Defender for Endpoint for Android](microsoft-defender-atp-android.md)
- [Deploy Microsoft Defender for Endpoint for Android with Microsoft Intune](android-intune.md)
