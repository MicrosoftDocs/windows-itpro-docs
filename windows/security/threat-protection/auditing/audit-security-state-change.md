---
title: Audit Security State Change (Windows 10)
description: The policy setting, Audit Security State Change, which determines whether Windows generates audit events for changes in the security state of a system.
ms.assetid: decb3218-a67d-4efa-afc0-337c79a89a2d
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.technology: itpro-security
ms.topic: reference
---

# Audit Security State Change


Audit Security State Change contains Windows startup, recovery, and shutdown events, and information about changes in system time.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                      |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | The volume of events in this subcategory is very low and all of them are important events and have security relevance. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | The volume of events in this subcategory is very low and all of them are important events and have security relevance. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | Yes             | No              | Yes              | No               | The volume of events in this subcategory is very low and all of them are important events and have security relevance. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

**Events List:**

-   [4608](event-4608.md)(S): Windows is starting up.

-   [4616](event-4616.md)(S): The system time was changed.

-   [4621](event-4621.md)(S): Administrator recovered system from CrashOnAuditFail.

>[!NOTE]
>Event **4609(S): Windows is shutting down** doesn't currently generate. It is a defined event, but it is never invoked by the operating system.

