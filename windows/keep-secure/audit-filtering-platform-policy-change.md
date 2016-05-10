---
title: Audit Filtering Platform Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Filtering Platform Policy Change, which determines whether the operating system generates audit events for certain IPsec and Windows Filtering Platform actions.
ms.assetid: 0eaf1c56-672b-4ea9-825a-22dc03eb4041
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Filtering Platform Policy Change
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Filtering Platform Policy Change**, which determines whether the operating system generates audit events for certain IPsec and Windows Filtering Platform actions.
Windows Filtering Platform (WFP) enables independent software vendors (ISVs) to filter and modify TCP/IP packets, monitor or authorize connections, filter Internet Protocol security (IPsec)-protected traffic, and filter remote procedure calls (RPCs).
This security policy setting determines whether the operating system generates audit events for:
-   IPsec services status.
-   Changes to IPsec settings.
-   Status and changes to the Windows Filtering Platform engine and providers.
-   IPsec Policy Agent service activities.
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
<td align="left"><p>4709</p></td>
<td align="left"><p>IPsec Services was started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4710</p></td>
<td align="left"><p>IPsec Services was disabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4711</p></td>
<td align="left"><p>May contain any one of the following:</p>
<ul>
<li><p>PAStore Engine applied locally cached copy of Active Directory storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine applied Active Directory storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine applied local registry storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine failed to apply locally cached copy of Active Directory storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine failed to apply Active Directory storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine failed to apply local registry storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine failed to apply some rules of the active IPsec policy on the computer.</p></li>
<li><p>PAStore Engine failed to load directory storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine loaded directory storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine failed to load local storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine loaded local storage IPsec policy on the computer.</p></li>
<li><p>PAStore Engine polled for changes to the active IPsec policy and detected no changes.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>4712</p></td>
<td align="left"><p>IPsec Services encountered a potentially serious failure.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5040</p></td>
<td align="left"><p>A change has been made to IPsec settings. An Authentication Set was added.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5041</p></td>
<td align="left"><p>A change has been made to IPsec settings. An Authentication Set was modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5042</p></td>
<td align="left"><p>A change has been made to IPsec settings. An Authentication Set was deleted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5043</p></td>
<td align="left"><p>A change has been made to IPsec settings. A Connection Security Rule was added.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5044</p></td>
<td align="left"><p>A change has been made to IPsec settings. A Connection Security Rule was modified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5045</p></td>
<td align="left"><p>A change has been made to IPsec settings. A Connection Security Rule was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5046</p></td>
<td align="left"><p>A change has been made to IPsec settings. A Crypto Set was added.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5047</p></td>
<td align="left"><p>A change has been made to IPsec settings. A Crypto Set was modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5048</p></td>
<td align="left"><p>A change has been made to IPsec settings. A Crypto Set was deleted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5440</p></td>
<td align="left"><p>The following callout was present when the Windows Filtering Platform Base Filtering Engine started.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5441</p></td>
<td align="left"><p>The following filter was present when the Windows Filtering Platform Base Filtering Engine started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5442</p></td>
<td align="left"><p>The following provider was present when the Windows Filtering Platform Base Filtering Engine started.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5443</p></td>
<td align="left"><p>The following provider context was present when the Windows Filtering Platform Base Filtering Engine started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5444</p></td>
<td align="left"><p>The following sub-layer was present when the Windows Filtering Platform Base Filtering Engine started.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5446</p></td>
<td align="left"><p>A Windows Filtering Platform callout has been changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5448</p></td>
<td align="left"><p>A Windows Filtering Platform provider has been changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5449</p></td>
<td align="left"><p>A Windows Filtering Platform provider context has been changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5450</p></td>
<td align="left"><p>A Windows Filtering Platform sub-layer has been changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5456</p></td>
<td align="left"><p>PAStore Engine applied Active Directory storage IPsec policy on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5457</p></td>
<td align="left"><p>PAStore Engine failed to apply Active Directory storage IPsec policy on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5458</p></td>
<td align="left"><p>PAStore Engine applied locally cached copy of Active Directory storage IPsec policy on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5459</p></td>
<td align="left"><p>PAStore Engine failed to apply locally cached copy of Active Directory storage IPsec policy on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5460</p></td>
<td align="left"><p>PAStore Engine applied local registry storage IPsec policy on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5461</p></td>
<td align="left"><p>PAStore Engine failed to apply local registry storage IPsec policy on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5462</p></td>
<td align="left"><p>PAStore Engine failed to apply some rules of the active IPsec policy on the computer. Use the IP Security Monitor snap-in to diagnose the problem.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5463</p></td>
<td align="left"><p>PAStore Engine polled for changes to the active IPsec policy and detected no changes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5464</p></td>
<td align="left"><p>PAStore Engine polled for changes to the active IPsec policy, detected changes, and applied them to IPsec Services.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5465</p></td>
<td align="left"><p>PAStore Engine received a control for forced reloading of IPsec policy and processed the control successfully.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5466</p></td>
<td align="left"><p>PAStore Engine polled for changes to the Active Directory IPsec policy, determined that Active Directory cannot be reached, and will use the cached copy of the Active Directory IPsec policy instead. Any changes made to the Active Directory IPsec policy since the last poll could not be applied.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5467</p></td>
<td align="left"><p>PAStore Engine polled for changes to the Active Directory IPsec policy, determined that Active Directory can be reached, and found no changes to the policy. The cached copy of the Active Directory IPsec policy is no longer being used.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5468</p></td>
<td align="left"><p>PAStore Engine polled for changes to the Active Directory IPsec policy, determined that Active Directory can be reached, found changes to the policy, and applied those changes. The cached copy of the Active Directory IPsec policy is no longer being used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5471</p></td>
<td align="left"><p>PAStore Engine loaded local storage IPsec policy on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5472</p></td>
<td align="left"><p>PAStore Engine failed to load local storage IPsec policy on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5473</p></td>
<td align="left"><p>PAStore Engine loaded directory storage IPsec policy on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5474</p></td>
<td align="left"><p>PAStore Engine failed to load directory storage IPsec policy on the computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5477</p></td>
<td align="left"><p>PAStore Engine failed to add quick mode filter.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
