---
title: Audit Security State Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Security State Change, which determines whether Windows generates audit events for changes in the security state of a system.
ms.assetid: decb3218-a67d-4efa-afc0-337c79a89a2d
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Security State Change

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Security State Change**, which determines whether Windows generates audit events for changes in the security state of a system.

Changes in the security state of the operating system include:

-   System startup and shutdown.
-   Change of system time.
-   System recovery from **CrashOnAuditFail**. This event is logged after a system reboots following **CrashOnAuditFail**.

    > **Important:**  Some auditable activity may not be recorded when a system restarts due to **CrashOnAuditFail**.
     
System startup and shutdown events are important for understanding system usage.

Event volume: Low

Default: Success

| Event ID | Event message summary | Minimum requirement |
| - | - | - |
| 4608 | Windows is starting up. | Windows Vista, Windows Server 2008 | 
| 4609 | Windows is shutting down. | Windows Vista, Windows Server 2008 |
| 4616 | The system time was changed.| Windows Vista, Windows Server 2008 |
| 4621 | Administrator recovered system from CrashOnAuditFail. Users who are not administrators will now be allowed to log on. Some auditable activity might not have been recorded.| Windows Vista, Windows Server 2008 | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
