---
title: Audit Distribution Group Management (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Distribution Group Management, which determines whether the operating system generates audit events for specific distribution-group management tasks.
ms.assetid: d46693a4-5887-4a58-85db-2f6cba224a66
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Distribution Group Management

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Distribution Group Management**, which determines whether the operating system generates audit events for specific distribution-group management tasks.

Tasks for distribution-group management that can be audited include:

-   A distribution group is created, changed, or deleted.
-   A member is added to or removed from a distribution group.

This subcategory to which this policy belongs is logged only on domain controllers.
> **Note:**  Distribution groups cannot be used to manage access control permissions.
 
Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4744 | A security-disabled local group was created. | 
| 4745 | A security-disabled local group was changed.  |
| 4746 | A member was added to a security-disabled local group. | 
| 4747 | A member was removed from a security-disabled local group. | 
| 4748 | A security-disabled local group was deleted. | 
| 4749 | A security-disabled global group was created. |
| 4750 | A security-disabled global group was changed. |
| 4751 | A member was added to a security-disabled global group. | 
| 4752 | A member was removed from a security-disabled global group. | 
| 4753 | A security-disabled global group was deleted. |
| 4759 | A security-disabled universal group was created. | 
| 4760 | A security-disabled universal group was changed.  |
| 4761 | A member was added to a security-disabled universal group. | 
| 4762 | A member was removed from a security-disabled universal group. | 

 ## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
