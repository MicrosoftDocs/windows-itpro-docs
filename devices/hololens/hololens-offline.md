---
title: Use HoloLens offline
description: To set up HoloLens, you'll need to connect to a Wi-Fi network
ms.assetid: b86f603c-d25f-409b-b055-4bbc6edcd301
ms.reviewer: jarrettrenshaw
ms.date: 07/01/2019
manager: v-miegge
keywords: hololens
ms.prod: hololens
ms.sitesec: library
author: v-miegge
ms.author: v-miegge
ms.topic: article
ms.localizationpriority: medium
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Use HoloLens offline

HoloLens support a limited set of offline experiences for connectivity conscious customers and for customers who have environmental limits on connectivity.

## Near-offline setup

HoloLens need a network connection to go through initial device set up.  If your corporate network has network restrictions, the following URLs will need to be available:

| Purpose | URL |
|------|------|
| IDPS | https://sdx.microsoft.com/frx/idps |
| [NCSI](https://docs.microsoft.com/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services#bkmk-ncsi) |  http://www.msftconnecttest.com/connecttest.txt  |
| AADv9 | https://login.microsoftonline.com/WebApp/CloudDomainJoin/9 |
| AADv10 | https://login.microsoftonline.com/WebApp/CloudDomainJoin/10 |
| AAD Pin | https://account.live.com/aadngc?uiflavor=win10&showSuccess=1 |
| MSA | https://login.live.com/ppsecure/inlineconnect.srf?id=80600 |
| MSA Pin | https://account.live.com/msangc?fl=enroll |

## HoloLens limitations

After your HoloLens is set up, you can use it without a Wi-Fi connection, but apps that use Internet connections will have limited capabilities when you use HoloLens offline.
