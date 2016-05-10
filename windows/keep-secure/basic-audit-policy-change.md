---
title: Audit policy change (Windows 10)
description: Determines whether to audit every incident of a change to user rights assignment policies, audit policies, or trust policies.
ms.assetid: 1025A648-6B22-4C85-9F47-FE0897F1FA31
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit policy change
**Applies to**
-   Windows 10
Determines whether to audit every incident of a change to user rights assignment policies, audit policies, or trust policies.
If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a change to user rights assignment policies, audit policies, or trust policies is successful. Failure audits generate an audit entry when a change to user rights assignment policies, audit policies, or trust policies fails.
To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the **Define these policy settings** check box and clear the **Success** and **Failure** check boxes.
**Default:**
-   Success on domain controllers.
-   No auditing on member servers.
## Configure this audit setting
You can configure this security setting under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy change events</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">608</td>
<td align="left">A user right was assigned.</td>
</tr>
<tr class="even">
<td align="left">609</td>
<td align="left">A user right was removed.</td>
</tr>
<tr class="odd">
<td align="left">610</td>
<td align="left">A trust relationship with another domain was created.</td>
</tr>
<tr class="even">
<td align="left">611</td>
<td align="left">A trust relationship with another domain was removed.</td>
</tr>
<tr class="odd">
<td align="left">612</td>
<td align="left">An audit policy was changed.</td>
</tr>
<tr class="even">
<td align="left">613</td>
<td align="left">An Internet Protocol security (IPSec) policy agent started.</td>
</tr>
<tr class="odd">
<td align="left">614</td>
<td align="left">An IPSec policy agent was disabled.</td>
</tr>
<tr class="even">
<td align="left">615</td>
<td align="left">An IPSec policy agent changed.</td>
</tr>
<tr class="odd">
<td align="left">616</td>
<td align="left">An IPSec policy agent encountered a potentially serious failure.</td>
</tr>
<tr class="even">
<td align="left">617</td>
<td align="left">A Kerberos policy changed.</td>
</tr>
<tr class="odd">
<td align="left">618</td>
<td align="left">Encrypted Data Recovery policy changed.</td>
</tr>
<tr class="even">
<td align="left">620</td>
<td align="left">A trust relationship with another domain was modified.</td>
</tr>
<tr class="odd">
<td align="left">621</td>
<td align="left">System access was granted to an account.</td>
</tr>
<tr class="even">
<td align="left">622</td>
<td align="left">System access was removed from an account.</td>
</tr>
<tr class="odd">
<td align="left">623</td>
<td align="left">Per user auditing policy was set for a user.</td>
</tr>
<tr class="even">
<td align="left">625</td>
<td align="left">Per user audit policy was refreshed.</td>
</tr>
<tr class="odd">
<td align="left">768</td>
<td align="left">A collision was detected between a namespace element in one forest and a namespace element in another forest.
<div class="alert">
<strong>Note</strong>  When a namespace element in one forest overlaps a namespace element in another forest, it can lead to ambiguity in resolving a name belonging to one of the namespace elements. This overlap is also called a collision. Not all parameters are valid for each entry type. For example, fields such as DNS name, NetBIOS name, and SID are not valid for an entry of type 'TopLevelName'.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">769</td>
<td align="left">Trusted forest information was added.
<div class="alert">
<strong>Note</strong>  This event message is generated when forest trust information is updated and one or more entries are added. One event message is generated per added, deleted, or modified entry. If multiple entries are added, deleted, or modified in a single update of the forest trust information, all the generated event messages have a single unique identifier called an operation ID. This allows you to determine that the multiple generated event messages are the result of a single operation. Not all parameters are valid for each entry type. For example, parameters such as DNS name, NetBIOS name and SID are not valid for an entry of type &quot;TopLevelName&quot;.
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left">770</td>
<td align="left">Trusted forest information was deleted.
<div class="alert">
<strong>Note</strong>  This event message is generated when forest trust information is updated and one or more entries are added. One event message is generated per added, deleted, or modified entry. If multiple entries are added, deleted, or modified in a single update of the forest trust information, all the generated event messages have a single unique identifier called an operation ID. This allows you to determine that the multiple generated event messages are the result of a single operation. Not all parameters are valid for each entry type. For example, parameters such as DNS name, NetBIOS name and SID are not valid for an entry of type &quot;TopLevelName&quot;.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">771</td>
<td align="left">Trusted forest information was modified.
<div class="alert">
<strong>Note</strong>  This event message is generated when forest trust information is updated and one or more entries are added. One event message is generated per added, deleted, or modified entry. If multiple entries are added, deleted, or modified in a single update of the forest trust information, all the generated event messages have a single unique identifier called an operation ID. This allows you to determine that the multiple generated event messages are the result of a single operation. Not all parameters are valid for each entry type. For example, parameters such as DNS name, NetBIOS name and SID are not valid for an entry of type &quot;TopLevelName&quot;.
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left">805</td>
<td align="left">The event log service read the security log configuration for a session.</td>
</tr>
</tbody>
</table>
 
## Related topics
[Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
