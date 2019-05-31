---
title: Audit Detailed File Share (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Detailed File Share, which allows you to audit attempts to access files and folders on a shared folder.
ms.assetid: 60310104-b820-4033-a1cb-022a34f064ae
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dulcemontemayor
ms.date: 04/19/2017
---

# Audit Detailed File Share

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Detailed File Share allows you to audit attempts to access files and folders on a shared folder.

The Detailed File Share setting logs an event every time a file or folder is accessed, whereas the File Share setting only records one event for any connection established between a client and file share. Detailed File Share audit events include detailed information about the permissions or other criteria used to grant or deny access.

There are no system access control lists (SACLs) for shared folders. If this policy setting is enabled, access to all shared files and folders on the system is audited.

**Event volume**:

-   High on file servers.

-   High on domain controllers because of SYSVOL network access required by Group Policy.

-   Low on member servers and workstations.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | Yes             | No               | Yes              | Audit Success for this subcategory on domain controllers typically will lead to very high volume of events, especially for SYSVOL share.<br>We recommend monitoring Failure access attempts: the volume should not be very high. You will be able to see who was not able to get access to a file or folder on a network share on a computer.                                                                                                                                                                                                                                                                                                                                                                                              |
| Member Server     | IF              | Yes             | IF               | Yes              | IF – If a server has shared network folders which typically get many access requests (File Server, for example), the volume of events might be very high. If you really need to track all successful access events for every file or folder located on a shared folder, enable Success auditing or use the [Audit File System](audit-file-system.md) subcategory, although that subcategory excludes some information in Audit Detailed File Share, for example, the client’s IP address.<br>The volume of Failure events for member servers should not be very high (if they are not File Servers). With Failure auditing, you will be able to see who was not able to get access to a file or folder on a network share on this computer. |
| Workstation       | IF              | Yes             | IF               | Yes              | IF – If a workstation has shared network folders which typically get many access requests, the volume of events might be very high. If you really need to track all successful access events for every file or folder located on a shared folder, enable Success auditing or use Audit File System subcategory, although that subcategory excludes some information in Audit Detailed File Share, for example, the client’s IP address.<br>The volume of Failure events for workstations should not be very high. With Failure auditing, you will be able to see who was not able to get access to a file or folder on a network share on this computer.                                                                                   |

**Events List:**

-   [5145](event-5145.md)(S, F): A network share object was checked to see whether client can be granted desired access.

