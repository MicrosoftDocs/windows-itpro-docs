---
title: Get exposure score
description: Retrieves the organizational exposure score.
keywords: apis, graph api, supported apis, get, exposure score, organizational exposure score
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

# Get exposure score

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


[!include[Prerelease information](../../includes/prerelease.md)]

Retrieves the organizational exposure score.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application | Score.Read.All | 'Read Threat and Vulnerability Management score'
Delegated (work or school account) | Score.Read | 'Read Threat and Vulnerability Management score'

## HTTP request

```
GET /api/exposureScore
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful, this method returns 200 OK, with the exposure data in the response body.

## Example

### Request

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/exposureScore
```

### Response

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. 

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#ExposureScore/$entity",
    "time": "2019-12-03T07:23:53.280499Z",
    "score": 33.491554051195706
}

```

## See also

- [Risk-based Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Threat & Vulnerability exposure score](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-exposure-score)
