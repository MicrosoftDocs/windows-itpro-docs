---
title: Audit Audit Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Audit Policy Change, which determines whether the operating system generates audit events when changes are made to audit policy.
ms.assetid: 7153bf75-6978-4d7e-a821-59a699efb8a9
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Audit Policy Change

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Audit Policy Change**, which determines whether the operating system generates audit events when changes are made to audit policy.

Changes to audit policy that are audited include:

-   Changing permissions and audit settings on the audit policy object (by using **auditpol /set /sd**).
-   Changing the system audit policy.
-   Registering and unregistering security event sources.
-   Changing per-user audit settings.
-   Changing the value of **CrashOnAuditFail**.
-   Changing audit settings on an object (for example, modifying the system access control list (SACL) for a file or registry key).

    > **Note:**  SACL change auditing is performed when a SACL for an object has changed and the Policy Change category is configured. Discretionary access control list (DACL) and owner change auditing are performed when Object Access auditing is configured and the object's SACL is set for auditing of the DACL or owner change.
     
-   Changing anything in the Special Groups list.

> **Important:**  Changes to the audit policy are critical security events.
 
Event volume: Low

Default: Success

| Event ID | Event message |
| - | - |
| 4715 | The audit policy (SACL) on an object was changed. | 
| 4719 | System audit policy was changed. | 
| 4817 | Auditing settings on an object were changed. <br> **Note: ** This event is logged only on computers running the supported versions of the Windows operating system. |
| 4902 | The Per-user audit policy table was created. | 
| 4904 | An attempt was made to register a security event source. | 
| 4905 | An attempt was made to unregister a security event source. | 
| 4906 | The CrashOnAuditFail value has changed. | 
| 4907 | Auditing settings on object were changed. | 
| 4908 | Special Groups Logon table modified. | 
| 4912 | Per User Audit Policy was changed. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
