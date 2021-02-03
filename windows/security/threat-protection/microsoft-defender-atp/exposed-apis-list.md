---
title: Supported Microsoft Defender for Endpoint APIs
ms.reviewer: 
description: Learn about the specific supported Microsoft Defender for Endpoint entities where you can create API calls to.
keywords: apis, supported apis, actor, alerts, device, user, domain, ip, file, advanced queries, advanced hunting
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# Supported Microsoft Defender for Endpoint APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

## Endpoint URI and versioning

### Endpoint URI:

> The service base URI is: https://api.securitycenter.microsoft.com
> 
> The queries based OData have the '/api' prefix. For example, to get Alerts you can send GET request to https://api.securitycenter.microsoft.com/api/alerts

### Versioning:

> The API supports versioning.
> 
> The current version is **V1.0**.
> 
> To use a specific version, use this format: `https://api.securitycenter.microsoft.com/api/{Version}`. For example: `https://api.securitycenter.microsoft.com/api/v1.0/alerts`
> 
> If you don't specify any version (e.g. https://api.securitycenter.microsoft.com/api/alerts ) you will get to the latest version.


[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


Learn more about the individual supported entities where you can run API calls to and details such as HTTP request values, request headers and expected responses.

## In this section

Topic | Description
:---|:---
Advanced Hunting | Run queries from API.
Alerts | Run API calls such as get alerts, create alert, update alert and more.
Domains | Run API calls such as get domain-related devices, domain statistics and more.
Files | Run API calls such as get file information, file related alerts, file related devices, and file statistics.
IPs | Run API calls such as get IP-related alerts and get IP statistics.
Machines | Run API calls such as get devices, get devices by ID, information about logged on users, edit tags and more.
Machine Actions | Run API call such as Isolation, Run anti-virus scan and more.
Indicators | Run API call such as create Indicator, get Indicators and delete Indicators.
Users | Run API calls such as get user-related alerts and user-related devices.
Score | Run API calls such as get exposure score or get device secure score.
Software | Run API calls such as list vulnerabilities by software.
Vulnerability | Run API calls such as list devices by vulnerability.
Recommendation | Run API calls such as Get recommendation by ID.

## See also
- [Microsoft Defender for Endpoint APIs](apis-intro.md)
