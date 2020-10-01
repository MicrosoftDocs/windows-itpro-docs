---
title: Set device value API
description: Learn how to specify the value of a device using a Microsoft Defender Advanced Threat Protection API.
keywords: apis, graph api, supported apis, tags, machine tags
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance  
ms.topic: article
---

# Set device value API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

## API description

Adds or remove tag to a specific [Machine](machine.md).

## Limitations

1. You can post on devices last seen according to your configured retention period.

2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |    Permission    |    Permission display name
:---|:---|:---
Application |    Machine.ReadWrite.All |    'Read and write all machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>
>- The user needs to have at least the following role permission: 'Manage security setting'. For more  (See [Create and manage roles](user-roles.md) for more information)
>- User needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request

```http
POST https://api.securitycenter.windows.com/api/machines/{machineId}/setDeviceValue
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body

```http
"DeviceValue": "{device value}"
```

## Response

If successful, this method returns 200 - Ok response code and the updated Machine in the response body.
