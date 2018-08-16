---
title: Is IP seen in org API
description: Answers whether an IP was seen in the organization.
keywords: apis, graph api, supported apis, is, ip, seen, org, organization
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# Was IP seen in org

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Answers whether an IP was seen in the organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ip.Read.All |	'Read IP address profiles'

## HTTP request
```
GET /api/ips/{ip}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and IP exists - 200 OK. If IP do not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/ips/10.209.67.177
```

**Response**

Here is an example of the response.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Ips/$entity",
    "id": "10.209.67.177"
}
```
