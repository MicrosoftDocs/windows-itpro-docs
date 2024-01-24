---
title: 4694(S, F) Protection of auditable protected data was attempted. 
description: Describes security event 4694(S, F) Protection of auditable protected data was attempted.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4694(S, F): Protection of auditable protected data was attempted.


This event generates if [DPAPI](/previous-versions/ms995355(v=msdn.10))&thinsp; [**CryptProtectData**](/windows/win32/api/dpapi/nf-dpapi-cryptprotectdata)() function was used with **CRYPTPROTECT\_AUDIT** flag (dwFlags) enabled.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit DPAPI Activity](audit-dpapi-activity.md)

***Event Schema:***

*Protection of auditable protected data was attempted.*

*Subject:*

> *Security ID:%1*
>
> *Account Name:%2*
>
> *Account Domain:%3*
>
> *Logon ID:%4*

*Protected Data:*

> *Data Description:%6*
>
> *Key Identifier:%5*
>
> *Protected Data Flags:%7*
>
> *Protection Algorithms:%8*

*Status Information:*

> *Status Code:%9*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There is no recommendation for this event in this document.

-   This event is typically an informational event and it is difficult to detect any malicious activity using this event. It’s mainly used for DPAPI troubleshooting.