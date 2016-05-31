---
title: Audit Directory Service Access (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Directory Service Access, which determines whether the operating system generates audit events when an Active Directory Domain Services (AD DS) object is accessed.
ms.assetid: ba2562ba-4282-4588-b87c-a3fcb771c7d0
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Directory Service Access

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Directory Service Access**, which determines whether the operating system generates audit events when an Active Directory Domain Services (AD DS) object is accessed.

These events are similar to the Directory Service Access events in previous versions of the Windows Server operating systems.
> **Important:**  Audit events are generated only on objects with configured system access control lists (SACLs), and only when they are accessed in a manner that matches the SACL settings.
 
Event volume: High on servers running AD DS role services; none on client computers

Default: Not configured

| Event ID | Event message |
| - | - |
| 4662 | An operation was performed on an object. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
