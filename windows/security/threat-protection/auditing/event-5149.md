---
title: 5149(F) The DoS attack has subsided and normal processing is being resumed. 
description: Describes security event 5149(F) The DoS attack has subsided and normal processing is being resumed.
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

# 5149(F): The DoS attack has subsided and normal processing is being resumed.


In most circumstances, this event occurs rarely. It's designed to be generated when an ICMP DoS attack ends.

There's no example of this event in this document.

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

