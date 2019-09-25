---
title: Audit Logon (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Logon, which determines whether the operating system generates audit events when a user attempts to log on to a computer.
ms.assetid: ca968d03-7d52-48c4-ba0e-2bcd2937231b
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

# Audit Logon

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Logon determines whether the operating system generates audit events when a user attempts to log on to a computer.

These events are related to the creation of logon sessions and occur on the computer that was accessed. For an interactive logon, events are generated on the computer that was logged on to. For a network logon, such as accessing a share, events are generated on the computer that hosts the resource that was accessed.

The following events are recorded:

-   Logon success and failure.

-   Logon attempts by using explicit credentials. This event is generated when a process attempts to log on an account by explicitly specifying that account's credentials. This most commonly occurs in batch configurations such as scheduled tasks, or when using the **RunAs** command.

-   Security identifiers (SIDs) are filtered.

Logon events are essential to tracking user activity and detecting potential attacks.

**Event volume**:

-   Low on a client computer.

-   Medium on a domain controllers or network servers.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                          |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | Audit Logon events, for example, will give you information about which account, when, using which Logon Type, from which machine logged on to this machine.<br>Failure events will show you failed logon attempts and the reason why these attempts failed. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | Audit Logon events, for example, will give you information about which account, when, using which Logon Type, from which machine logged on to this machine.<br>Failure events will show you failed logon attempts and the reason why these attempts failed. |
| Workstation       | Yes             | Yes             | Yes              | Yes              | Audit Logon events, for example, will give you information about which account, when, using which Logon Type, from which machine logged on to this machine.<br>Failure events will show you failed logon attempts and the reason why these attempts failed. |

**Events List:**

-   [4624](event-4624.md)(S): An account was successfully logged on.

-   [4625](event-4625.md)(F): An account failed to log on.

-   [4648](event-4648.md)(S): A logon was attempted using explicit credentials.

-   [4675](event-4675.md)(S): SIDs were filtered.

