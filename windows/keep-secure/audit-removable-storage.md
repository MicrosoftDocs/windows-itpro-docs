---
title: Audit Removable Storage (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Removable Storage, which determines when there is a read or a write to a removable drive.
ms.assetid: 1746F7B3-8B41-4661-87D8-12F734AFFB26
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Removable Storage
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Removable Storage**, which determines when there is a read or a write to a removable drive.
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
<td align="left"><p>4663</p></td>
<td align="left"><p>An attempt was made to access an object.</p>
<p>Subject:</p>
<p>Security ID: %1</p>
<p>Account Name: %2</p>
<p>Account Domain: %3</p>
<p>Logon ID: %4</p>
<p>Object:</p>
<p>Object Server: %5</p>
<p>Object Type: %6</p>
<p>Object Name: %7</p>
<p>Handle ID: %8</p>
<p>Process Information:</p>
<p>Process ID: %11</p>
<p>Process Name: %12</p>
<p>Access Request Information:</p>
<p>Accesses: %9</p>
<p>Access Mask: %10</p></td>
</tr>
<tr class="even">
<td align="left"><p>4659</p></td>
<td align="left"><p>A handle to an object was requested with intent to delete.</p>
<p>Subject:</p>
<p>Security ID: %1</p>
<p>Account Name: %2</p>
<p>Account Domain: %3</p>
<p>Logon ID: %4</p>
<p>Object:</p>
<p>Object Server: %5</p>
<p>Object Type: %6</p>
<p>Object Name: %7</p>
<p>Handle ID: %8</p>
<p>Process Information:</p>
<p>Process ID: %13</p>
<p>Access Request Information:</p>
<p>Transaction ID: %9</p>
<p>Accesses: %10</p>
<p>Access Mask: %11</p>
<p>Privileges Used for Access Check: %12</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4818</p></td>
<td align="left"><p>Proposed Central Access Policy does not grant the same access permissions as the current Central Access Policy.</p>
<p>Subject:</p>
<p>Security ID: %1</p>
<p>Account Name: %2</p>
<p>Account Domain: %3</p>
<p>Logon ID: %4</p>
<p>Object:</p>
<p>Object Server: %5</p>
<p>Object Type: %6</p>
<p>Object Name: %7</p>
<p>Handle ID: %8</p>
<p>Process Information:</p>
<p>Process ID: %9</p>
<p>Process Name: %10</p>
<p>Current Central Access Policy results:</p>
<p>Access Reasons: %11</p>
<p>Proposed Central Access Policy results that differ from the current Central Access Policy results:</p>
<p>Access Reasons: %12</p></td>
</tr>
<tr class="even">
<td align="left"><p>4656</p></td>
<td align="left"><p>A handle to an object was requested.</p>
<p>Subject:</p>
<p>Security ID: %1</p>
<p>Account Name: %2</p>
<p>Account Domain: %3</p>
<p>Logon ID: %4</p>
<p>Object:</p>
<p>Object Server: %5</p>
<p>Object Type: %6</p>
<p>Object Name: %7</p>
<p>Handle ID: %8</p>
<p>Resource Attributes: %17</p>
<p>Process Information:</p>
<p>Process ID: %15</p>
<p>Process Name: %16</p>
<p>Access Request Information:</p>
<p>Transaction ID: %9</p>
<p>Accesses: %10</p>
<p>Access Reasons: %11</p>
<p>Access Mask: %12</p>
<p>Privileges Used for Access Check: %13</p>
<p>Restricted SID Count: %14</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
