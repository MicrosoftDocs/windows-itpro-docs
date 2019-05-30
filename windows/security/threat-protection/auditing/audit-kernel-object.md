---
title: Audit Kernel Object (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Kernel Object, which determines whether the operating system generates audit events when users attempt to access the system kernel, which includes mutexes and semaphores.
ms.assetid: 75619d8b-b1eb-445b-afc9-0f9053be97fb
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dulcemontemayor
ms.date: 04/19/2017
---

# Audit Kernel Object

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Kernel Object determines whether the operating system generates audit events when users attempt to access the system kernel, which includes mutexes and semaphores.

Only kernel objects with a matching system access control list ([SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx)) generate security audit events. The audits generated are usually useful only to developers.

Typically, kernel objects are given SACLs only if the AuditBaseObjects or AuditBaseDirectories auditing options are enabled.

The “[Audit: Audit the access of global system objects](https://technet.microsoft.com/library/jj852233.aspx)” policy setting controls the default SACL of kernel objects.

**Event volume**: High.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                               |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | No              | No               | No               | Typically Kernel object auditing events have little to no security relevance and are hard to parse or analyze. Also, the volume of these events is typically very high. <br>There is no recommendation to enable this subcategory, unless you know exactly what you need to monitor at the Kernel objects level. |
| Member Server     | No              | No              | No               | No               | Typically Kernel object auditing events have little to no security relevance and are hard to parse or analyze. Also, the volume of these events is typically very high. <br>There is no recommendation to enable this subcategory, unless you know exactly what you need to monitor at the Kernel objects level. |
| Workstation       | No              | No              | No               | No               | Typically Kernel object auditing events have little to no security relevance and are hard to parse or analyze. Also, the volume of these events is typically very high. <br>There is no recommendation to enable this subcategory, unless you know exactly what you need to monitor at the Kernel objects level. |

**Events List:**

-   [4656](event-4656.md)(S, F): A handle to an object was requested.

-   [4658](event-4658.md)(S): The handle to an object was closed.

-   [4660](event-4660.md)(S): An object was deleted.

-   [4663](event-4663.md)(S): An attempt was made to access an object.



