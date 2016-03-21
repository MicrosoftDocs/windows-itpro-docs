---
title: Audit Other Policy Change Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Policy Change Events, which determines whether the operating system generates audit events for security policy changes that are not otherwise audited in the Policy Change category.
ms.assetid: 8618502e-c21c-41cc-8a49-3dc1eb359e60
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Other Policy Change Events


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Policy Change Events**, which determines whether the operating system generates audit events for security policy changes that are not otherwise audited in the Policy Change category.

These other activities in the Policy Change category that can be audited include:

-   Trusted Platform Module (TPM) configuration changes.

-   Kernel-mode cryptographic self tests.

-   Cryptographic provider operations.

-   Cryptographic context operations or modifications.

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
<td align="left"><p>4670</p></td>
<td align="left"><p>Permissions on an object were changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4909</p></td>
<td align="left"><p>The local policy settings for the TBS were changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4910</p></td>
<td align="left"><p>The group policy settings for the TBS were changed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5063</p></td>
<td align="left"><p>A cryptographic provider operation was attempted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5064</p></td>
<td align="left"><p>A cryptographic context operation was attempted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5065</p></td>
<td align="left"><p>A cryptographic context modification was attempted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5066</p></td>
<td align="left"><p>A cryptographic function operation was attempted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5067</p></td>
<td align="left"><p>A cryptographic function modification was attempted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5068</p></td>
<td align="left"><p>A cryptographic function provider operation was attempted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5069</p></td>
<td align="left"><p>A cryptographic function property operation was attempted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5070</p></td>
<td align="left"><p>A cryptographic function property modification was attempted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5447</p></td>
<td align="left"><p>A Windows Filtering Platform filter has been changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6144</p></td>
<td align="left"><p>Security policy in the group policy objects has been applied successfully.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6145</p></td>
<td align="left"><p>One or more errors occurred while processing security policy in the group policy objects.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





