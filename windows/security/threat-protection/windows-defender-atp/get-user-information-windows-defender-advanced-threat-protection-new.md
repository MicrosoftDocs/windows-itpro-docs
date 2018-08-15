---
title: Get user information API
description: Retrieve a User entity by key such as user name or domain.
keywords: apis, graph api, supported apis, get, user, user information
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

# Get user information API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Retrieve a User entity by key (user name or domain\user).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	User.Read.All |	'Read all user profiles'

## HTTP request
```
GET /api/users/{id}/
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and user exists - 200 OK with [user](user-windows-defender-advanced-threat-protection-new.md) entity in the body.
If user does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
GET https://api.securitycenter.windows.com/api/users/{id}
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/testwdatppreview/$metadata#Users/$entity",
    "id": "",
    "accountSid": null,
    "accountName": "",
    "accountDomainName": "",
…
}
```
