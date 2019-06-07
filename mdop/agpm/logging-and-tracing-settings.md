---
title: Logging and Tracing Settings
description: Logging and Tracing Settings
author: mjcaparas
ms.assetid: db6b43c7-fdde-4d11-b5ab-a81346e56940
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Logging and Tracing Settings


The Administrative Template settings for Advanced Group Policy Management (AGPM) enable you to centrally configure logging and tracing options for AGPM Servers and clients to which a Group Policy object (GPO) with these settings is applied.

The following setting is available under Computer Configuration\\Administrative Templates\\Windows Components\\AGPM in the **Group Policy Object Editor** when editing a GPO in the Group Policy Management Console (GPMC). If this path is not visible, right-click **Administrative Templates**, and add the agpm.admx or agpm.adm template.

**Trace file locations**:

-   Client: %LocalAppData%\\Microsoft\\AGPM\\agpm.log

-   Server: %CommonAppData%\\Microsoft\\AGPM\\agpmserv.log

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>AGPM Logging</strong></p></td>
<td align="left"><p>If enabled, this setting configures whether tracing is turned on and the level of detail. This setting affects both client and server components of AGPM.</p>
<p>If disabled or not configured, this setting has no effect.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Administrative Template Settings](administrative-template-settings.md)

 

 





