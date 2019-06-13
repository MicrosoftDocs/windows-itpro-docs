---
title: 4766(F) An attempt to add SID History to an account failed. (Windows 10)
description: Describes security event 4766(F) An attempt to add SID History to an account failed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 4766(F): An attempt to add SID History to an account failed.

**Applies to**
-   Windows 10
-   Windows Server 2016


This event generates when an attempt to add [SID History](https://msdn.microsoft.com/library/ms679833(v=vs.85).aspx) to an account failed.

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

