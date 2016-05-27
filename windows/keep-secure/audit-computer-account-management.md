---
title: Audit Computer Account Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Computer Account Management, which determines whether the operating system generates audit events when a computer account is created, changed, or deleted.
ms.assetid: 6c406693-57bf-4411-bb6c-ff83ce548991
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Computer Account Management

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Computer Account Management**, which determines whether the operating system generates audit events when a computer account is created, changed, or deleted.

This policy setting is useful for tracking account-related changes to computers that are members of a domain.

Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4741 | A computer account was created. | 
| 4742 | A computer account was changed. | 
| 4743 | A computer account was deleted. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
