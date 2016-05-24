---
title: Audit Security Group Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Security Group Management, which determines whether the operating system generates audit events when specific security group management tasks are performed.
ms.assetid: ac2ee101-557b-4c84-b9fa-4fb23331f1aa
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Security Group Management

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Security Group Management**, which determines whether the operating system generates audit events when specific security group management tasks are performed.

Tasks for security group management include:

-   A security group is created, changed, or deleted.
-   A member is added to or removed from a security group.
-   A group's type is changed.
Security groups can be used for access control permissions and also as distribution lists.

Event volume: Low

Default: Success

| Event ID | Event message |
| - | - |
| 4727 | A security-enabled global group was created. | 
| 4728 | A member was added to a security-enabled global group. | 
| 4729 | A member was removed from a security-enabled global group. | 
| 4730 | A security-enabled global group was deleted. |
| 4731 | A security-enabled local group was created. |
| 4732 | A member was added to a security-enabled local group.| 
| 4733 | A member was removed from a security-enabled local group.| 
| 4734 | A security-enabled local group was deleted. |
| 4735 | A security-enabled local group was changed. |
| 4737 | A security-enabled global group was changed. |
| 4754 | A security-enabled universal group was created.| 
| 4755 | A security-enabled universal group was changed. |
| 4756 | A member was added to a security-enabled universal group.| 
| 4757 | A member was removed from a security-enabled universal group.| 
| 4758 | A security-enabled universal group was deleted. |
| 4764 | A group's type was changed. |

## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
