---
title: Audit Detailed Directory Service Replication (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Detailed Directory Service Replication, which determines whether the operating system generates audit events that contain detailed tracking information about data that is replicated between domain controllers.
ms.assetid: 1b89c8f5-bce7-4b20-8701-42585c7ab993
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: Mir0sh
ms.date: 04/19/2017
---

# Audit Detailed Directory Service Replication

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Detailed Directory Service Replication determines whether the operating system generates audit events that contain detailed tracking information about data that is replicated between domain controllers.

This audit subcategory can be useful to diagnose replication issues.

**Event volume**: These events can create a very high volume of event data on domain controllers.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                            |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | No              | IF               | IF               | IF - Events in this subcategory typically have an informational purpose and it is difficult to detect any malicious activity using these events. It’s mainly used for Active Directory replication troubleshooting. |
| Member Server     | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                            |
| Workstation       | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                            |

**Events List:**

-   [4928](event-4928.md)(S, F): An Active Directory replica source naming context was established.

-   [4929](event-4929.md)(S, F): An Active Directory replica source naming context was removed.

-   [4930](event-4930.md)(S, F): An Active Directory replica source naming context was modified.

-   [4931](event-4931.md)(S, F): An Active Directory replica destination naming context was modified.

-   [4934](event-4934.md)(S): Attributes of an Active Directory object were replicated.

-   [4935](event-4935.md)(F): Replication failure begins.

-   [4936](event-4936.md)(S): Replication failure ends.

-   [4937](event-4937.md)(S): A lingering object was removed from a replica.

