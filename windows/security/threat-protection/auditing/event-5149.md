---
title: 5149(F) The DoS attack has subsided and normal processing is being resumed. (Windows 10)
description: Describes security event 5149(F) The DoS attack has subsided and normal processing is being resumed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 05/29/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 5149(F): The DoS attack has subsided and normal processing is being resumed.

**Applies to**
-   Windows 10
-   Windows Server 2016


In most circumstances, this event occurs very rarely. It is designed to be generated when an ICMP DoS attack ended.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other Object Access Events](audit-other-object-access-events.md)

***Event Schema:***

*The DoS attack has subsided and normal processing is being resumed.*

*Network Information:*

> *Type:%1*
>
> *Packets Discarded:%2*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008 R2, Windows 7.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of ICMP DoS attack or, among other things, hardware or network device related problems. In both cases, we recommend triggering an alert and investigating the reason the event was generated.

