---
title: Audit Authorization Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Authorization Policy Change, which determines whether the operating system generates audit events when specific changes are made to the authorization policy.
ms.assetid: ca0587a2-a2b3-4300-aa5d-48b4553c3b36
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: Mir0sh
---

# Audit Authorization Policy Change

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Authorization Policy Change allows you to audit assignment and removal of user rights in user right policies, changes in security token object permission, resource attributes changes and Central Access Policy changes for file system objects.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | It is important to enable Success audit for this subcategory to be able to get information related to changes in user rights policies.<br>Enable Success audit for this subcategory also if you need to monitor changes of resource attributes or Central Access Policy applied to file system objects.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | It is important to enable Success audit for this subcategory to be able to get information related to changes in user rights policies.<br>Enable Success audit for this subcategory also if you need to monitor changes of resource attributes or Central Access Policy applied to file system objects.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | Yes             | No              | Yes              | No               | It is important to enable Success audit for this subcategory to be able to get information related to changes in user rights policies.<br>Enable Success audit for this subcategory also if you need to monitor changes of resource attributes or Central Access Policy applied to file system objects.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

**Events List:**

-   [4703](event-4703.md)(S): A user right was adjusted.

-   [4704](event-4704.md)(S): A user right was assigned.

-   [4705](event-4705.md)(S): A user right was removed.

-   [4670](event-4670.md)(S): Permissions on an object were changed.

-   [4911](event-4911.md)(S): Resource attributes of the object were changed.

-   [4913](event-4913.md)(S): Central Access Policy on the object was changed.

**Event volume**: Medium.

