---
title: Audit Other Object Access Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Object Access Events, which determines whether the operating system generates audit events for the management of Task Scheduler jobs or COM+ objects.
ms.assetid: b9774595-595d-4199-b0c5-8dbc12b6c8b2
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 05/29/2017
---

# Audit Other Object Access Events

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Other Object Access Events allows you to monitor operations with scheduled tasks, COM+ objects and indirect object access requests.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                           |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing first of all because of scheduled tasks events.<br>We recommend Failure auditing to get events about possible ICMP DoS attack. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing first of all because of scheduled tasks events.<br>We recommend Failure auditing to get events about possible ICMP DoS attack. |
| Workstation       | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing first of all because of scheduled tasks events.<br>We recommend Failure auditing to get events about possible ICMP DoS attack. |

**Events List:**

-   [4671](event-4671.md)(-): An application attempted to access a blocked ordinal through the TBS.

-   [4691](event-4691.md)(S): Indirect access to an object was requested.

-   [5148](event-5148.md)(F): The Windows Filtering Platform has detected a DoS attack and entered a defensive mode; packets associated with this attack will be discarded.

-   [5149](event-5149.md)(F): The DoS attack has subsided and normal processing is being resumed.

-   [4698](event-4698.md)(S): A scheduled task was created.

-   [4699](event-4699.md)(S): A scheduled task was deleted.

-   [4700](event-4700.md)(S): A scheduled task was enabled.

-   [4701](event-4701.md)(S): A scheduled task was disabled.

-   [4702](event-4702.md)(S): A scheduled task was updated.

-   [5888](event-5888.md)(S): An object in the COM+ Catalog was modified.

-   [5889](event-5889.md)(S): An object was deleted from the COM+ Catalog.

-   [5890](event-5890.md)(S): An object was added to the COM+ Catalog.

