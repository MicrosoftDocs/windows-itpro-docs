---
title: 5150(-) The Windows Filtering Platform blocked a packet. 
description: Describes security event 5150(-) The Windows Filtering Platform blocked a packet.
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

# 5150(-): The Windows Filtering Platform blocked a packet.


This event is logged if the Windows Filtering Platform [MAC filter](/windows-hardware/drivers/network/using-layer-2-filtering) blocked a packet.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Filtering Platform Connection](audit-filtering-platform-connection.md)

***Event Schema:***

*The Windows Filtering Platform has blocked a packet.*

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
> *Layer Run-Time ID:%10*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012, Windows 8.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There is no recommendation for this event in this document.