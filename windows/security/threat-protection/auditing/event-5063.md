---
title: 5063(S, F) A cryptographic provider operation was attempted. 
description: Describes security event 5063(S, F) A cryptographic provider operation was attempted.
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

# 5063(S, F): A cryptographic provider operation was attempted.


This event generates in BCryptUnregisterProvider() and BCryptRegisterProvider() functions. These functions are Cryptographic Next Generation (CNG) functions.

This event generates when cryptographic provider was registered or unregistered.

For more information about Cryptographic Next Generation (CNG) visit these pages:

-   <https://msdn.microsoft.com/library/windows/desktop/aa376214(v=vs.85).aspx>

-   <https://www.microsoft.com/download/details.aspx?id=30688>

This event is used for Cryptographic Next Generation (CNG) troubleshooting.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Schema:***

*A cryptographic provider operation was attempted.*

*Subject:*

> *Security ID:%1*
>
> *Account Name:%2*
>
> *Account Domain:%3*
>
> *Logon ID:%4*

*Cryptographic Provider:*

> *Name:%5*
>
> *Module:%6*
>
> *Operation:%7*

*Return Code:%8*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   Typically this event is required for detailed monitoring of CNG-related cryptographic functions. If you need to monitor or troubleshoot actions related to specific cryptographic functions, review this event to see if it provides the information you need.

