---
title: List machines by recommendation
description: Retrieves a list of machines associated with the security recommendation. 
keywords: apis, graph api, supported apis, get, security recommendation for vulnerable machines, threat and vulnerability management, threat and vulnerability management api 
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

# List machines by recommendation
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](../../includes/prerelease.md)]

Retrieves a list of machines associated with the security recommendation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md) for details.

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	SecurityRecommendation.Read.All |	'Read Threat and Vulnerability Management security recommendation information'
Delegated (work or school account) | SecurityRecommendation.Read |	'Read Threat and Vulnerability Management security recommendation information'

## HTTP request
```
GET /api/recommendations/{id}/machineReferences
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK with the list of machines associated with the security recommendation.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/recommendations/va-_-google-_-chrome/machineReferences
```

**Response**

Here is an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineReferences",
    "value": [
        {
            "id": "e058770379bc199a9c179ce52a23e16fd44fd2ee",
            "computerDnsName": "niw_pc",
            "osPlatform": "Windows10",
            "rbacGroupName": "GroupTwo"
        }
		...
    ]
}
```

## Related topics
- [Risk-based Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Threat & Vulnerability security recommendation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation)
