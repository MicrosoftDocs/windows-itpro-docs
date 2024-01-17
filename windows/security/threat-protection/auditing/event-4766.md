---
title: 4766(F) An attempt to add SID History to an account failed. 
description: Describes security event 4766(F) An attempt to add SID History to an account failed.
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

# 4766(F): An attempt to add SID History to an account failed.


This event generates when an attempt to add [SID History](/windows/win32/adschema/a-sidhistory) to an account failed.

See more information about SID History here: <https://technet.microsoft.com/library/cc779590(v=ws.10).aspx>.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit User Account Management](audit-user-account-management.md)

***Event Schema:***

*An attempt to add SID History to an account failed.*

*Subject:*

> *Security ID:-*
>
> *Account Name:%5*
>
> *Account Domain:%6*
>
> *Logon ID:%7*

*Target Account:*

> *Security ID:%4*
>
> *Account Name:%2*
>
> *Account Domain:%3*

*Source Account:*

> *Account Name:%1*

*Additional Information:*

> *Privileges:%8*

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   There is no recommendation for this event in this document.