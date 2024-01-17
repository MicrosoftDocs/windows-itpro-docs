---
title: Audit Other Privilege Use Events 
description: Learn about the audit other privilege use events, an auditing subcategory that should not have any events in it but enables generation of event 4985(S).
ms.assetid: 5f7f5b25-42a6-499f-8aa2-01ac79a2a63c
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

# Audit Other Privilege Use Events


This auditing subcategory should not have any events in it, but for some reason Success auditing will enable the generation of event [4985(S): The state of a transaction has changed](/windows/security/threat-protection/auditing/event-4985).

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                              |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------|
| Domain Controller | No              | No              | No               | No               | This auditing subcategory doesn’t have any informative events inside. |
| Member Server     | No              | No              | No               | No               | This auditing subcategory doesn’t have any informative events inside. |
| Workstation       | No              | No              | No               | No               | This auditing subcategory doesn’t have any informative events inside. |

**Events List:**

-   [4985](event-4985.md)(S): The state of a transaction has changed.


