---
title: Audit Special Logon (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Special Logon, which determines whether the operating system generates audit events under special sign on (or log on) circumstances.
ms.assetid: e1501bac-1d09-4593-8ebb-f311231567d3
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Special Logon

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Special Logon**, which determines whether the operating system generates audit events under special sign on (or log on) circumstances.

This security policy setting determines whether the operating system generates audit events when:

-   A special logon is used. A special logon is a logon that has administrator-equivalent privileges and can be used to elevate a process to a higher level.
-   A member of a special group logs on. Special Groups is a Windows feature that enables the administrator to find out when a member of a certain group has logged on. The administrator can set a list of group security identifiers (SIDs) in the registry. If any of these SIDs is added to a token during logon and this auditing subcategory is enabled, a security event is logged. For more information about this feature, see [article 947223](http://go.microsoft.com/fwlink/p/?linkid=120183) in the Microsoft Knowledge Base (http://go.microsoft.com/fwlink/p/?linkid=120183).

Users holding special privileges can potentially make changes to the system. We recommend that you track their activity.

Event volume: Low

Default: Success

| Event ID | Event message |
| - | - |
| 4964 | Special groups have been assigned to a new logon.| 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
