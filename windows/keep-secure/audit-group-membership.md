---
title: Audit Group Membership (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Group Membership, which enables you to audit group memberships when they are enumerated on the client PC.
ms.assetid: 1CD7B014-FBD9-44B9-9274-CC5715DE58B9
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Group Membership


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Group Membership**, which enables you to audit group memberships when they are enumerated on the client PC.

This policy allows you to audit the group membership information in the user's logon token. Events in this subcategory are generated on the computer on which a logon session is created.

For an interactive logon, the security audit event is generated on the computer that the user logged on to. For a network logon, such as accessing a shared folder on the network, the security audit event is generated on the computer hosting the resource.

**Note**  You must also enable the **Audit Logon** setting under **Advanced Audit Policy Configuration\\System Audit Policies\\Logon/Logoff**.

 

Multiple events are generated if the group membership information cannot fit in a single security audit event

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
<td align="left"><p>4627</p></td>
<td align="left"><p>Group membership information.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





