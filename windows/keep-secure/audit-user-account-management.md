---
title: Audit User Account Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit User Account Management, which determines whether the operating system generates audit events when specific user account management tasks are performed.
ms.assetid: f7e72998-3858-4197-a443-19586ecc4bfb
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit User Account Management


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit User Account Management**, which determines whether the operating system generates audit events when specific user account management tasks are performed.

Tasks that are audited for user account management include:

-   A user account is created, changed, deleted, renamed, disabled, enabled, locked out, or unlocked.

-   A user account password is set or changed.

-   Security identifier (SID) history is added to a user account.

-   The Directory Services Restore Mode password is set.

-   Permissions are changed on accounts that are members of administrator groups.

-   Credential Manager credentials are backed up or restored.

This policy setting is essential for tracking events that involve provisioning and managing user accounts.

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
<td align="left"><p>4720</p></td>
<td align="left"><p>A user account was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4722</p></td>
<td align="left"><p>A user account was enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4723</p></td>
<td align="left"><p>An attempt was made to change an account's password.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4724</p></td>
<td align="left"><p>An attempt was made to reset an account's password.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4725</p></td>
<td align="left"><p>A user account was disabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4726</p></td>
<td align="left"><p>A user account was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4738</p></td>
<td align="left"><p>A user account was changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4740</p></td>
<td align="left"><p>A user account was locked out.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4765</p></td>
<td align="left"><p>SID History was added to an account.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4766</p></td>
<td align="left"><p>An attempt to add SID History to an account failed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4767</p></td>
<td align="left"><p>A user account was unlocked.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4780</p></td>
<td align="left"><p>The ACL was set on accounts which are members of administrators groups.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4781</p></td>
<td align="left"><p>The name of an account was changed:</p></td>
</tr>
<tr class="even">
<td align="left"><p>4794</p></td>
<td align="left"><p>An attempt was made to set the Directory Services Restore Mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5376</p></td>
<td align="left"><p>Credential Manager credentials were backed up.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5377</p></td>
<td align="left"><p>Credential Manager credentials were restored from a backup.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





