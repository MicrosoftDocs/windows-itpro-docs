---
title: Audit File System (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit File System, which determines whether the operating system generates audit events when users attempt to access file system objects.
ms.assetid: 6a71f283-b8e5-41ac-b348-0b7ec6ea0b1f
ms.prod: W10
ms.mktglfcycl: deploy
ms.pagetype: security
ms.sitesec: library
author: brianlic-msft
---

# Audit File System

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit File System**, which determines whether the operating system generates audit events when users attempt to access file system objects.
Audit events are generated only for objects that have configured system access control lists (SACLs), and only if the type of access requested (such as Write, Read, or Modify) and the account making the request match the settings in the SACL.
If success auditing is enabled, an audit entry is generated each time any account successfully accesses a file system object that has a matching SACL. If failure auditing is enabled, an audit entry is generated each time any user unsuccessfully attempts to access a file system object that has a matching SACL.

These events are essential for tracking activity for file objects that are sensitive or valuable and require extra monitoring.

Event volume: Varies, depending on how file system SACLs are configured

No audit events are generated for the default file system SACLs.

Default: Not configured

| Event ID | Event message |
| - | - |
| 4664 | An attempt was made to create a hard link. | 
| 4985 | The state of a transaction has changed. |
| 5051 | A file was virtualized. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
