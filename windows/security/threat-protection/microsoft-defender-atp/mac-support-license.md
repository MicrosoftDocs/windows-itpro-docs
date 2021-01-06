---
title: Troubleshoot license issues for Microsoft Defender ATP for Mac
description: Troubleshoot license issues in Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, performance
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

# Troubleshoot license issues for Microsoft Defender for Endpoint for Mac

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint for Mac](microsoft-defender-atp-mac.md)

While you are going through [Microsoft Defender for Endpoint for Mac](microsoft-defender-atp-mac.md) and [Manual deployment](mac-install-manually.md) testing or a Proof Of Concept (PoC), you might get the following error:

![Image of license error](images/no-license-found.png)

**Message:** 

No license found

Looks like your organization does not have a license for Microsoft 365 Enterprise subscription.

Contact your administrator for help.

**Cause:** 

You deployed and/or installed the Microsoft Defender for Endpoint for macOS package ("Download installation package") but you might have run the configuration script ("Download onboarding package").

**Solution:**

Follow the MicrosoftDefenderATPOnboardingMacOs.py instructions documented here:
[Client configuration](mac-install-manually.md#client-configuration)

