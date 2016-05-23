---
title: Audit Logon (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Logon, which determines whether the operating system generates audit events when a user attempts to log on to a computer.
ms.assetid: ca968d03-7d52-48c4-ba0e-2bcd2937231b
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Logon

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Logon**, which determines whether the operating system generates audit events when a user attempts to log on to a computer.

These events are related to the creation of logon sessions and occur on the computer that was accessed. For an interactive logon, events are generated on the computer that was logged on to. For a network logon, such as accessing a share, events are generated on the computer that hosts the resource that was accessed.

The following events are recorded:

-   Logon success and failure.
-   Logon attempts by using explicit credentials. This event is generated when a process attempts to log on an account by explicitly specifying that account's credentials. This most commonly occurs in batch configurations such as scheduled tasks, or when using the Runas command.
-   Security identifiers (SIDs) are filtered.

Logon events are essential to tracking user activity and detecting potential attacks.

Event volume: Low on a client computer; medium on a domain controller or network server

Default: Success for client computers; success and failure for servers

| Event ID | Event message |
| - | - |
| 4624 | An account was successfully logged on. | 
| 4625 | An account failed to log on. |
| 4648 | A logon was attempted using explicit credentials. | 
| 4675 | SIDs were filtered. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
