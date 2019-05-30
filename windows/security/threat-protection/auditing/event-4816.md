---
title: 4816(S) RPC detected an integrity violation while decrypting an incoming message. (Windows 10)
description: Describes security event 4816(S) RPC detected an integrity violation while decrypting an incoming message.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4816(S): RPC detected an integrity violation while decrypting an incoming message.

**Applies to**
-   Windows 10
-   Windows Server 2016


This message generates if RPC detected an integrity violation while decrypting an incoming message.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*RPC detected an integrity violation while decrypting an incoming message.*

*Peer Name: %1*

*Protocol Sequence: %2*

*Security Error: %3*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   We recommend monitoring for this event, especially on high value assets or computers, because it can be a sign of a software or configuration issue, or a malicious action.

