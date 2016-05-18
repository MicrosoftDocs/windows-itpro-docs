---
title: Audit system events (Windows 10)
description: Determines whether to audit when a user restarts or shuts down the computer or when an event occurs that affects either the system security or the security log.
ms.assetid: BF27588C-2AA7-4365-A4BF-3BB377916447
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit system events
**Applies to**
-   Windows 10
Determines whether to audit when a user restarts or shuts down the computer or when an event occurs that affects either the system security or the security log.
If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a logon attempt succeeds. Failure audits generate an audit entry when a logon attempt fails.
To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the **Define these policy settings** check box and clear the **Success** and **Failure** check boxes.
**Default:**
-   Success on domain controllers.
-   No auditing on member servers.
## Configure this audit setting
You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Logon events</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">512</td>
<td align="left">Windows is starting up.</td>
</tr>
<tr class="even">
<td align="left">513</td>
<td align="left">Windows is shutting down.</td>
</tr>
<tr class="odd">
<td align="left">514</td>
<td align="left">An authentication package was loaded by the Local Security Authority.</td>
</tr>
<tr class="even">
<td align="left">515</td>
<td align="left">A trusted logon process has registered with the Local Security Authority.</td>
</tr>
<tr class="odd">
<td align="left">516</td>
<td align="left">Internal resources allocated for the queuing of security event messages have been exhausted, leading to the loss of some security event messages.</td>
</tr>
<tr class="even">
<td align="left">517</td>
<td align="left">The audit log was cleared.</td>
</tr>
<tr class="odd">
<td align="left">518</td>
<td align="left">A notification package was loaded by the Security Accounts Manager.</td>
</tr>
<tr class="even">
<td align="left">519</td>
<td align="left">A process is using an invalid local procedure call (LPC) port in an attempt to impersonate a client and reply or read from or write to a client address space.</td>
</tr>
<tr class="odd">
<td align="left">520</td>
<td align="left">The system time was changed.
<div class="alert">
<strong>Note</strong>  This audit normally appears twice.
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>
 
## Related topics
[Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
