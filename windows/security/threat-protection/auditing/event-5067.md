---
title: 5067(S, F) A cryptographic function modification was attempted. (Windows 10)
description: Describes security event 5067(S, F) A cryptographic function modification was attempted.
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.technology: itpro-security
ms.topic: reference
---

# 5067(S, F): A cryptographic function modification was attempted.


This event generates in [BCryptConfigureContextFunction](/windows/win32/api/bcrypt/nf-bcrypt-bcryptconfigurecontextfunction)() function. This function is a Cryptographic Next Generation (CNG) function.

This event generates when configuration information for the cryptographic function of an existing CNG context was changed.

For more information about Cryptographic Next Generation (CNG), visit these pages:

-   <https://msdn.microsoft.com/library/windows/desktop/aa376214(v=vs.85).aspx>

-   <https://www.microsoft.com/download/details.aspx?id=30688>

This event is used for Cryptographic Next Generation (CNG) troubleshooting.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Schema:***

*A cryptographic function modification was attempted.*

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

*Change Information:*

> *Old Value:%9*
>
> *New Value:%10*

*Return Code:%11*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   Typically this event is required for detailed monitoring of CNG-related cryptographic functions. If you need to monitor or troubleshoot actions related to specific cryptographic functions, review this event to see if it provides the information you need.