---
title: Audit privilege use (Windows 10)
description: Determines whether to audit each instance of a user exercising a user right.
ms.assetid: C5C6DAAF-8B58-4DFB-B1CE-F0675AE0E9F8
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit privilege use


**Applies to**

-   Windows 10

Determines whether to audit each instance of a user exercising a user right.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit this type of event at all. Success audits generate an audit entry when the exercise of a user right succeeds. Failure audits generate an audit entry when the exercise of a user right fails.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.

**Default:** No auditing.

Audits are not generated for use of the following user rights, even if success audits or failure audits are specified for **Audit privilege use**. Enabling auditing of these user rights tend to generate many events in the security log which may impede your computer's performance. To audit the following user rights, enable the **FullPrivilegeAuditing** registry key.

-   Bypass traverse checking

-   Debug programs

-   Create a token object

-   Replace process level token

-   Generate security audits

-   Back up files and directories

-   Restore files and directories

## Configure this audit setting


You can configure this security setting under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Privilege use events</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">576</td>
<td align="left">Specified privileges were added to a user's access token.
<div class="alert">
<strong>Note</strong>  This event is generated when the user logs on.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">577</td>
<td align="left">A user attempted to perform a privileged system service operation.</td>
</tr>
<tr class="odd">
<td align="left">578</td>
<td align="left">Privileges were used on an already open handle to a protected object.</td>
</tr>
</tbody>
</table>

 

## Related topics


[Basic security audit policy settings](basic-security-audit-policy-settings.md)

 

 





