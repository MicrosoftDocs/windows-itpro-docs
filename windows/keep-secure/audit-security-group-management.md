---
title: Audit Security Group Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting Audit Security Group Management which determines whether the operating system generates audit events when specific security group management tasks are performed.
MSHAttr: PreferredLib /library
ms.assetid: ac2ee101-557b-4c84-b9fa-4fb23331f1aa
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Security Group Management


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Security Group Management**, which determines whether the operating system generates audit events when specific security group management tasks are performed.

Tasks for security group management include:

-   A security group is created, changed, or deleted.

-   A member is added to or removed from a security group.

-   A group's type is changed.

Security groups can be used for access control permissions and also as distribution lists.

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
<td align="left"><p>4727</p></td>
<td align="left"><p>A security-enabled global group was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4728</p></td>
<td align="left"><p>A member was added to a security-enabled global group.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4729</p></td>
<td align="left"><p>A member was removed from a security-enabled global group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4730</p></td>
<td align="left"><p>A security-enabled global group was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4731</p></td>
<td align="left"><p>A security-enabled local group was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4732</p></td>
<td align="left"><p>A member was added to a security-enabled local group.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4733</p></td>
<td align="left"><p>A member was removed from a security-enabled local group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4734</p></td>
<td align="left"><p>A security-enabled local group was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4735</p></td>
<td align="left"><p>A security-enabled local group was changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4737</p></td>
<td align="left"><p>A security-enabled global group was changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4754</p></td>
<td align="left"><p>A security-enabled universal group was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4755</p></td>
<td align="left"><p>A security-enabled universal group was changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4756</p></td>
<td align="left"><p>A member was added to a security-enabled universal group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4757</p></td>
<td align="left"><p>A member was removed from a security-enabled universal group.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4758</p></td>
<td align="left"><p>A security-enabled universal group was deleted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4764</p></td>
<td align="left"><p>A group's type was changed.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





