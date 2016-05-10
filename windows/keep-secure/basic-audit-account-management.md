---
title: Audit account management (Windows 10)
description: Determines whether to audit each event of account management on a device.
ms.assetid: 369197E1-7E0E-45A4-89EA-16D91EF01689
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit account management
**Applies to**
-   Windows 10
Determines whether to audit each event of account management on a device.
Examples of account management events include:
-   A user account or group is created, changed, or deleted.
-   A user account is renamed, disabled, or enabled.
-   A password is set or changed.
If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when any account management event succeeds. Failure audits generate an audit entry when any account management event fails. To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.
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
<th align="left">Account management events</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">624</td>
<td align="left">A user account was created.</td>
</tr>
<tr class="even">
<td align="left">627</td>
<td align="left">A user password was changed.</td>
</tr>
<tr class="odd">
<td align="left">628</td>
<td align="left">A user password was set.</td>
</tr>
<tr class="even">
<td align="left">630</td>
<td align="left">A user account was deleted.</td>
</tr>
<tr class="odd">
<td align="left">631</td>
<td align="left">A global group was created.</td>
</tr>
<tr class="even">
<td align="left">632</td>
<td align="left">A member was added to a global group.</td>
</tr>
<tr class="odd">
<td align="left">633</td>
<td align="left">A member was removed from a global group.</td>
</tr>
<tr class="even">
<td align="left">634</td>
<td align="left">A global group was deleted.</td>
</tr>
<tr class="odd">
<td align="left">635</td>
<td align="left">A new local group was created.</td>
</tr>
<tr class="even">
<td align="left">636</td>
<td align="left">A member was added to a local group.</td>
</tr>
<tr class="odd">
<td align="left">637</td>
<td align="left">A member was removed from a local group.</td>
</tr>
<tr class="even">
<td align="left">638</td>
<td align="left">A local group was deleted.</td>
</tr>
<tr class="odd">
<td align="left">639</td>
<td align="left">A local group account was changed.</td>
</tr>
<tr class="even">
<td align="left">641</td>
<td align="left">A global group account was changed.</td>
</tr>
<tr class="odd">
<td align="left">642</td>
<td align="left">A user account was changed</td>
</tr>
<tr class="even">
<td align="left">643</td>
<td align="left">A domain policy was modified.</td>
</tr>
<tr class="odd">
<td align="left">644</td>
<td align="left">A user account was auto locked.</td>
</tr>
<tr class="even">
<td align="left">645</td>
<td align="left">A computer account was created.</td>
</tr>
<tr class="odd">
<td align="left">646</td>
<td align="left">A computer account was changed.</td>
</tr>
<tr class="even">
<td align="left">647</td>
<td align="left">A computer account was deleted.</td>
</tr>
<tr class="odd">
<td align="left">648</td>
<td align="left">A local security group with security disabled was created.
<div class="alert">
<strong>Note</strong>  SECURITY_DISABLED in the formal name means that this group cannot be used to grant permissions in access checks.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">649</td>
<td align="left">A local security group with security disabled was changed.</td>
</tr>
<tr class="odd">
<td align="left">650</td>
<td align="left">A member was added to a security-disabled local security group.</td>
</tr>
<tr class="even">
<td align="left">651</td>
<td align="left">A member was removed from a security-disabled local security group.</td>
</tr>
<tr class="odd">
<td align="left">652</td>
<td align="left">A security-disabled local group was deleted.</td>
</tr>
<tr class="even">
<td align="left">653</td>
<td align="left">A security-disabled global group was created.</td>
</tr>
<tr class="odd">
<td align="left">645</td>
<td align="left">A security-disabled global group was changed.</td>
</tr>
<tr class="even">
<td align="left">655</td>
<td align="left">A member was added to a security-disabled global group.</td>
</tr>
<tr class="odd">
<td align="left">656</td>
<td align="left">A member was removed from a security-disabled global group.</td>
</tr>
<tr class="even">
<td align="left">657</td>
<td align="left">A security-disabled global group was deleted.</td>
</tr>
<tr class="odd">
<td align="left">658</td>
<td align="left">A security-enabled universal group was created.</td>
</tr>
<tr class="even">
<td align="left">659</td>
<td align="left">A security-enabled universal group was changed.</td>
</tr>
<tr class="odd">
<td align="left">660</td>
<td align="left">A member was added to a security-enabled universal group.</td>
</tr>
<tr class="even">
<td align="left">661</td>
<td align="left">A member was removed from a security-enabled universal group.</td>
</tr>
<tr class="odd">
<td align="left">662</td>
<td align="left">A security-enabled universal group was deleted.</td>
</tr>
<tr class="even">
<td align="left">663</td>
<td align="left">A security-disabled universal group was created.</td>
</tr>
<tr class="odd">
<td align="left">664</td>
<td align="left">A security-disabled universal group was changed.</td>
</tr>
<tr class="even">
<td align="left">665</td>
<td align="left">A member was added to a security-disabled universal group.</td>
</tr>
<tr class="odd">
<td align="left">666</td>
<td align="left">A member was removed from a security-disabled universal group.</td>
</tr>
<tr class="even">
<td align="left">667</td>
<td align="left">A security-disabled universal group was deleted.</td>
</tr>
<tr class="odd">
<td align="left">668</td>
<td align="left">A group type was changed.</td>
</tr>
<tr class="even">
<td align="left">684</td>
<td align="left">Set the security descriptor of members of administrative groups.</td>
</tr>
<tr class="odd">
<td align="left">685</td>
<td align="left">Set the security descriptor of members of administrative groups.
<div class="alert">
<strong>Note</strong>  Every 60 minutes on a domain controller a background thread searches all members of administrative groups (such as domain, enterprise, and schema administrators) and applies a fixed security descriptor on them. This event is logged.
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>
 
## Related topics
[Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
