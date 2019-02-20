---
title: Supported Windows Defender Advanced Threat Protection query APIs  
description: Learn about the specific supported Windows Defender Advanced Threat Protection entities where you can create API calls to. 
keywords: apis, graph api, supported apis, actor, alerts, machine, user, domain, ip, file
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
ms.topic: conceptual
ms.date: 09/03/2018
---

# Supported Windows Defender ATP query APIs (deprecated)

**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


Learn more about the individual supported entities where you can run API calls to and details such as HTTP request values, request headers and expected responses.

## In this section
Topic | Description
:---|:---
Actor | Run API calls such as get actor information and get actor related alerts.
Alerts | Run API calls such as get alerts, alert information by ID, alert related actor information, alert related IP information, and alert related machine information.
Domain |Run API calls such as get domain related machines, domain related machines, statistics, and check if a domain is seen in your organization.
File | Run API calls such as get file information, file related alerts, file related machines, and file statistics.
IP | Run API calls such as get IP related alerts, IP related machines, IP statistics, and check if and IP is seen in your organization.
Machines | Run API calls such as find machine information by IP, get machines, get machines by ID, information about logged on users, and alerts related to a given machine ID.
User | Run API calls such as get alert related user information, user information, user related alerts, and user related machines.
KbInfo | Run API call that gets list of Windows KB's information
CveKbMap | Run API call that gets mapping of CVE's to corresponding KB's
MachineSecurityStates | Run API call that gets list of machines with their security properties and versions
MachineGroups | Run API call that gets list of machine group definitions