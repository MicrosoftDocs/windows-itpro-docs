---
title: 5066(S, F) A cryptographic function operation was attempted. 
description: Describes security event 5066(S, F) A cryptographic function operation was attempted.
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

# 5066(S, F): A cryptographic function operation was attempted.


This event generates in [BCryptAddContextFunction](/windows/win32/api/bcrypt/nf-bcrypt-bcryptaddcontextfunction)() and [BCryptRemoveContextFunction](/windows/win32/api/bcrypt/nf-bcrypt-bcryptremovecontextfunction)() functions. These functions are Cryptographic Next Generation (CNG) functions.

This event generates when cryptographic function was added or removed from the list of functions that are supported by an existing CNG context.

For more information about Cryptographic Next Generation (CNG) visit these pages:

-   <https://msdn.microsoft.com/library/windows/desktop/aa376214(v=vs.85).aspx>

-   <https://www.microsoft.com/download/details.aspx?id=30688>

This event is used for Cryptographic Next Generation (CNG) troubleshooting.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Schema:***

*A cryptographic function operation was attempted.*

*Subject:*

> *Security ID:%1*
>
> *Account Name:%2*
>
> *Account Domain:%3*
>
> *Logon ID:%4*

*Configuration Parameters:*

> *Scope:%5*
>
> *Context:%6*
>
> *Interface:%7*
>
> *Function:%8*
>
> *Position:%9*

*Operation:%10*

*Return Code:%11*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   Typically this event is required for detailed monitoring of CNG-related cryptographic functions. If you need to monitor or troubleshoot actions related to specific cryptographic functions, review this event to see if it provides the information you need.