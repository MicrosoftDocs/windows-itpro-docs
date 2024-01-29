---
title: 4612(S) Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits. 
description: Describes security event 4612(S) Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits.
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

# 4612(S): Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits.


This event is generated when audit queues are filled and events must be discarded. This most commonly occurs when security events are being generated faster than they are being written to disk.

This event doesn't generate when the event log service is stopped or event log is full and events retention is disabled.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits.*

*Number of audit messages discarded: %1*

*This event is generated when audit queues are filled and events must be discarded. This most commonly occurs when security events are being generated faster than they are being written to disk, or when the auditing system loses connectivity to the event log, such as when the event log service is stopped.*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of hardware issues or lack of system resources (for example, RAM). We recommend monitoring this event and investigating the reason for the condition.

