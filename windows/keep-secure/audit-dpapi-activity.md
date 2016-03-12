---
title: Audit DPAPI Activity (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit DPAPI Activity which determines whether the operating system generates audit events when encryption or decryption calls are made into the data protection application interface (DPAPI).
MSHAttr: PreferredLib /library
ms.assetid: be4d4c83-c857-4e3d-a84e-8bcc3f2c99cd
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit DPAPI Activity


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit DPAPI Activity**, which determines whether the operating system generates audit events when encryption or decryption calls are made into the data protection application interface (DPAPI).

DPAPI is used to protect secret information such as stored passwords and key information. For more information about DPAPI, see [Windows Data Protection](http://go.microsoft.com/fwlink/p/?linkid=121720) (http://go.microsoft.com/fwlink/p/?linkid=121720).

Event volume: Low

Default: Not configured

If this policy setting is configured, the following events appear on computers running the supported versions of the Windows operating system as designated in the **Applies To** list at the beginning of this topic, in addition to Windows Server 2008 and Windows Vista.

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
<td align="left"><p>4692</p></td>
<td align="left"><p>Backup of data protection master key was attempted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4693</p></td>
<td align="left"><p>Recovery of data protection master key was attempted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4694</p></td>
<td align="left"><p>Protection of auditable protected data was attempted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4695</p></td>
<td align="left"><p>Unprotection of auditable protected data was attempted.</p></td>
</tr>
</tbody>
</table>

 

## Related resource


[Advanced Security Audit Policy Settings](advanced-security-audit-policy-settings.md)

 

 





