---
title: Audit Process Creation (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Process Creation, which determines whether the operating system generates audit events when a process is created (starts).
ms.assetid: 67e39fcd-ded6-45e8-b1b6-d411e4e93019
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Process Creation

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Process Creation**, which determines whether the operating system generates audit events when a process is created (starts).

These audit events can help you track user activity and understand how a computer is being used. Information includes the name of the program or the user that created the process.

Event volume: Low to medium, depending on system usage

Default: Not configured

| Event ID | Event message |
| - | - |
| 4688 | A new process has been created.| 
| 4696 | A primary token was assigned to a process.| 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
