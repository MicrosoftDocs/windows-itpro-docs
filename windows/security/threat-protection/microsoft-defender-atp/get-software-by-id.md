---
title: Get software by Id
description: Retrieves a list of exposure scores by device group.
keywords: apis, graph api, supported apis, get, software, mdatp tvm api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Get software by Id

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](../../includes/prerelease.md)]

Retrieves software details by ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md) for details.

Permission type |   Permission  |   Permission display name
:---|:---|:---
Application | Software.Read.All | 'Read Threat and Vulnerability Management Software information'
Delegated (work or school account) | Software.Read | 'Read Threat and Vulnerability Management Software information'

## HTTP request
```
GET /api/Software/{Id}
```

## Request headers

| Name        | Type | Description
|:--------------|:-------|:--------------|
| Authorization | String | Bearer {token}.**Required**.

## Request body
Empty

## Response
If successful, this method returns 200 OK with the specified software data in the body. 


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/Software/microsoft-_-edge
```

**Response**

Here is an example of the response.

```json

{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Software/$entity",
    "id": "microsoft-_-edge",
    "name": "edge",
    "vendor": "microsoft",
    "weaknesses": 467,
    "publicExploit": true,
    "activeAlert": false,
    "exposedMachines": 172,
    "impactScore": 2.39947438
}
```

## Related topics
- [Risk-based Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Threat & Vulnerability software inventory](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-software-inventory)
