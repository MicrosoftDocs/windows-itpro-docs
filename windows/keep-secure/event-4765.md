---
title: 4765(S) SID History was added to an account. (Windows 10)
description: Describes security event 4765(S) SID History was added to an account.
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: Mir0sh
---

# 4765(S): SID History was added to an account.

**Applies to**
-   Windows 10
-   Windows Server 2016


This event generates when [SID History](https://msdn.microsoft.com/en-us/library/ms679833(v=vs.85).aspx) was added to an account.

See more information about SID History here: <https://technet.microsoft.com/en-us/library/cc779590(v=ws.10).aspx>.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit User Account Management](audit-user-account-management.md)

***Event Schema:***

*SID History was added to an account.*

*Subject:*

> *Security ID:%6*
>
> *Account Name:%7*
>
> *Account Domain:%8*
>
> *Logon ID:%9*

*Target Account:*

> *Security ID:%5*
>
> *Account Name:%3*
>
> *Account Domain:%4*

*Source Account:*

> *Security ID:%2*
>
> *Account Name:%1*

*Additional Information:*

> *Privileges:%10*
>
> *SID List:%11*

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There is no recommendation for this event in this document.

