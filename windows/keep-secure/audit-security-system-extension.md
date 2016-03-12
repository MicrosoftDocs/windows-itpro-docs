---
title: Audit Security System Extension (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit Security System Extension which determines whether the operating system generates audit events related to security system extensions.
MSHAttr: PreferredLib /library
ms.assetid: 9f3c6bde-42b2-4a0a-b353-ed3106ebc005
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Security System Extension


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Security System Extension**, which determines whether the operating system generates audit events related to security system extensions.

Changes to security system extensions in the operating system include the following activities:

-   A security extension code is loaded (such as an authentication, notification, or security package). A security extension code registers with the Local Security Authority and will be used and trusted to authenticate logon attempts, submit logon requests, and be notified of any account or password changes. Examples of this extension code are Security Support Providers, such as Kerberos and NTLM.

-   A service is installed. An audit log is generated when a service is registered with the Service Control Manager. The audit log contains information about the service name, binary, type, start type, and service account.

**Important**  
Attempts to install or load security system extensions or services are critical system events that could indicate a security breach.

 

Event volume: Low

These events are expected to appear more on a domain controller than on client computers or member servers.

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
<td align="left"><p>4610</p></td>
<td align="left"><p>An authentication package has been loaded by the Local Security Authority.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4611</p></td>
<td align="left"><p>A trusted logon process has been registered with the Local Security Authority.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4614</p></td>
<td align="left"><p>A notification package has been loaded by the Security Account Manager.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4622</p></td>
<td align="left"><p>A security package has been loaded by the Local Security Authority.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4697</p></td>
<td align="left"><p>A service was installed in the system.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





