---
title: Audit Application Group Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Application Group Management, which determines whether the operating system generates audit events when application group management tasks are performed.
ms.assetid: 1bcaa41e-5027-4a86-96b7-f04eaf1c0606
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Application Group Management

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Application Group Management**, which determines whether the operating system generates audit events when application group management tasks are performed.

Application group management tasks include:

-   An application group is created, changed, or deleted.
-   A member is added to or removed from an application group.

Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4783 | A basic application group was created. |
| 4784 | A basic application group was changed. |
| 4785 | A member was added to a basic application group. |
| 4786 | A member was removed from a basic application group. |
| 4787 | A non-member was added to a basic application group. |
| 4788 | A non-member was removed from a basic application group. |
| 4789 | A basic application group was deleted. |
| 4790 | An LDAP query group was created. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
