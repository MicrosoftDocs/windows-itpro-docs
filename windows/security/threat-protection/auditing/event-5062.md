---
title: 5062(S) A kernel-mode cryptographic self-test was performed. 
description: Describes security event 5062(S) A kernel-mode cryptographic self-test was performed.
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

# 5062(S): A kernel-mode cryptographic self-test was performed.


This event occurs rarely, and in some situations may be difficult to reproduce.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*A kernel-mode cryptographic self test was performed.*

*Module:%1*

*Return Code:%2*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   Typically this event is required for detailed monitoring of CNG-related actions with cryptographic keys. If you need to monitor or troubleshoot actions related to specific cryptographic keys and operations, review this event to see if it provides the information you need.

