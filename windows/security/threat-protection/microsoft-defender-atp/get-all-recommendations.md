---
title: List all recommendations
description: Retrieves a list of all security recommendations affecting the organization.
keywords: apis, graph api, supported apis, get, security recommendations, mdatp tvm api, threat and vulnerability management, threat and vulnerability management api 
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

# List all recommendations
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](../../includes/prerelease.md)]

Retrieves a list of all security recommendations affecting the organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md) for details.

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	SecurityRecommendation.Read.All |	'Read Threat and Vulnerability Management security recommendation information'
Delegated (work or school account) | SecurityRecommendation.Read |	'Read Threat and Vulnerability Management security recommendation information'

## HTTP request
```
GET /api/recommendations
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK with the list of security recommendations in the body.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/recommendations
```

**Response**

Here is an example of the response.


```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Recommendations",
    "value": [
        {
            "id": "va-_-microsoft-_-windows_10",
            "productName": "windows_10",
            "recommendationName": "Update Windows 10",
            "weaknesses": 397,
            "vendor": "microsoft",
            "recommendedVersion": "",
            "recommendationCategory": "Application",
            "subCategory": "",
            "severityScore": 0,
            "publicExploit": true,
            "activeAlert": false,
            "associatedThreats": [
                "3098b8ef-23b1-46b3-aed4-499e1928f9ed",
                "40c189d5-0330-4654-a816-e48c2b7f9c4b",
                "4b0c9702-9b6c-4ca2-9d02-1556869f56f8",
                "e8fc2121-3cf3-4dd2-9ea0-87d7e1d2b29d",
                "94b6e94b-0c1d-4817-ac06-c3b8639be3ab"
            ],
            "remediationType": "Update",
            "status": "Active",
            "configScoreImpact": 0,
            "exposureImpact": 7.674418604651163,
            "totalMachineCount": 37,
            "exposedMachinesCount": 7,
            "nonProductivityImpactedAssets": 0,
            "relatedComponent": "Windows 10"
        }
		...
     ]
}
```
## Related topics
- [Risk-based Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Threat & Vulnerability security recommendation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation)

