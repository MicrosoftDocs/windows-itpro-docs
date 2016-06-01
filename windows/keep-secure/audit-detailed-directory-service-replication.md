---
title: Audit Detailed Directory Service Replication (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Detailed Directory Service Replication, which determines whether the operating system generates audit events that contain detailed tracking information about data that is replicated between domain controllers.
ms.assetid: 1b89c8f5-bce7-4b20-8701-42585c7ab993
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Detailed Directory Service Replication

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Detailed Directory Service Replication**, which determines whether the operating system generates audit events that contain detailed tracking information about data that is replicated between domain controllers.

This audit subcategory can be useful to diagnose replication issues.

Event volume: These events can create a very high volume of event data.

Default: Not configured

| Event ID | Event message |
| - | - |
| 4928 | An Active Directory replica source naming context was established. | 
| 4929 | An Active Directory replica source naming context was removed. | 
| 4930 | An Active Directory replica source naming context was modified. | 
| 4931 | An Active Directory replica destination naming context was modified. | 
| 4934 | Attributes of an Active Directory object were replicated. | 
| 4935 | Replication failure begins. | 
| 4936 | Replication failure ends. | 
| 4937 | A lingering object was removed from a replica. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
