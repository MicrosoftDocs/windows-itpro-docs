---
title: List devices by software
description: Retrieve a list of devices that has this software installed.
keywords: apis, graph api, supported apis, get, list devices, devices list, list devices by software, mdatp tvm api
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

# List devices by software

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](../../includes/prerelease.md)]

Retrieve a list of device references that has this software installed.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md) for details.

Permission type |   Permission  |   Permission display name
:---|:---|:---
Application | Software.Read.All | 'Read Threat and Vulnerability Management Software information'
Delegated (work or school account) | Software.Read | 'Read Threat and Vulnerability Management Software information'

## HTTP request
```
GET /api/Software/{Id}/machineReferences 
```

## Request headers

| Name        | Type | Description
|:--------------|:-------|:--------------|
| Authorization | String | Bearer {token}.**Required**.

## Request body
Empty

## Response
If successful, this method returns 200 OK and a list of devices with the software installed in the body. 


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/Software/microsoft-_-edge/machineReferences
```

**Response**

Here is an example of the response.

```json

{
    "@odata.context": "https://api-us.securitycenter.windows.com/api/$metadata#MachineReferences",
    "value": [
        {
            "id": "7c7e1896fa39efb0a32a2cf421d837af1b9bf762",
            "computerDnsName": "dave_desktop",
            "osPlatform": "Windows10",
            "rbacGroupName": "GroupTwo"
        },
        {
            "id": "7d5cc2e7c305e4a0a290392abf6707f9888fda0d",
            "computerDnsName": "jane_PC",
            "osPlatform": "Windows10",
            "rbacGroupName": "GroupTwo"
        }
		...
	]
}
```

## Related topics
- [Risk-based Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
- [Threat & Vulnerability software inventory](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-software-inventory)
