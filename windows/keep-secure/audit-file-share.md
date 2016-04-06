---
title: Audit File Share (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit File Share, which determines whether the operating system generates audit events when a file share is accessed.
ms.assetid: 9ea985f8-8936-4b79-abdb-35cbb7138f78
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit File Share


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit File Share**, which determines whether the operating system generates audit events when a file share is accessed.

Audit events are not generated when shares are created, deleted, or when share permissions change.

**Note**  
There are no system access control lists (SACLs) for shares; therefore, after this setting is enabled, access to all shares on the system will be audited.

 

Combined with File System auditing, File Share auditing enables you to track what content was accessed, the source (IP address and port) of the request, and the user account that was used for the access.

Event volume: High on a file server or domain controller (due to SYSVOL access by client computers for policy processing)

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
<td align="left"><p>5140</p></td>
<td align="left"><p>A network share object was accessed.</p>
<div class="alert">
<strong>Note</strong>  
<p>This event is logged on computers running Windows 10, Windows Server 2016 Technical Preview, Windows Server 2008 R2, Windows Server 2008, Windows 7, or Windows Vista.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>5142</p></td>
<td align="left"><p>A network share object was added.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5143</p></td>
<td align="left"><p>A network share object was modified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5144</p></td>
<td align="left"><p>A network share object was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5168</p></td>
<td align="left"><p>SPN check for SMB/SMB2 failed.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





