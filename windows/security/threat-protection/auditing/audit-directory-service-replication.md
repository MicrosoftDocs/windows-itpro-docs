---
title: Audit Directory Service Replication (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Directory Service Replication, which determines whether the operating system generates audit events when replication between two domain controllers begins and ends.
ms.assetid: b95d296c-7993-4e8d-8064-a8bbe284bd56
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit Directory Service Replication

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Directory Service Replication determines whether the operating system generates audit events when replication between two domain controllers begins and ends.

**Event volume**: Medium on domain controllers.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                            |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | No              | IF               | IF               | IF - Events in this subcategory typically have an informational purpose and it is difficult to detect any malicious activity using these events. It’s mainly used for Active Directory replication troubleshooting. |
| Member Server     | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                            |
| Workstation       | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                            |

**Events List:**

-   [4932](event-4932.md)(S): Synchronization of a replica of an Active Directory naming context has begun.

-   [4933](event-4933.md)(S, F): Synchronization of a replica of an Active Directory naming context has ended.

