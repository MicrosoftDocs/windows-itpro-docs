---
title: 5037(F) The Windows Firewall Driver detected critical runtime error. Terminating. (Windows 10)
description: Describes security event 5037(F) The Windows Firewall Driver detected critical runtime error. Terminating.
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
---

# 5037(F): The Windows Firewall Driver detected critical runtime error. Terminating.


Windows logs this event if Windows Firewall driver fails to start, or if it unexpectedly terminates. The error message indicates the cause of the failure by including an error code in the text of the message.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit Other System Events](audit-other-system-events.md)

***Event Schema:***

*The Windows Firewall Driver detected a critical runtime error, terminating.*

*Error Code:%1*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of software or operating system issues, or a sign of malicious activity that corrupted Windows Firewall Driver. We recommend monitoring this event and investigating the reason for the condition.

