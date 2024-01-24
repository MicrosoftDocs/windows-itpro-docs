---
title: 5039(-) A registry key was virtualized. 
description: Describes security event 5039(-) A registry key was virtualized. This event is generated when a registry key is virtualized using LUAFV.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 5039(-): A registry key was virtualized.


This event should be generated when registry key was virtualized using [LUAFV](https://blogs.msdn.com/b/alexcarp/archive/2009/06/25/the-deal-with-luafv-sys.aspx).

This event occurs rarely during standard LUAFV registry key virtualization.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit Registry](audit-registry.md)

***Event Schema:***

*A registry key was virtualized.*

*Subject:*

> *Security ID:%1%*
>
> *Account Name:%2*
>
> *Account Domain:%3*
>
> *Logon ID:%4*

*Object:*

> *Key Name:%5*
>
> *Virtual Key Name:%6*

*Process Information:*

> *Process ID:%7*
>
> *Process Name%8*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There's no recommendation for this event in this document.



