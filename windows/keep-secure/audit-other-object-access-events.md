---
title: Audit Other Object Access Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit Other Object Access Events which determines whether the operating system generates audit events for the management of Task Scheduler jobs or COM+ objects.
MSHAttr: PreferredLib /library
ms.assetid: b9774595-595d-4199-b0c5-8dbc12b6c8b2
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Other Object Access Events


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Object Access Events**, which determines whether the operating system generates audit events for the management of Task Scheduler jobs or COM+ objects.

For scheduler jobs, the following actions are audited:

-   Job created.

-   Job deleted.

-   Job enabled.

-   Job disabled.

-   Job updated.

For COM+ objects, the following actions are audited:

-   Catalog object added.

-   Catalog object updated.

-   Catalog object deleted.

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
<td align="left"><p>4671</p></td>
<td align="left"><p>An application attempted to access a blocked ordinal through the TBS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4691</p></td>
<td align="left"><p>Indirect access to an object was requested.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4698</p></td>
<td align="left"><p>A scheduled task was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4699</p></td>
<td align="left"><p>A scheduled task was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4700</p></td>
<td align="left"><p>A scheduled task was enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4701</p></td>
<td align="left"><p>A scheduled task was disabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4702</p></td>
<td align="left"><p>A scheduled task was updated.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5148</p></td>
<td align="left"><p>The Windows Filtering Platform has detected a DoS attack and entered a defensive mode; packets associated with this attack will be discarded.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5149</p></td>
<td align="left"><p>The DoS attack has subsided and normal processing is being resumed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5888</p></td>
<td align="left"><p>An object in the COM+ Catalog was modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5889</p></td>
<td align="left"><p>An object was deleted from the COM+ Catalog.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5890</p></td>
<td align="left"><p>An object was added to the COM+ Catalog.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





