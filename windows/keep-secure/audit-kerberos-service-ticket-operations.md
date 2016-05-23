---
title: Audit Kerberos Service Ticket Operations (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Kerberos Service Ticket Operations, which determines whether the operating system generates security audit events for Kerberos service ticket requests.
ms.assetid: ddc0abef-ac7f-4849-b90d-66700470ccd6
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Kerberos Service Ticket Operations

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Kerberos Service Ticket Operations**, which determines whether the operating system generates security audit events for Kerberos service ticket requests.

Events are generated every time Kerberos is used to authenticate a user who wants to access a protected network resource. Kerberos service ticket operation audit events can be used to track user activity.

Event volume:

-   High on a domain controller that is in a Key Distribution Center (KDC)
-   Low on domain members

Default: Not configured

| Event ID | Event message |
| - | - |
| 4769 | A Kerberos service ticket was requested. |  
| 4770 | A Kerberos service ticket was renewed. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
