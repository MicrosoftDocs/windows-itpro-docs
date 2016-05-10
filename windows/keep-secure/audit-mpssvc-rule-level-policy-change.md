---
title: Audit MPSSVC Rule-Level Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit MPSSVC Rule-Level Policy Change, which determines whether the operating system generates audit events when changes are made to policy rules for the Microsoft Protection Service (MPSSVC.exe).
ms.assetid: 263461b3-c61c-4ec3-9dee-851164845019
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit MPSSVC Rule-Level Policy Change
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit MPSSVC Rule-Level Policy Change**, which determines whether the operating system generates audit events when changes are made to policy rules for the Microsoft Protection Service (MPSSVC.exe).
The Microsoft Protection Service, which is used by Windows Firewall, is an integral part of the computer’s threat protection against malware. The tracked activities include:
-   Active policies when the Windows Firewall service starts.
-   Changes to Windows Firewall rules.
-   Changes to the Windows Firewall exception list.
-   Changes to Windows Firewall settings.
-   Rules ignored or not applied by the Windows Firewall service.
-   Changes to Windows Firewall Group Policy settings.
Changes to firewall rules are important for understanding the security state of the computer and how well it is protected against network attacks.
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
<td align="left"><p>4944</p></td>
<td align="left"><p>The following policy was active when the Windows Firewall started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4945</p></td>
<td align="left"><p>A rule was listed when the Windows Firewall started.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4946</p></td>
<td align="left"><p>A change has been made to Windows Firewall exception list. A rule was added.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4947</p></td>
<td align="left"><p>A change has been made to Windows Firewall exception list. A rule was modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4948</p></td>
<td align="left"><p>A change has been made to Windows Firewall exception list. A rule was deleted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4949</p></td>
<td align="left"><p>Windows Firewall settings were restored to the default values.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4950</p></td>
<td align="left"><p>A Windows Firewall setting has changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4951</p></td>
<td align="left"><p>A rule has been ignored because its major version number was not recognized by Windows Firewall.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4952</p></td>
<td align="left"><p>Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4953</p></td>
<td align="left"><p>A rule has been ignored by Windows Firewall because it could not parse the rule.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4954</p></td>
<td align="left"><p>Windows Firewall Group Policy settings have changed. The new settings have been applied.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4956</p></td>
<td align="left"><p>Windows Firewall has changed the active profile.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4957</p></td>
<td align="left"><p>Windows Firewall did not apply the following rule:</p></td>
</tr>
<tr class="even">
<td align="left"><p>4958</p></td>
<td align="left"><p>Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer:</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
