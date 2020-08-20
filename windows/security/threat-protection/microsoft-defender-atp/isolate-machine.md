---
title: Isolate machine API
description: Learn how to use the Isolate machine API to isolate a device from accessing external network in Microsoft Defender Advanced Threat Protection.
keywords: apis, graph api, supported apis, isolate device
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

# Isolate machine API

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Isolates a device from accessing external network.


## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


[!include[Device actions note](../../includes/machineactionsnote.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Isolate |	'Isolate machine'
Delegated (work or school account) | Machine.Isolate |	'Isolate machine'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the device, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)


## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/isolate
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	String |	Comment to associate with the action. **Required**.
IsolationType	| String |	Type of the isolation. Allowed values are: 'Full' or 'Selective'.

**IsolationType** controls the type of isolation to perform and can be one of the following:
- Full – Full isolation
- Selective – Restrict only limited set of applications from accessing the network (see [Isolate devices from the network](respond-machine-alerts.md#isolate-devices-from-the-network) for more details)


## Response
If successful, this method returns 201 - Created response code and [Machine Action](machineaction.md) in the response body.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](../../includes/improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/isolate
Content-type: application/json
{
  "Comment": "Isolate machine due to alert 1234",
  “IsolationType”: “Full” 
}


- To unisolate a device, see [Release device from isolation](unisolate-machine.md).
