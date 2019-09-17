---
title: Audit Audit Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Audit Policy Change, which determines whether the operating system generates audit events when changes are made to audit policy.
ms.assetid: 7153bf75-6978-4d7e-a821-59a699efb8a9
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

# Audit Audit Policy Change

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Audit Policy Change determines whether the operating system generates audit events when changes are made to audit policy.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                      |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | Almost all events in this subcategory have security relevance and should be monitored. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | Almost all events in this subcategory have security relevance and should be monitored. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | Yes             | No              | Yes              | No               | Almost all events in this subcategory have security relevance and should be monitored. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

Changes to audit policy that are audited include:

-   Changing permissions and audit settings on the audit policy object (by using “auditpol /set /sd” command).

-   Changing the system audit policy.

-   Registering and unregistering security event sources.

-   Changing per-user audit settings.

-   Changing the value of CrashOnAuditFail.

-   Changing audit settings on an object (for example, modifying the system access control list ([SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx)) for a file or registry key).

> **Note**&nbsp;&nbsp;[SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx) change auditing is performed when a SACL for an object has changed and the Policy Change category is configured. Discretionary access control list (DACL) and owner change auditing are performed when Object Access auditing is configured and the object's SACL is set for auditing of the DACL or owner change.

-   Changing anything in the Special Groups list.

The following events will be enabled with Success auditing in this subcategory:

-   4902(S): The Per-user audit policy table was created.

-   4907(S): Auditing settings on object were changed.

-   4904(S): An attempt was made to register a security event source.

-   4905(S): An attempt was made to unregister a security event source.

All other events in this subcategory will be logged regardless of the "Audit Policy Change" setting.

**Events List:**

-   [4715](event-4715.md)(S): The audit policy (SACL) on an object was changed.

-   [4719](event-4719.md)(S): System audit policy was changed.

-   [4817](event-4817.md)(S): Auditing settings on object were changed.

-   [4902](event-4902.md)(S): The Per-user audit policy table was created.

-   [4906](event-4906.md)(S): The CrashOnAuditFail value has changed.

-   [4907](event-4907.md)(S): Auditing settings on object were changed.

-   [4908](event-4908.md)(S): Special Groups Logon table modified.

-   [4912](event-4912.md)(S): Per User Audit Policy was changed.

-   [4904](event-4904.md)(S): An attempt was made to register a security event source.

-   [4905](event-4905.md)(S): An attempt was made to unregister a security event source.

