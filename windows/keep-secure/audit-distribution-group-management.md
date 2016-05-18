---
title: Audit Distribution Group Management (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Distribution Group Management, which determines whether the operating system generates audit events for specific distribution-group management tasks.
ms.assetid: d46693a4-5887-4a58-85db-2f6cba224a66
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Distribution Group Management
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Distribution Group Management**, which determines whether the operating system generates audit events for specific distribution-group management tasks.
Tasks for distribution-group management that can be audited include:
-   A distribution group is created, changed, or deleted.
-   A member is added to or removed from a distribution group.
This subcategory to which this policy belongs is logged only on domain controllers.
**Note**  
Distribution groups cannot be used to manage access control permissions.
 
Event volume: Low
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
<td align="left"><p>4744</p></td>
<td align="left"><p>A security-disabled local group was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4745</p></td>
<td align="left"><p>A security-disabled local group was changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4746</p></td>
<td align="left"><p>A member was added to a security-disabled local group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4747</p></td>
<td align="left"><p>A member was removed from a security-disabled local group.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4748</p></td>
<td align="left"><p>A security-disabled local group was deleted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4749</p></td>
<td align="left"><p>A security-disabled global group was created.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4750</p></td>
<td align="left"><p>A security-disabled global group was changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4751</p></td>
<td align="left"><p>A member was added to a security-disabled global group.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4752</p></td>
<td align="left"><p>A member was removed from a security-disabled global group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4753</p></td>
<td align="left"><p>A security-disabled global group was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4759</p></td>
<td align="left"><p>A security-disabled universal group was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4760</p></td>
<td align="left"><p>A security-disabled universal group was changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4761</p></td>
<td align="left"><p>A member was added to a security-disabled universal group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4762</p></td>
<td align="left"><p>A member was removed from a security-disabled universal group.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
