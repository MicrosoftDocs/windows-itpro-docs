---
title: 5056(S) A cryptographic self-test was performed. 
description: Describes security event 5056(S) A cryptographic self-test was performed.
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

# 5056(S): A cryptographic self-test was performed.


This event generates in CNG Self-Test function. This function is a Cryptographic Next Generation (CNG) function.

For more information about Cryptographic Next Generation (CNG) visit these pages:

-   <https://msdn.microsoft.com/library/windows/desktop/aa376214(v=vs.85).aspx>

-   <https://msdn.microsoft.com/library/windows/desktop/bb204775(v=vs.85).aspx>

-   <https://www.microsoft.com/download/details.aspx?id=30688>

This event is used for CNG troubleshooting.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*A cryptographic self-test was performed.*

*Subject:*

> *Security ID%1*
>
> *Account Name:%2*
>
> *Account Domain:%3*
>
> *Logon ID:%4*

*Module:%5*

*Return Code:%6*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   Typically this event is required for detailed monitoring of CNG-related actions with cryptographic keys. If you need to monitor or troubleshoot actions related to specific cryptographic keys and operations, review this event to see if it provides the information you need.

