---
title: Audit Registry (Windows 10)
description: The Advanced Security Audit policy setting, Audit Registry, determines if audit events are generated when users attempt to access registry objects.
ms.assetid: 02bcc23b-4823-46ac-b822-67beedf56b32
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 09/06/2021
ms.technology: windows-sec
---

# Audit Registry


Audit Registry allows you to audit attempts to access registry objects. A security audit event is generated only for objects that have system access control lists ([SACL](/windows/win32/secauthz/access-control-lists)s) specified, and only if the type of access requested, such as Read, Write, or Modify, and the account making the request match the settings in the SACL.

If success auditing is enabled, an audit entry is generated each time any account successfully accesses a registry object that has a matching SACL. If failure auditing is enabled, an audit entry is generated each time any user unsuccessfully attempts to access a registry object that has a matching SACL.

**Event volume**: Low to Medium, depending on how registry SACLs are configured.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | IF              | IF               | IF               | We strongly recommend that you develop a Registry Objects Security Monitoring policy and define appropriate [SACL](/windows/win32/secauthz/access-control-lists)s for registry objects for different operating system templates and roles. Do not enable this subcategory if you have not planned how to use and analyze the collected information. It is also important to delete non-effective, excess [SACL](/windows/win32/secauthz/access-control-lists)s. Otherwise the auditing log will be overloaded with useless information.<br>Failure events can show you unsuccessful attempts to access specific registry objects.<br>Consider enabling this subcategory for critical computers first, after you develop a Registry Objects Security Monitoring policy for them. |
| Member Server     | IF              | IF              | IF               | IF               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Workstation       | IF              | IF              | IF               | IF               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

**Events List:**

-   [4663](event-4663.md)(S): An attempt was made to access an object.

-   [4656](event-4656.md)(S, F): A handle to an object was requested.

-   [4658](event-4658.md)(S): The handle to an object was closed.

-   [4660](event-4660.md)(S): An object was deleted.

-   [4657](event-4657.md)(S): A registry value was modified.

-   [5039](event-5039.md)(-): A registry key was virtualized.

-   [4670](event-4670.md)(S): Permissions on an object were changed.