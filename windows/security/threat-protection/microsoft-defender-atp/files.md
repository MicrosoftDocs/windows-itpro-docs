---
title: File resource type
description: Retrieve recent Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) alerts related to files.
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

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Represent a file entity in Microsoft Defender ATP.

## Methods
Method|Return Type |Description
:---|:---|:---
[Get file](get-file-information.md) | [file](files.md) | Get a single file 
[List file related alerts](get-file-related-alerts.md) | [alert](alerts.md) collection | Get the [alert](alerts.md) entities that are associated with the file.
[List file related devices](get-file-related-machines.md) | [machine](machine.md) collection | Get the [device](machine.md) entities associated with the alert.
[file statistics](get-file-statistics.md) | Statistics summary | Retrieves the prevalence for the given file.


## Properties
Property |	Type	|	Description
:---|:---|:---
sha1 | String | Sha1 hash of the file content
sha256 | String | Sha256 hash of the file content
globalPrevalence | Nullable long | File prevalence across organization
globalFirstObserved | DateTimeOffset | First time the file was observed.
globalLastObserved | DateTimeOffset | Last time the file was observed.
size | Nullable long | Size of the file.
fileType | String | Type of the file. 
isPeFile | Boolean | true if the file is portable executable (e.g. "DLL", "EXE", etc.)
filePublisher | String | File publisher.
fileProductName | String | Product name.
signer | String | File signer.
issuer | String | File issuer.
signerHash | String | Hash of the signing certificate.
isValidCertificate | Boolean | Was signing certificate successfully verified by  Microsoft Defender ATP agent.
determinationType | String | The determination type of the file.
determinationValue | String | Determination value.


## Json representation

```json
{
	"sha1": "4388963aaa83afe2042a46a3c017ad50bdcdafb3",
	"sha256": "413c58c8267d2c8648d8f6384bacc2ae9c929b2b96578b6860b5087cd1bd6462",
	"globalPrevalence": 180022,
	"globalFirstObserved": "2017-09-19T03:51:27.6785431Z",
	"globalLastObserved": "2020-01-06T03:59:21.3229314Z",
	"size": 22139496,
	"fileType": "APP",
	"isPeFile": true,
	"filePublisher": "CHENGDU YIWO Tech Development Co., Ltd.",
	"fileProductName": "EaseUS MobiSaver for Android",
	"signer": "CHENGDU YIWO Tech Development Co., Ltd.",
	"issuer": "VeriSign Class 3 Code Signing 2010 CA",
	"signerHash": "6c3245d4a9bc0244d99dff27af259cbbae2e2d16",
	"isValidCertificate": false,
	"determinationType": "Pua",
	"determinationValue": "PUA:Win32/FusionCore"
}
```