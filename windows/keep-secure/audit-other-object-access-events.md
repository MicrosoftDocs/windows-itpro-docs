---
title: Audit Other Object Access Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Object Access Events, which determines whether the operating system generates audit events for the management of Task Scheduler jobs or COM+ objects.
ms.assetid: b9774595-595d-4199-b0c5-8dbc12b6c8b2
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Other Object Access Events

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Object Access Events**, which determines whether the operating system generates audit events for the management of Task Scheduler jobs or COM+ objects.

For scheduler jobs, the following actions are audited:

-   Job created.
-   Job deleted.
-   Job enabled.
-   Job disabled.
-   Job updated.

For COM+ objects, the following actions are audited:

-   Catalog object added.
-   Catalog object updated.
-   Catalog object deleted.

Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4671 | An application attempted to access a blocked ordinal through the TBS. | 
| 4691 | Indirect access to an object was requested. |
| 4698 | A scheduled task was created. |
| 4699 | A scheduled task was deleted. |
| 4700 | A scheduled task was enabled. |
| 4701 | A scheduled task was disabled. |
| 4702 | A scheduled task was updated. |
| 5148 | The Windows Filtering Platform has detected a DoS attack and entered a defensive mode; packets associated with this attack will be discarded. |
| 5149 | The DoS attack has subsided and normal processing is being resumed. |
| 5888 | An object in the COM+ Catalog was modified. |
| 5889 | An object was deleted from the COM+ Catalog. |
| 5890 | An object was added to the COM+ Catalog. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
