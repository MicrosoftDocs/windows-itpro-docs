---
title: Get device secure score
description: Retrieves the organizational device secure score.
keywords: apis, graph api, supported apis, get, alerts, recent
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# Get device secure score

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


Retrieves your [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md). A higher Microsoft Secure Score for Devices means your endpoints are more resilient from cybersecurity threat attacks. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md) for details.

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

```http
GET https://api.securitycenter.microsoft.com/api/configurationScore
```

### Response

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. 

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#ConfigurationScore/$entity",
    "time": "2019-12-03T09:15:58.1665846Z",
    "score": 340
}
```

## See also

- [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md)
