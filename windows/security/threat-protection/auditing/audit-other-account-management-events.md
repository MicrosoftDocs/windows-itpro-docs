---
title: Audit Other Account Management Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Account Management Events, which determines whether the operating system generates user account management audit events.
ms.assetid: 4ce22eeb-a96f-4cf9-a46d-6642961a31d5
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit Other Account Management Events

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Other Account Management Events determines whether the operating system generates user account management audit events.

**Event volume:** Typically Low on all types of computers.

This subcategory allows you to audit next events:

-   The password hash of a user account was accessed. This happens during an Active Directory Management Tool password migration.

-   The Password Policy Checking API was called. Password Policy Checking API allows an application to check password compliance against an application-provided account database or single account and verify that passwords meet the complexity, aging, minimum length, and history reuse requirements of a password policy.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                          |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | The only reason to enable Success auditing on domain controllers is to monitor “[4782](event-4782.md)(S): The password hash of an account was accessed.”<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.                                                             |
| Member Server     | No              | No              | No               | No               | The only event which is generated on Member Servers is “[4793](event-4793.md)(S): The Password Policy Checking API was called.”, this event is a typical information event with little to no security relevance. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | No              | No              | No               | No               | The only event which is generated on Workstations is “[4793](event-4793.md)(S): The Password Policy Checking API was called.”, this event is a typical information event with little to no security relevance. <br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory.   |

**Events List:**

-   [4782](event-4782.md)(S): The password hash of an account was accessed.

-   [4793](event-4793.md)(S): The Password Policy Checking API was called.

