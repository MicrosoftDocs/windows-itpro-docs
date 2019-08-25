---
title: Audit Process Termination (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Process Termination, which determines whether the operating system generates audit events when an attempt is made to end a process.
ms.assetid: 65d88e53-14aa-48a4-812b-557cebbf9e50
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit Process Termination

**Applies to**
-   Windows 10
-   Windows Server 2016


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

