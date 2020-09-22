---
title: Get or set device value
description: Learn how to use the Device Value API to get or set the device value
keywords: apis, graph api, supported apis, get, list, file, information, software id, threat & vulnerability management api, mdatp tvm api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Get or set device value

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

## API description
Set or GET specific [Machine](machine.md) device value to define it's value to the organization. [Learn more about device value](threat-and-vuln-mgt-scenarios.md#define-a-devices-value-to-the-organization)


## HTTP GET request
```http
GET /api/machines/{machineId}/getDeviceValue
```

## HTTP set request
```http
POST /api/machines/{machineId}/setDeviceValue
```

### Possible values

Normal/Low/High

