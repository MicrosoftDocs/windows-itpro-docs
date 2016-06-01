---
title: Audit Filtering Platform Connection (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Filtering Platform Connection, which determines whether the operating system generates audit events when connections are allowed or blocked by the Windows Filtering Platform.
ms.assetid: d72936e9-ff01-4d18-b864-a4958815df59
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Filtering Platform Connection

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Filtering Platform Connection**, which determines whether the operating system generates audit events when connections are allowed or blocked by the Windows Filtering Platform.

Windows Filtering Platform (WFP) enables independent software vendors (ISVs) to filter and modify TCP/IP packets, monitor or authorize connections, filter Internet Protocol security (IPsec)-protected traffic, and filter remote procedure calls (RPCs).

This security policy enables you to audit the following types of actions:

-   The Windows Firewall service blocks an application from accepting incoming connections on the network.
-   The Windows Filtering Platform allows or blocks a connection.
-   The Windows Filtering Platform permits or blocks a bind to a local port.
-   The Windows Filtering Platform permits or blocks an application or service from listening for incoming connections on a port.

Event volume: High

Default: Not configured

| Event ID | Event message |
| - | - |
| 5031 | The Windows Firewall Service blocked an application from accepting incoming connections on the network. | 
| 5140 | A network share object was accessed. |
| 5150 | The Windows Filtering Platform blocked a packet. | 
| 5151 | A more restrictive Windows Filtering Platform filter has blocked a packet. | 
| 5154 | The Windows Filtering Platform has permitted an application or service to listen on a port for incoming connections. | 
| 5155 | The Windows Filtering Platform has blocked an application or service from listening on a port for incoming connections. |  
| 5156 | The Windows Filtering Platform has allowed a connection. |
| 5157 | The Windows Filtering Platform has blocked a connection. |
| 5158 | The Windows Filtering Platform has permitted a bind to a local port. | 
| 5159 | The Windows Filtering Platform has blocked a bind to a local port. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
