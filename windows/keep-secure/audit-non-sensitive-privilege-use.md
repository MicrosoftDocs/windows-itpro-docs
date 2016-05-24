---
title: Audit Non-Sensitive Privilege Use (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Non-Sensitive Privilege Use, which determines whether the operating system generates audit events when non-sensitive privileges (user rights) are used.
ms.assetid: 8fd74783-1059-443e-aa86-566d78606627
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
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
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Event message</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4672</p></td>
<td align="left"><p>Special privileges assigned to new logon.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4673</p></td>
<td align="left"><p>A privileged service was called.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4674</p></td>
<td align="left"><p>An operation was attempted on a privileged object.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
