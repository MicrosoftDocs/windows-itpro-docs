---
title: 4694(S, F) Protection of auditable protected data was attempted. (Windows 10)
description: Describes security event 4694(S, F) Protection of auditable protected data was attempted.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4694(S, F): Protection of auditable protected data was attempted.

**Applies to**
-   Windows 10
-   Windows Server 2016


This event generates if [DPAPI](https://msdn.microsoft.com/library/ms995355.aspx)&thinsp; [**CryptProtectData**](https://msdn.microsoft.com/library/windows/desktop/aa380261(v=vs.85).aspx)() function was used with **CRYPTPROTECT\_AUDIT** flag (dwFlags) enabled.

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

