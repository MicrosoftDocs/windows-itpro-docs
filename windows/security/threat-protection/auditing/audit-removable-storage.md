---
title: Audit Removable Storage (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Removable Storage, which determines when there is a read or a write to a removable drive.
ms.assetid: 1746F7B3-8B41-4661-87D8-12F734AFFB26
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

# Audit Removable Storage

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Removable Storage allows you to audit user attempts to access file system objects on a removable storage device. A security audit event is generated for all objects and all types of access requested, with no dependency on object’s [SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx).

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|-------------------|-----------------|-----------------|------------------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | This subcategory will help identify when and which files or folders were accessed or modified on removable devices.<br>It is often useful to track actions with removable storage devices and the files or folders on them, because malicious software very often uses removable devices as a method to get into the system. At the same time, you will be able to track which files were written or executed from a removable storage device.<br>You can track, for example, actions with files or folders on USB flash drives or sticks that were inserted into domain controllers or high value servers, which is typically not allowed. <br>We recommend Failure auditing to track failed access attempts. |
| Member Server     | Yes             | Yes             | Yes              | Yes              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Workstation       | Yes             | Yes             | Yes              | Yes              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |

**Events List:**

-   [4656](event-4656.md)(S, F): A handle to an object was requested.

-   [4658](event-4658.md)(S): The handle to an object was closed.

-   [4663](event-4663.md)(S): An attempt was made to access an object.



