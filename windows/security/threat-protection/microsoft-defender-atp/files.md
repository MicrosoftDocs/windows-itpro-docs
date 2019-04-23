---
title: File resource type
description: Retrieves top recent alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
search.product: eADQiWindows 10XVcnh
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
ms.topic: article
---

# File resource type
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Represent a file entity in Microsoft Defender ATP.

# Methods
Method|Return Type |Description
:---|:---|:---
[Get file](get-file-information.md) | [file](files.md) | Get a single file 
[List file related alerts](get-file-related-alerts.md) | [alert](alerts.md) collection | Get the [alert](alerts.md) entities that are associated with the file.
[List file related machines](get-file-related-machines.md) | [machine](machine.md) collection | Get the [machine](machine.md) entities associated with the alert.
[file statistics](get-file-statistics.md) | Statistics summary | Retrieves the prevalence for the given file.


# Properties
Property |	Type	|	Description
:---|:---|:---
sha1 | String | Sha1 hash of the file content
sha256 | String | Sha256 hash of the file content
md5 | String | md5 hash of the file content
globalPrevalence | Integer | File prevalence across organization
globalFirstObserved | DateTimeOffset | First time the file was observed.
globalLastObserved | DateTimeOffset | Last time the file was observed.
size | Integer | Size of the file.
fileType | String | Type of the file. 
isPeFile | Boolean | true if the file is portable executable (e.g. "DLL", "EXE", etc.)
filePublisher | String | File publisher.
fileProductName | String | Product name.
signer | String | File signer.
issuer | String | File issuer.
signerHash | String | Hash of the signing certificate.
isValidCertificate | Boolean | Was signing certificate successfully verified by  Microsoft Defender ATP agent.

