---
title: Audit Authorization Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Authorization Policy Change, which determines whether the operating system generates audit events when specific changes are made to the authorization policy.
ms.assetid: ca0587a2-a2b3-4300-aa5d-48b4553c3b36
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Authorization Policy Change

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Authorization Policy Change**, which determines whether the operating system generates audit events when specific changes are made to the authorization policy.

Authorization policy changes that can be audited include:

-   Assigning or removing user rights (privileges) such as **SeCreateTokenPrivilege**, except for the system access rights that are audited by using the [Audit Authentication Policy Change](audit-authentication-policy-change.md) subcategory.
-   Changing the Encrypting File System (EFS) policy.

Event volume: Very high

Default: Not configured

| Event ID | Event message |
| - | - |
| 4704 | A user right was assigned. | 
| 4705 | A user right was removed. | 
| 4706 | A new trust was created to a domain. | 
| 4707 | A trust to a domain was removed. | 
| 4714 | Encrypted data recovery policy was changed. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
