---
title: Audit Non Sensitive Privilege Use (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Non-Sensitive Privilege Use, which determines whether the operating system generates audit events when non-sensitive privileges (user rights) are used.
ms.assetid: 8fd74783-1059-443e-aa86-566d78606627
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit Non Sensitive Privilege Use

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Non Sensitive Privilege Use contains events that show usage of non-sensitive privileges. This is the list of non-sensitive privileges:

-   Access Credential Manager as a trusted caller

-   Add workstations to domain

-   Adjust memory quotas for a process

-   Bypass traverse checking

-   Change the system time

-   Change the time zone

-   Create a page file

-   Create global objects

-   Create permanent shared objects

-   Create symbolic links

-   Force shutdown from a remote system

-   Increase a process working set

-   Increase scheduling priority

-   Lock pages in memory

-   Modify an object label

-   Perform volume maintenance tasks

-   Profile single process

-   Profile system performance

-   Remove computer from docking station

-   Shut down the system

-   Synchronize directory service data

This subcategory also contains informational events from filesystem Transaction Manager.

If you configure this policy setting, an audit event is generated when a non-sensitive privilege is called. Success audits record successful attempts, and failure audits record unsuccessful attempts.

**Event volume**: Very High.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                            |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | IF              | No               | IF               | We do not recommend Success auditing because the volume of events is very high and typically they are not as important as events from [Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md) subcategory.<br>IF – You can enable Failure auditing if you need information about failed attempts to use non-sensitive privileges, for example, **SeShutdownPrivilege** or **SeRemoteShutdownPrivilege**. |
| Member Server     | No              | IF              | No               | IF               | We do not recommend Success auditing because the volume of events is very high and typically they are not as important as events from [Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md) subcategory.<br>IF – You can enable Failure auditing if you need information about failed attempts to use non-sensitive privileges, for example, **SeShutdownPrivilege** or **SeRemoteShutdownPrivilege**. |
| Workstation       | No              | IF              | No               | IF               | We do not recommend Success auditing because the volume of events is very high and typically they are not as important as events from [Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md) subcategory.<br>IF – You can enable Failure auditing if you need information about failed attempts to use non-sensitive privileges, for example, **SeShutdownPrivilege** or **SeRemoteShutdownPrivilege**. |

**Events List:**

-   [4673](event-4673.md)(S, F): A privileged service was called.

-   [4674](event-4674.md)(S, F): An operation was attempted on a privileged object.

-   [4985](event-4985.md)(S): The state of a transaction has changed.



