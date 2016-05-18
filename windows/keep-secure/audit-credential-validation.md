---
title: Audit Credential Validation (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Credential Validation, which determines whether the operating system generates audit events on credentials that are submitted for a user account logon request.
ms.assetid: 6654b33a-922e-4a43-8223-ec5086dfc926
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Credential Validation
**Applies to**
-   Windows 10
-   Windows 10 Mobile
This topic for the IT professional describes the advanced security audit policy setting, **Audit Credential Validation**, which determines whether the operating system generates audit events on credentials that are submitted for a user account logon request.
These events occur on the computer that is authoritative for the credentials as follows:
-   For domain accounts, the domain controller is authoritative.
-   For local accounts, the local computer is authoritative.
Event volume: High on domain controllers
Because domain accounts are used much more frequently than local accounts in enterprise environments, most of the Account Logon events in a domain environment occur on the domain controllers that are authoritative for the domain accounts. However, these events can occur on any computer, and they may occur in conjunction with or on separate computers from Logon and Logoff events.
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
<td align="left"><p>4774</p></td>
<td align="left"><p>An account was mapped for logon.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>4775</p></td>
<td align="left"><p>An account could not be mapped for logon.</p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>4776</p></td>
<td align="left"><p>The domain controller attempted to validate the credentials for an account.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>4777</p></td>
<td align="left"><p>The domain controller failed to validate the credentials for an account.</p>
<p></p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
