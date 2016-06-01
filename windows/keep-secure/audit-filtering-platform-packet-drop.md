---
title: Audit Filtering Platform Packet Drop (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Filtering Platform Packet Drop, which determines whether the operating system generates audit events when packets are dropped by the Windows Filtering Platform.
ms.assetid: 95457601-68d1-4385-af20-87916ddab906
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Filtering Platform Packet Drop

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Filtering Platform Packet Drop**, which determines whether the operating system generates audit events when packets are dropped by the Windows Filtering Platform.

Windows Filtering Platform (WFP) enables independent software vendors (ISVs) to filter and modify TCP/IP packets, monitor or authorize connections, filter Internet Protocol security (IPsec)-protected traffic, and filter remote procedure calls (RPCs).

A high rate of dropped packets may indicate that there have been attempts to gain unauthorized access to computers on your network.

Event volume: High

Default setting: Not configured

| Event ID | Event message |
| - | - |
| 5152 | The Windows Filtering Platform blocked a packet. | 
| 5153 | A more restrictive Windows Filtering Platform filter has blocked a packet. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
