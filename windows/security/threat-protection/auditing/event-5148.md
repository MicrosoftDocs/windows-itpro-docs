---
title: 5148(F) The Windows Filtering Platform has detected a DoS attack and entered a defensive mode; packets associated with this attack will be discarded. 
description: Details on Security event 5148(F), The Windows Filtering Platform has detected a DoS attack and entered a defensive mode.
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

# 5148(F): The Windows Filtering Platform has detected a DoS attack and entered a defensive mode; packets associated with this attack will be discarded.


In most circumstances, this event occurs rarely. It's designed to be generated when an ICMP DoS attack starts or was detected.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other Object Access Events](audit-other-object-access-events.md)

***Event Schema:***

*The Windows Filtering Platform has detected a DoS attack and entered a defensive mode; packets associated with this attack will be discarded.*

*Network Information:*

> *Type:%1*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008 R2, Windows 7.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of ICMP DoS attack or, among other things, hardware or network device related problems. In both cases, we recommend triggering an alert and investigating the reason the event was generated.

