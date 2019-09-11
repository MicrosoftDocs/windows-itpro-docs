---
title: Audit File Share (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit File Share, which determines whether the operating system generates audit events when a file share is accessed.
ms.assetid: 9ea985f8-8936-4b79-abdb-35cbb7138f78
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit File Share

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit File Share allows you to audit events related to file shares: creation, deletion, modification, and access attempts. Also, it shows failed SMB SPN checks.

There are no system access control lists (SACLs) for shares; therefore, after this setting is enabled, access to all shares on the system will be audited.

Combined with File System auditing, File Share auditing enables you to track what content was accessed, the source (IP address and port) of the request, and the user account that was used for the access.

**Event volume**:

-   High on file servers.

-   High on domain controllers because of SYSVOL network access required by Group Policy.

-   Low on member servers and workstations.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                  |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing for domain controllers, because it’s important to track deletion, creation, and modification events for network shares.<br>We recommend Failure auditing to track failed SMB SPN checks and failed access attempts to network shares. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing to track deletion, creation, modification, and access attempts to network share objects.<br>We recommend Failure auditing to track failed SMB SPN checks and failed access attempts to network shares.                                |
| Workstation       | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing to track deletion, creation, modification and access attempts to network share objects.<br>We recommend Failure auditing to track failed SMB SPN checks and failed access attempts to network shares.                                 |

**Events List:**

-   [5140](event-5140.md)(S, F): A network share object was accessed.

-   [5142](event-5142.md)(S): A network share object was added.

-   [5143](event-5143.md)(S): A network share object was modified.

-   [5144](event-5144.md)(S): A network share object was deleted.

-   [5168](event-5168.md)(F): SPN check for SMB/SMB2 failed.

