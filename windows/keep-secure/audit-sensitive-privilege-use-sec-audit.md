---
title: Audit Sensitive Privilege Use (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit Sensitive Privilege Use which determines whether the operating system generates audit events when sensitive privileges (user rights) are used.
MSHAttr: PreferredLib /library
ms.assetid: 915abf50-42d2-45f6-9fd1-e7bd201b193d
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Sensitive Privilege Use


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Sensitive Privilege Use**, which determines whether the operating system generates audit events when sensitive privileges (user rights) are used.

Actions that can be audited include:

-   A privileged service is called.

-   One of the following privileges is called:

    **Act as part of the operating system**

    **Back up files and directories**

    **Create a token object**

    **Debug programs**

    **Enable computer and user accounts to be trusted for delegation**

    **Generate security audits**

    **Impersonate a client after authentication**

    **Load and unload device drivers**

    **Manage auditing and security log**

    **Modify firmware environment values**

    **Replace a process-level token**

    **Restore files and directories**

    **Take ownership of files or other objects**

If you configure this policy setting, an audit event is generated when sensitive privilege requests are made. Success audits record successful attempts, and failure audits record unsuccessful attempts.

Event volume: High

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

 

 





