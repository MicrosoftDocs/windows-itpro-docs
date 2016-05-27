---
title: Audit Directory Service Changes (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Directory Service Changes, which determines whether the operating system generates audit events when changes are made to objects in Active Directory Domain Services (AD DS).
ms.assetid: 9f7c0dd4-3977-47dd-a0fb-ec2f17cad05e
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Directory Service Changes

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Directory Service Changes**, which determines whether the operating system generates audit events when changes are made to objects in Active Directory Domain Services (AD DS).

The types of changes that are reported are:

-   Create
-   Delete
-   Modify
-   Move
-   Undelete

Directory Service Changes auditing, where appropriate, indicates the old and new values of the changed properties of the objects that were changed.

> **Important:**  Audit events are generated only for objects with configured system access control lists (SACLs), and only when they are accessed in a manner that matches their SACL settings. Some objects and properties do not cause audit events to be generated due to settings on the object class in the schema.
 
This subcategory only logs events on domain controllers. Changes to Active Directory objects are important events to track in order to understand the state of the network policy.

Event volume: High on domain controllers; none on client computers

Default: Not configured

| Event ID | Event message |
| - | - |
| 5136 | A directory service object was modified. | 
| 5137 | A directory service object was created. | 
| 5138 | A directory service object was undeleted. | 
| 5139 | A directory service object was moved. | 
| 5141 | A directory service object was deleted. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
