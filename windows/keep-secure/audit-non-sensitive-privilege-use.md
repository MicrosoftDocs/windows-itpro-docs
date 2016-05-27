---
title: Audit Non-Sensitive Privilege Use (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Non-Sensitive Privilege Use, which determines whether the operating system generates audit events when non-sensitive privileges (user rights) are used.
ms.assetid: 8fd74783-1059-443e-aa86-566d78606627
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Non-Sensitive Privilege Use

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Non-Sensitive Privilege Use**, which determines whether the operating system generates audit events when non-sensitive privileges (user rights) are used.

The following privileges are non-sensitive:

-   **Access Credential Manager as a trusted caller**
-   **Access this computer from the network**
-   **Add workstations to domain**
-   **Adjust memory quotas for a process**
-   **Allow log on locally**
-   **Allow log on through Terminal Services**
-   **Bypass traverse checking**
-   **Change the system time**
-   **Create a page file**
-   **Create global objects**
-   **Create permanent shared objects**
-   **Create symbolic links**
-   **Deny access to this computer from the network**
-   **Deny log on as a batch job**
-   **Deny log on as a service**
-   **Deny log on locally**
-   **Deny log on through Terminal Services**
-   **Force shutdown from a remote system**
-   **Increase a process working set**
-   **Increase scheduling priority**
-   **Lock pages in memory**
-   **Log on as a batch job**
-   **Log on as a service**
-   **Modify an object label**
-   **Perform volume maintenance tasks**
-   **Profile single process**
-   **Profile system performance**
-   **Remove computer from docking station**
-   **Shut down the system**
-   **Synchronize directory service data**

If you configure this policy setting, an audit event is generated when a non-sensitive privilege is called. Success audits record successful attempts, and failure audits record unsuccessful attempts.

Event volume: Very high

Default: Not configured

| Event ID | Event message |
| - | - |
| 4672 | Special privileges assigned to new logon. | 
| 4673 | A privileged service was called. | 
| 4674 | An operation was attempted on a privileged object. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
