---
title: Supported Microsoft Defender Advanced Threat Protection query APIs  
ms.reviewer: 
description: Learn about the specific supported Microsoft Defender Advanced Threat Protection entities where you can create API calls to. 
keywords: apis, supported apis, actor, alerts, machine, user, domain, ip, file, advanced queries, advanced hunting
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

# Supported Microsoft Defender ATP query APIs 

**Applies to:**
- Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-supportedapis-abovefoldlink) 

## End Point URI and Versioning

### End Point URI:

> The service base URI is: https://api.securitycenter.windows.com
> 
> The queries based OData have the '/api' prefix. For example, to get Alerts you can send GET request to https://api.securitycenter.windows.com/api/alerts

### Versioning:

> The API supports versioning.
> 
> The current version is **V1.0**.
> 
> To use a specific version, use this format: https://api.securitycenter.windows.com/api/{Version}. For example: https://api.securitycenter.windows.com/api/v1.0/alerts
> 
> If you don't specify any version (e.g., https://api.securitycenter.windows.com/api/alerts ) you will get to the latest version.


Learn more about the individual supported entities where you can run API calls to and details such as HTTP request values, request headers and expected responses.

## In this section

Topic | Description
:---|:---
Advanced Hunting | Run queries from API.
Alerts | Run API calls such as get alerts, alert information by ID, alert related actor information, alert related IP information, and alert related machine information.
Domain |Run API calls such as get domain related machines, domain related machines, statistics, and check if a domain is seen in your organization.
File | Run API calls such as get file information, file related alerts, file related machines, and file statistics.
IP | Run API calls such as get IP related alerts, IP related machines, IP statistics, and check if and IP is seen in your organization.
Machines | Run API calls such as find machine information by IP, get machines, get machines by ID, information about logged on users, and alerts related to a given machine ID.
User | Run API calls such as get alert related user information, user information, user related alerts, and user related machines.

## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
