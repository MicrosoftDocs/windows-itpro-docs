---
title: 4765(S) SID History was added to an account. 
description: Describes security event 4765(S) SID History was added to an account. This event is generated when SID History is added to an account.
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

# 4765(S): SID History was added to an account.


This event generates when [SID History](/windows/win32/adschema/a-sidhistory) was added to an account.

See more information about SID History here: <https://technet.microsoft.com/library/cc779590(v=ws.10).aspx>.

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