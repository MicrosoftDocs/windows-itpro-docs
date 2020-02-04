---
title: 5035(F) The Windows Firewall Driver failed to start. (Windows 10)
description: Describes security event 5035(F) The Windows Firewall Driver failed to start.
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

# 5035(F): The Windows Firewall Driver failed to start.

**Applies to**
-   Windows 10
-   Windows Server 2016


Windows logs this event if Windows Firewall driver fails to start, or if it unexpectedly terminates. The error message indicates the cause of the failure by including an error code in the text of the message.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other System Events](audit-other-system-events.md)

***Event Schema:***

*The Windows Firewall Driver failed to start.*

*Error Code:%1*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of software or operating system issues, or a sign of malicious activity that corrupted Windows Firewall Driver. We recommend monitoring this event and investigating the reason for the condition.

