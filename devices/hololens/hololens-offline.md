---
title: Use HoloLens offline
description: To set up HoloLens, you'll need to connect to a Wi-Fi network
keywords: hololens, offline, OOBE
audience: ITPro
ms.date: 07/01/2019
ms.assetid: b86f603c-d25f-409b-b055-4bbc6edcd301
author: v-miegge
ms.author: v-miegge
manager: v-miegge
ms.topic: article
ms.prod: hololens
ms.sitesec: library
ms.localizationpriority: high
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

Additional references:

- [Technical reference for AAD related IP ranges and URLs](https://docs.microsoft.com/office365/enterprise/urls-and-ip-address-ranges)

## HoloLens limitations

After your HoloLens is set up, you can use it without a Wi-Fi connection, but apps that use Internet connections will have limited capabilities when you use HoloLens offline.
