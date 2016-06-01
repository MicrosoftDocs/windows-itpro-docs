---
title: Audit Other Logon/Logoff Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Logon/Logoff Events, which determines whether Windows generates audit events for other logon or logoff events.
ms.assetid: 76d987cd-1917-4907-a739-dd642609a458
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Other Logon/Logoff Events

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Logon/Logoff Events**, which determines whether Windows generates audit events for other logon or logoff events.

These other logon or logoff events include:

-   A Remote Desktop session connects or disconnects.
-   A workstation is locked or unlocked.
-   A screen saver is invoked or dismissed.
-   A replay attack is detected. This event indicates that a Kerberos request was received twice with identical information. This condition could also be caused by network misconfiguration.
-   A user is granted access to a wireless network. It can either be a user account or the computer account.
-   A user is granted access to a wired 802.1x network. It can either be a user account or the computer account.

Logon events are essential to understanding user activity and detecting potential attacks.

Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4649 | A replay attack was detected. | 
| 4778 | A session was reconnected to a Window Station. | 
| 4779 | A session was disconnected from a Window Station. | 
| 4800 | The workstation was locked. |
| 4801 | The workstation was unlocked. | 
| 4802 | The screen saver was invoked. |
| 4803 | The screen saver was dismissed. | 
| 5378 | The requested credentials delegation was disallowed by policy. | 
| 5632 | A request was made to authenticate to a wireless network. |
| 5633 | A request was made to authenticate to a wired network. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
