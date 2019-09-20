---
title: Audit Other Logon/Logoff Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Logon/Logoff Events, which determines whether Windows generates audit events for other logon or logoff events.
ms.assetid: 76d987cd-1917-4907-a739-dd642609a458
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

# Audit Other Logon/Logoff Events

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Other Logon/Logoff Events determines whether Windows generates audit events for other logon or logoff events.

These other logon or logoff events include:

-   A Remote Desktop session connects or disconnects.

-   A workstation is locked or unlocked.

-   A screen saver is invoked or dismissed.

-   A replay attack is detected. This event indicates that a Kerberos request was received twice with identical information. This condition could also be caused by network misconfiguration.

-   A user is granted access to a wireless network. It can be either a user account or the computer account.

-   A user is granted access to a wired 802.1x network. It can be either a user account or the computer account.

Logon events are essential to understanding user activity and detecting potential attacks.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|-------------------|-----------------|-----------------|------------------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing, to track possible Kerberos replay attacks, terminal session connect and disconnect actions, network authentication events, and some other events. Volume of these events is typically very low.<br>Failure events will show you when requested credentials [CredSSP](https://msdn.microsoft.com/library/cc226764.aspx) delegation was disallowed by policy. The volume of these events is very low—typically you will not get any of these events. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing, to track possible terminal session connect and disconnect actions, network authentication events, and some other events. Volume of these events is typically very low.<br>Failure events will show you when requested credentials [CredSSP](https://msdn.microsoft.com/library/cc226764.aspx) delegation was disallowed by policy. The volume of these events is very low—typically you will not get any of these events.                          |
| Workstation       | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing, to track possible terminal session connect and disconnect actions, network authentication events, and some other events. Volume of these events is typically very low.<br>Failure events will show you when requested credentials [CredSSP](https://msdn.microsoft.com/library/cc226764.aspx) delegation was disallowed by policy. The volume of these events is very low—typically you will not get any of these events.                          |

**Events List:**

-   [4649](event-4649.md)(S): A replay attack was detected.

-   [4778](event-4778.md)(S): A session was reconnected to a Window Station.

-   [4779](event-4779.md)(S): A session was disconnected from a Window Station.

-   [4800](event-4800.md)(S): The workstation was locked.

-   [4801](event-4801.md)(S): The workstation was unlocked.

-   [4802](event-4802.md)(S): The screen saver was invoked.

-   [4803](event-4803.md)(S): The screen saver was dismissed.

-   [5378](event-5378.md)(F): The requested credentials delegation was disallowed by policy.

-   [5632](event-5632.md)(S): A request was made to authenticate to a wireless network.

-   [5633](event-5633.md)(S): A request was made to authenticate to a wired network.

