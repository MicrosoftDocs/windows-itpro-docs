---
title: Audit File System 
description: The Advanced Security Audit policy setting, Audit File System, determines if audit events are generated when users attempt to access file system objects.
ms.assetid: 6a71f283-b8e5-41ac-b348-0b7ec6ea0b1f
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

# Audit File System


> [!NOTE]
> For more details about applicability on older operating system versions, read the article [Audit File System](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn319068(v=ws.11)).

Audit File System determines whether the operating system generates audit events when users attempt to access file system objects.

Audit events are generated only for objects that have configured system access control lists ([SACL](/windows/win32/secauthz/access-control-lists)s), and only if the type of access requested (such as Write, Read, or Modify) and the account making the request match the settings in the [SACL](/windows/win32/secauthz/access-control-lists).

If success auditing is enabled, an audit entry is generated each time any account successfully accesses a file system object that has a matching SACL. If failure auditing is enabled, an audit entry is generated each time any user unsuccessfully attempts to access a file system object that has a matching SACL.

These events are essential for tracking activity for file objects that are sensitive or valuable and require extra monitoring.

**Event volume**: Varies, depending on how file system [SACL](/windows/win32/secauthz/access-control-lists)s are configured.

No audit events are generated for the default file system [SACL](/windows/win32/secauthz/access-control-lists)s.

This subcategory allows you to audit user attempts to access file system objects, file system object deletion and permissions change operations and hard link creation actions.

Only one event, “[4658](event-4658.md): The handle to an object was closed,” depends on the [Audit Handle Manipulation](audit-handle-manipulation.md) subcategory (Success auditing must be enabled). All other events generate without any additional configuration.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | IF              | IF               | IF               | We strongly recommend that you develop a File System Security Monitoring policy and define appropriate [SACL](/windows/win32/secauthz/access-control-lists)s for file system objects for different operating system templates and roles. Do not enable this subcategory if you have not planned how to use and analyze the collected information. It is also important to delete non-effective, excess [SACL](/windows/win32/secauthz/access-control-lists)s. Otherwise the auditing log will be overloaded with useless information.<br>Failure events can show you unsuccessful attempts to access specific file system objects.<br>Consider enabling this subcategory for critical computers first, after you develop a File System Security Monitoring policy for them. |
| Member Server     | IF              | IF              | IF               | IF               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Workstation       | IF              | IF              | IF               | IF               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |

**Events List:**

-   [4656](event-4656.md)(S, F): A handle to an object was requested.

-   [4658](event-4658.md)(S): The handle to an object was closed.

-   [4660](event-4660.md)(S): An object was deleted.

-   [4663](event-4663.md)(S): An attempt was made to access an object.

-   [4664](event-4664.md)(S): An attempt was made to create a hard link.

-   [4985](event-4985.md)(S): The state of a transaction has changed.

-   [5051](event-5051.md)(-): A file was virtualized.

-   [4670](event-4670.md)(S): Permissions on an object were changed.