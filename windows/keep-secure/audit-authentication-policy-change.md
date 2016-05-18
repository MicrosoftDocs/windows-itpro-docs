---
title: Audit Authentication Policy Change (Windows 10)
description: This topic for the IT professional describes this Advanced Security Audit policy setting, Audit Authentication Policy Change, which determines whether the operating system generates audit events when changes are made to authentication policy.
ms.assetid: aa9cea7a-aadf-47b7-b704-ac253b8e79be
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Authentication Policy Change
**Applies to**
-   Windows 10
This topic for the IT professional describes this Advanced Security Audit policy setting, **Audit Authentication Policy Change**, which determines whether the operating system generates audit events when changes are made to authentication policy.
Changes made to authentication policy include:
-   Creation, modification, and removal of forest and domain trusts.
-   Changes to Kerberos policy under **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy**.
    **Note**  
    The audit event is logged when the policy is applied, not when settings are modified by the administrator.
     
-   When any of the following user rights is granted to a user or group:
    -   **Access this computer from the network**
    -   **Allow logon locally**
    -   **Allow logon through Remote Desktop**
    -   **Logon as a batch job**
    -   **Logon as a service**
-   Namespace collision, such as when an added trust collides with an existing namespace name.
This setting is useful for tracking changes in domain-level and forest-level trust and privileges that are granted to user accounts or groups.
Event volume: Low
Default: Success
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
<td align="left"><p>4713</p></td>
<td align="left"><p>Kerberos policy was changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4716</p></td>
<td align="left"><p>Trusted domain information was modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4717</p></td>
<td align="left"><p>System security access was granted to an account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4718</p></td>
<td align="left"><p>System security access was removed from an account.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4739</p></td>
<td align="left"><p>Domain Policy was changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4864</p></td>
<td align="left"><p>A namespace collision was detected.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4865</p></td>
<td align="left"><p>A trusted forest information entry was added.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4866</p></td>
<td align="left"><p>A trusted forest information entry was removed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4867</p></td>
<td align="left"><p>A trusted forest information entry was modified.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
