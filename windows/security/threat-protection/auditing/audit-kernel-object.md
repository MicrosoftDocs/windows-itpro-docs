---
title: Audit Kernel Object 
description: The policy setting, Audit Kernel Object, decides if user attempts to access the system kernel (which includes mutexes and semaphores) generate audit events.
ms.assetid: 75619d8b-b1eb-445b-afc9-0f9053be97fb
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

# Audit Kernel Object


Audit Kernel Object determines whether the operating system generates audit events when users attempt to access the system kernel, which includes mutexes and semaphores.

Only kernel objects with a matching system access control list ([SACL](/windows/win32/secauthz/access-control-lists)) generate security audit events. The audits generated are usually useful only to developers.

Typically, kernel objects are given SACLs only if the AuditBaseObjects or AuditBaseDirectories auditing options are enabled.

The “[Audit: Audit the access of global system objects](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj852233(v=ws.11))” policy setting controls the default SACL of kernel objects.

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