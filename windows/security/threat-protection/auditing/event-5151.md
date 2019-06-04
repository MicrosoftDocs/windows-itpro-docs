---
title: 5151(-) A more restrictive Windows Filtering Platform filter has blocked a packet. (Windows 10)
description: Describes security event 5151(-) A more restrictive Windows Filtering Platform filter has blocked a packet.
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

# 5151(-): A more restrictive Windows Filtering Platform filter has blocked a packet.

**Applies to**
-   Windows 10
-   Windows Server 2016


This event is logged if a more restrictive Windows Filtering Platform [MAC filter](https://msdn.microsoft.com/library/windows/hardware/hh440262(v=vs.85).aspx) has blocked a packet.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Filtering Platform Connection](audit-filtering-platform-connection.md)

***Event Schema:***

*A more restrictive Windows Filtering Platform filter has blocked a packet.*

*Network Information:*

> *Direction:%1*
>
> *Source Address:%2*
>
> *Destination Address:%3*
>
> *EtherType:%4*
>
> *MediaType:%5*
>
> *InterfaceType:%6*
>
> *VlanTag:%7*

*Filter Information:*

> *Filter Run-Time ID:%8*
>
> *Layer Name:%9*
>
> *Layer Run-Time ID:%10 *

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012, Windows 8.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There is no recommendation for this event in this document.

