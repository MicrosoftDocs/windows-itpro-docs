---
title: Audit Detailed File Share (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Detailed File Share, which allows you to audit attempts to access files and folders on a shared folder.
ms.assetid: 60310104-b820-4033-a1cb-022a34f064ae
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Detailed File Share

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Detailed File Share**, which allows you to audit attempts to access files and folders on a shared folder.

The Detailed File Share setting logs an event every time a file or folder is accessed, whereas the File Share setting only records one event for any connection established between a client computer and file share. Detailed File Share audit events include detailed information about the permissions or other criteria used to grant or deny access.
> **Note:**  There are no system access control lists (SACLs) for shared folders. If this policy setting is enabled, access to all shared files and folders on the system is audited.
 
Event volume: High on a file server or domain controller because of SYSVOL network access required by Group Policy

Default: Not configured

| Event ID | Event message |
| - | - |
| 5145 | A network share object was checked to see whether the client can be granted desired access. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
