---
title: Microsoft Defender for Endpoint API release notes
description: Release notes for updates made to the Microsoft Defender for Endpoint set of APIs.
keywords: microsoft defender for endpoint api release notes, mde, apis, mdatp api, updates, notes, release
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Microsoft Defender for Endpoint API release notes

**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

The following information lists the updates made to the Microsoft Defender for Endpoint APIs and the dates they were made.


> [!TIP]
> RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader: 
>```
>https://docs.microsoft.com/api/search/rss?search=%22Release+notes+for+updates+made+to+the+Microsoft+Defender+for+Endpoint+set+of+APIs%22&locale=en-us&facet=&%24filter=scopes%2Fany%28t%3A+t+eq+%27Windows+10%27%29
>```


### 10.02.2021
<hr>

- Added new API: [Batch update alerts](batch-update-alerts.md). 

<br>

### 25.01.2021
<hr>

- Updated rate limitations for [Advanced Hunting API](run-advanced-query-api.md) from 15 to 45 requests per minute. 

<br>

### 21.01.2021
<hr>

- Added new API: [Find devices by tag](machine-tags.md). 
- Added new API: [Import Indicators](import-ti-indicators.md). 

<br>

### 03.01.2021
<hr>

- Updated Alert evidence: added ***detectionStatus***, ***parentProcessFilePath*** and ***parentProcessFileName*** properties.
- Updated [Alert entity](alerts.md): added ***detectorId*** property.

<br>

### 15.12.2020
<hr>

- Updated [Device](machine.md) entity: added ***IpInterfaces*** list. See [List devices](get-machines.md).

<br>

### 04.11.2020
<hr>

- Added new API: [Set device value](set-device-value.md).
- Updated [Device](machine.md) entity: added ***deviceValue*** property.

<br>

### 01.09.2020
<hr>

- Added option to expand the Alert entity with its related Evidence. See [List Alerts](get-alerts.md).

<br>
<br>