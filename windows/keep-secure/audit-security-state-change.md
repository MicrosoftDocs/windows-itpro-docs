---
title: Audit Security State Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Security State Change, which determines whether Windows generates audit events for changes in the security state of a system.
ms.assetid: decb3218-a67d-4efa-afc0-337c79a89a2d
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Security State Change
**Applies to**
-   Windows 10
-   Windows 10 Mobile
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Security State Change**, which determines whether Windows generates audit events for changes in the security state of a system.
Changes in the security state of the operating system include:
-   System startup and shutdown.
-   Change of system time.
-   System recovery from **CrashOnAuditFail**. This event is logged after a system reboots following **CrashOnAuditFail**.
    **Important**  
    Some auditable activity may not be recorded when a system restarts due to **CrashOnAuditFail**.
     
System startup and shutdown events are important for understanding system usage.
Event volume: Low
Default: Success
<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Event Message Summary</th>
<th align="left">Minimum Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4608</p></td>
<td align="left"><p>Windows is starting up.</p></td>
<td align="left"><p>Windows Vista, Windows Server 2008</p></td>
</tr>
<tr class="even">
<td align="left"><p>4609</p></td>
<td align="left"><p>Windows is shutting down.</p></td>
<td align="left"><p>Windows Vista, Windows Server 2008</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4616</p></td>
<td align="left"><p>The system time was changed.</p></td>
<td align="left"><p>Windows Vista, Windows Server 2008</p></td>
</tr>
<tr class="even">
<td align="left"><p>4621</p></td>
<td align="left"><p>Administrator recovered system from CrashOnAuditFail. Users who are not administrators will now be allowed to log on. Some auditable activity might not have been recorded.</p></td>
<td align="left"><p>Windows Vista, Windows Server 2008</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
