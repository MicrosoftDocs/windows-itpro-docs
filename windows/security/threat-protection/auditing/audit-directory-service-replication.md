---
title: Audit Directory Service Replication 
description: Audit Directory Service Replication is a policy setting that decides if audit events are created when replication between two domain controllers begins or ends.
ms.assetid: b95d296c-7993-4e8d-8064-a8bbe284bd56
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit Directory Service Replication


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

