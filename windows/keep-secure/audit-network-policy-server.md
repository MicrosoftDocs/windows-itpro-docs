---
title: Audit Network Policy Server (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Network Policy Server, which determines whether the operating system generates audit events for RADIUS (IAS) and Network Access Protection (NAP) activity on user access requests (Grant, Deny, Discard, Quarantine, Lock, and Unlock).
ms.assetid: 43b2aea4-26df-46da-b761-2b30f51a80f7
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Network Policy Server


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Network Policy Server**, which determines whether the operating system generates audit events for RADIUS (IAS) and Network Access Protection (NAP) activity on user access requests (Grant, Deny, Discard, Quarantine, Lock, and Unlock).

NAP events can be used to help understand the overall health of the network.

Event volume: Medium to high on servers that are running Network Policy Server (NPS); moderate on other servers or on client computers

Default: Success and failure

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
<td align="left"><p>6272</p></td>
<td align="left"><p>Network Policy Server granted access to a user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6273</p></td>
<td align="left"><p>Network Policy Server denied access to a user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6274</p></td>
<td align="left"><p>Network Policy Server discarded the request for a user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6275</p></td>
<td align="left"><p>Network Policy Server discarded the accounting request for a user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6276</p></td>
<td align="left"><p>Network Policy Server quarantined a user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6277</p></td>
<td align="left"><p>Network Policy Server granted access to a user but put it on probation because the host did not meet the defined health policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6278</p></td>
<td align="left"><p>Network Policy Server granted full access to a user because the host met the defined health policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>6279</p></td>
<td align="left"><p>Network Policy Server locked the user account due to repeated failed authentication attempts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>6280</p></td>
<td align="left"><p>Network Policy Server unlocked the user account.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





