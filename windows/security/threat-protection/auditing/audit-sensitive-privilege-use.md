---
title: Audit Sensitive Privilege Use (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Sensitive Privilege Use, which determines whether the operating system generates audit events when sensitive privileges (user rights) are used.
ms.assetid: 915abf50-42d2-45f6-9fd1-e7bd201b193d
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

# Audit Sensitive Privilege Use

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Sensitive Privilege Use contains events that show the usage of sensitive privileges. This is the list of sensitive privileges:

-   Act as part of the operating system

-   Back up files and directories

-   Restore files and directories

-   Create a token object

-   Debug programs

-   Enable computer and user accounts to be trusted for delegation

-   Generate security audits

-   Impersonate a client after authentication

-   Load and unload device drivers

-   Manage auditing and security log

-   Modify firmware environment values

-   Replace a process-level token

-   Take ownership of files or other objects

The use of two privileges, “Back up files and directories” and “Restore files and directories,” generate events only if the “[Audit: Audit the use of Backup and Restore privilege](https://technet.microsoft.com/library/jj852206.aspx)” Group Policy setting is enabled on the computer or device. We do not recommend enabling this Group Policy setting because of the high number of events recorded.

This subcategory also contains informational events from the file system Transaction Manager.

If you configure this policy setting, an audit event is generated when sensitive privilege requests are made. Success audits record successful attempts, and failure audits record unsuccessful attempts.

**Event volume**: High.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                      |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | We recommend tracking Success and Failure for this subcategory of events, especially if the sensitive privileges were used by a user account. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | We recommend tracking Success and Failure for this subcategory of events, especially if the sensitive privileges were used by a user account. |
| Workstation       | Yes             | Yes             | Yes              | Yes              | We recommend tracking Success and Failure for this subcategory of events, especially if the sensitive privileges were used by a user account. |

**Events List:**

-   [4673](event-4673.md)(S, F): A privileged service was called.

-   [4674](event-4674.md)(S, F): An operation was attempted on a privileged object.

-   [4985](event-4985.md)(S): The state of a transaction has changed.

>[!NOTE] 
> The event “[4985](event-4985.md)(S): The state of a transaction has changed" from [Audit File System](audit-file-system.md) subcategory also generates in this subcategory. See description of event [4985](event-4985.md) in [Audit File System](audit-file-system.md) subcategory.


