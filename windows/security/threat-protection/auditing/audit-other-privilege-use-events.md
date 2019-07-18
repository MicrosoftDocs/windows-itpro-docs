---
title: Audit Other Privilege Use Events (Windows 10)
description: This security policy setting is not used.
ms.assetid: 5f7f5b25-42a6-499f-8aa2-01ac79a2a63c
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

# Audit Other Privilege Use Events

**Applies to**
-   Windows 10
-   Windows Server 2016


This auditing subcategory should not have any events in it, but for some reason Success auditing will enable generation of event 4985(S): The state of a transaction has changed.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                              |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------|
| Domain Controller | No              | No              | No               | No               | This auditing subcategory doesn’t have any informative events inside. |
| Member Server     | No              | No              | No               | No               | This auditing subcategory doesn’t have any informative events inside. |
| Workstation       | No              | No              | No               | No               | This auditing subcategory doesn’t have any informative events inside. |

**Events List:**

-   [4985](event-4674.md)(S): The state of a transaction has changed.



