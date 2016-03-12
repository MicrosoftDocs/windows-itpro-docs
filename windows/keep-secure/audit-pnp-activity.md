---
title: Audit PNP Activity (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting Audit PNP Activity which determines when plug and play detects an external device.
MSHAttr: PreferredLib /library
ms.assetid: A3D87B3B-EBBE-442A-953B-9EB75A5F600E
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit PNP Activity


**Applies to**

-   Windows 10

\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.\]

This topic for the IT professional describes the advanced security audit policy setting, **Audit PNP Activity**, which determines when plug and play detects an external device.

A PnP audit event can be used to track down changes in system hardware and will be logged on the machine where the change took place. For example, when a keyboard is plugged into a PC a PnP event is triggered.

Event volume: Varies, depending on how the computer is used

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
<td align="left"><p>6416</p></td>
<td align="left"><p>A new external device was recognized by the system.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





