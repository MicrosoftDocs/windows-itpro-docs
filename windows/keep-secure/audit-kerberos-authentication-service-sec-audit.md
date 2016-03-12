---
title: Audit Kerberos Authentication Service (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit Kerberos Authentication Service which determines whether to generate audit events for Kerberos authentication ticket granting ticket (TGT) requests.
MSHAttr: PreferredLib /library
ms.assetid: 990dd6d9-1a1f-4cce-97ba-5d7e0a7db859
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Kerberos Authentication Service


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Kerberos Authentication Service**, which determines whether to generate audit events for Kerberos authentication ticket-granting ticket (TGT) requests.

If you configure this policy setting, an audit event is generated after a Kerberos authentication TGT request. Success audits record successful attempts and Failure audits record unsuccessful attempts.

Event volume: High on Kerberos Key Distribution Center servers

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
<td align="left"><p>4768</p></td>
<td align="left"><p>A Kerberos authentication ticket (TGT) was requested.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4771</p></td>
<td align="left"><p>Kerberos preauthentication failed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4772</p></td>
<td align="left"><p>A Kerberos authentication ticket request failed.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





