---
title: Audit process tracking (Windows 10)
description: Determines whether to audit detailed tracking information for events such as program activation, process exit, handle duplication, and indirect object access.
ms.assetid: 91AC5C1E-F4DA-4B16-BEE2-C92D66E4CEEA
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit process tracking
**Applies to**
-   Windows 10
Determines whether to audit detailed tracking information for events such as program activation, process exit, handle duplication, and indirect object access.
If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when the process being tracked succeeds. Failure audits generate an audit entry when the process being tracked fails.
To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.
**Default:** No auditing.
## Configure this this security setting
You can configure this security setting under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Process tracking events</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">592</td>
<td align="left">A new process was created.</td>
</tr>
<tr class="even">
<td align="left">593</td>
<td align="left">A process exited.</td>
</tr>
<tr class="odd">
<td align="left">594</td>
<td align="left">A handle to an object was duplicated.</td>
</tr>
<tr class="even">
<td align="left">595</td>
<td align="left">Indirect access to an object was obtained.</td>
</tr>
<tr class="odd">
<td align="left">596</td>
<td align="left">A data protection master key was backed up.
<div class="alert">
<strong>Note</strong>  The master key is used by the CryptProtectData and CryptUnprotectData routines, and Encrypting File System (EFS). The master key is backed up each time a new one is created. (The default setting is 90 days.) The key is usually backed up to a domain controller.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">597</td>
<td align="left">A data protection master key was recovered from a recovery server.</td>
</tr>
<tr class="odd">
<td align="left">598</td>
<td align="left">Auditable data was protected.</td>
</tr>
<tr class="even">
<td align="left">599</td>
<td align="left">Auditable data was unprotected.</td>
</tr>
<tr class="odd">
<td align="left">600</td>
<td align="left">A process was assigned a primary token.</td>
</tr>
<tr class="even">
<td align="left">601</td>
<td align="left">A user attempted to install a service.</td>
</tr>
<tr class="odd">
<td align="left">602</td>
<td align="left">A scheduler job was created.</td>
</tr>
</tbody>
</table>
 
## Related topics
[Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
