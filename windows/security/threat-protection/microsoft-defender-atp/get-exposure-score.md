---
title: Get exposure score
description: Retrieves the organizational exposure score.
keywords: apis, graph api, supported apis, get, exposure score, organizational exposure score
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

# Get exposure score

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Retrieves the organizational exposure score.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Score.Read.All |	'Read Threat and Vulnerability Management score'
Delegated (work or school account) | Score.Read | 'Read Threat and Vulnerability Management score'


## HTTP request
```
GET /api/exposureScore
```

## Optional query parameters
Method supports $top, $select, $filter, $expand and $skip query parameters.
<br>$expand is available on Files, IPs and Domains. e.g. $expand=files,domains

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK, with the exposure data in the response body.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/exposureScore
```

[!include[Improve request performance](improve-request-performance.md)]


**Response**

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. 


```json
{
    "@odata.context": "https://api-us.securitycenter.windows.com/api/$metadata#ExposureScore/$entity",
    "time": "2019-12-03T07:23:53.280499Z",
    "score": 33.491554051195706,
    "rbacGroupId": null
}

```

## Related topics
- [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)
