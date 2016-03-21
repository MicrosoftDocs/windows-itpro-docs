---
title: Audit Audit Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Audit Policy Change, which determines whether the operating system generates audit events when changes are made to audit policy.
ms.assetid: 7153bf75-6978-4d7e-a821-59a699efb8a9
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Audit Policy Change


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Audit Policy Change**, which determines whether the operating system generates audit events when changes are made to audit policy.

Changes to audit policy that are audited include:

-   Changing permissions and audit settings on the audit policy object (by using **auditpol /set /sd**).

-   Changing the system audit policy.

-   Registering and unregistering security event sources.

-   Changing per-user audit settings.

-   Changing the value of **CrashOnAuditFail**.

-   Changing audit settings on an object (for example, modifying the system access control list (SACL) for a file or registry key).

    **Note**  
    SACL change auditing is performed when a SACL for an object has changed and the Policy Change category is configured. Discretionary access control list (DACL) and owner change auditing are performed when Object Access auditing is configured and the object's SACL is set for auditing of the DACL or owner change.

     

-   Changing anything in the Special Groups list.

**Important**  
Changes to the audit policy are critical security events.

 

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
<td align="left"><p>4715</p></td>
<td align="left"><p>The audit policy (SACL) on an object was changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4719</p></td>
<td align="left"><p>System audit policy was changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4817</p></td>
<td align="left"><p>Auditing settings on an object were changed.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event is logged only on computers running the supported versions of the Windows operating system.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>4902</p></td>
<td align="left"><p>The Per-user audit policy table was created.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4904</p></td>
<td align="left"><p>An attempt was made to register a security event source.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4905</p></td>
<td align="left"><p>An attempt was made to unregister a security event source.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4906</p></td>
<td align="left"><p>The CrashOnAuditFail value has changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4907</p></td>
<td align="left"><p>Auditing settings on object were changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4908</p></td>
<td align="left"><p>Special Groups Logon table modified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4912</p></td>
<td align="left"><p>Per User Audit Policy was changed.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





