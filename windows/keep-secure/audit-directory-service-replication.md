---
title: Audit Directory Service Replication (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Directory Service Replication, which determines whether the operating system generates audit events when replication between two domain controllers begins and ends.
ms.assetid: b95d296c-7993-4e8d-8064-a8bbe284bd56
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Directory Service Replication

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Directory Service Replication**, which determines whether the operating system generates audit events when replication between two domain controllers begins and ends.

Event volume: Medium on domain controllers; none on client computers

Default: Not configured

| Event ID | Event Message |
| - | - |
| 4932 | Synchronization of a replica of an Active Directory naming context has begun. |
| 4933 | Synchronization of a replica of an Active Directory naming context has ended. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
