---
title: List exposure score by machine group
description: Retrieves a list of exposure scores by machine group.
keywords: apis, graph api, supported apis, get, exposure score, machine group, machine group exposure score
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

# List exposure score by machine group

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a collection of alerts related to a given domain address.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |   Permission  |   Permission display name
:---|:---|:---
Application | Score.Read.All | 'Read Threat and Vulnerability Management score'
Delegated (work or school account) | Score.Read | 'Read Threat and Vulnerability Management score'

## HTTP request
```
GET /api/exposureScore/ByMachineGroups
```

## Request headers

| Name        | Type | Description
|:--------------|:-------|:--------------|
| Authorization | String | Bearer {token}.**Required**.

## Request body
Empty

## Response
If successful, this method returns 200 OK, with a list of exposure score per machine group data in the response body. 


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/exposureScore/ByMachineGroups
```

**Response**

Here is an example of the response.

```json

{
    "@odata.context": "https://api-us.securitycenter.windows.com/api/$metadata#ExposureScore",
    "value": [
        {
            "time": "2019-12-03T09:51:28.214338Z",
            "score": 41.38041766305988,
            "rbacGroupId": 10
        },
        {
            "time": "2019-12-03T09:51:28.2143399Z",
            "score": 37.403726933165366,
            "rbacGroupId": 11
        },
        {
            "time": "2019-12-03T09:51:28.2143407Z",
            "score": 26.390921344426033,
            "rbacGroupId": 9
        },
        {
            "time": "2019-12-03T09:51:28.2143414Z",
            "score": 23.58823563070858,
            "rbacGroupId": 5
        }
    ]
}
```