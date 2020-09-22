---
title: Get device secure score
description: Retrieves the organizational device secure score.
keywords: apis, graph api, supported apis, get, alerts, recent
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: levinec
ms.author: ellevin
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Get device secure score

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Retrieves your [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md). A higher Microsoft Secure Score for Devices means your endpoints are more resilient from cybersecurity threat attacks. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md) for details.

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Score.Read.Alll |	'Read Threat and Vulnerability Management score'
Delegated (work or school account) | Score.Read | 'Read Threat and Vulnerability Management score'

## HTTP request

```
GET /api/configurationScore
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful, this method returns 200 OK, with the device secure score data in the response body.

## Example

### Request

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/configurationScore
```

### Response

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. 

```json
{
    "@odata.context": "https://api-us.securitycenter.windows.com/api/$metadata#ConfigurationScore/$entity",
    "time": "2019-12-03T09:15:58.1665846Z",
    "score": 340
}
```

## Related topics

- [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)
