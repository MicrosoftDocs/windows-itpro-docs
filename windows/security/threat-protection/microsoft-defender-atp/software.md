---
title: Software methods and properties
description: Retrieves top recent alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
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

# Software resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


[!include[Prerelease information](../../includes/prerelease.md)]

## Methods

Method |Return Type |Description
:---|:---|:---
[List software](get-software.md) | Software collection | List the organizational software inventory.
[Get software by Id](get-software-by-id.md) | Software | Get a specific software by its software ID.
[List software version distribution](get-software-ver-distribution.md)| Distribution collection | List software version distribution by software ID.
[List machines by software](get-machines-by-software.md)| MachineRef collection | Retrieve a list of devices that are associated with the software ID.
[List vulnerabilities by software](get-vuln-by-software.md) | [Vulnerability](vulnerability.md) collection | Retrieve a list of vulnerabilities associated with the software ID.
[Get missing KBs](get-missing-kbs-software.md) | KB collection | Get a list of missing KBs associated with the software ID

## Properties

Property |   Type   |   Description
:---|:---|:---
id | String | Software ID
Name | String | Software name
Vendor | String | Software vendor name
Weaknesses | Long | Number of discovered vulnerabilities
publicExploit | Boolean | Public exploit exists for some of the vulnerabilities
activeAlert | Boolean | Active alert is associated with this software
exposedMachines | Long | Number of exposed devices
impactScore | Double | Exposure score impact of this software
