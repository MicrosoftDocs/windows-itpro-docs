---
title: Audit Process Termination 
description: The Advanced Security Audit policy setting, Audit Process Termination, determines if audit events are generated when an attempt is made to end a process.
ms.assetid: 65d88e53-14aa-48a4-812b-557cebbf9e50
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit Process Termination


Audit Process Termination determines whether the operating system generates audit events when process has exited.

Success audits record successful attempts and Failure audits record unsuccessful attempts.

This policy setting can help you track user activity and understand how the computer is used.

**Event volume**: Low to Medium, depending on system usage.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | No              | IF               | No               | IF - This subcategory typically is not as important as [Audit Process Creation](audit-process-creation.md) subcategory. Using this subcategory you can, for example get information about for how long process was run in correlation with [4688](event-4688.md) event. <br>If you have a list of critical processes that run on some computers, you can enable this subcategory to monitor for termination of these critical processes. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | No              | No              | IF               | No               | IF - This subcategory typically is not as important as [Audit Process Creation](audit-process-creation.md) subcategory. Using this subcategory you can, for example get information about for how long process was run in correlation with [4688](event-4688.md) event. <br>If you have a list of critical processes that run on some computers, you can enable this subcategory to monitor for termination of these critical processes. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | No              | No              | IF               | No               | IF - This subcategory typically is not as important as [Audit Process Creation](audit-process-creation.md) subcategory. Using this subcategory you can, for example get information about for how long process was run in correlation with [4688](event-4688.md) event. <br>If you have a list of critical processes that run on some computers, you can enable this subcategory to monitor for termination of these critical processes. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

**Events List:**

-   [4689](event-4689.md)(S): A process has exited.

