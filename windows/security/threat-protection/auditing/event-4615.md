---
title: 4615(S) Invalid use of LPC port. (Windows 10)
description: Describes security event 4615(S) Invalid use of LPC port.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 4615(S): Invalid use of LPC port.

**Applies to**
-   Windows 10
-   Windows Server 2016


It appears that this event never occurs.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Invalid use of LPC port.*

*Subject:*

> *Security ID%1*
>
> *Account Name:%2*
>
> *Account Domain:%3*
>
> *Logon ID:%4*

*Process Information:*

> *PID:%7*
>
> *Name:%8*

*Invalid Use:%5*

*LPC Server Port Name:%6*

*Windows Local Security Authority (LSA) communicates with the Windows kernel using Local Procedure Call (LPC) ports. If you see this event, an application has inadvertently or intentionally accessed this port which is reserved exclusively for LSA’s use. The application (process) should be investigated to ensure that it is not attempting to tamper with this communications channel."*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There is no recommendation for this event in this document.

