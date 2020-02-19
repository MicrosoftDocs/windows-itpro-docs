---
title: 4675(S) SIDs were filtered. (Windows 10)
description: Describes security event 4675(S) SIDs were filtered.
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

# 4675(S): SIDs were filtered.

**Applies to**
-   Windows 10
-   Windows Server 2016


This event generates when SIDs were filtered for specific Active Directory trust.

See more information about SID filtering here: <https://technet.microsoft.com/library/cc772633(v=ws.10).aspx>.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Logon](audit-logon.md)

***Event Schema:***

*SIDs were filtered.*

*Target Account:*

> *Security ID:%1*
>
> *Account Name:%2*
>
> *Account Domain:%3*

*Trust Information:*

> *Trust Direction:%4*
>
> *Trust Attributes:%5*
>
> *Trust Type:%6*
>
> *TDO Domain SID:%7*
>
> *Filtered SIDs:%8*

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   If you need to monitor all SID filtering events/operations for specific or all Active Directory trusts, you can use this event to get all required information.

