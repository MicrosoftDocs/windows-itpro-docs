---
title: Logging and Tracing Settings
description: Logging and Tracing Settings
author: dansimp
ms.assetid: 66d03306-80d8-4132-bf71-2827157b1fc9
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


The Administrative template settings for Advanced Group Policy Management (AGPM) enable you to centrally configure logging and tracing options for AGPM Servers and clients to which a Group Policy Object (GPO) with these settings is applied.

The following setting is available under Computer Configuration\\Policies\\Administrative Templates\\Windows Components\\AGPM when editing a GPO.

**Trace file locations**:

-   Client: %LocalAppData%\\Microsoft\\AGPM\\agpm.log

-   Server: %ProgramData%\\Microsoft\\AGPM\\agpmserv.log

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
<td align="left"><p><strong>AGPM: Configure logging</strong></p></td>
<td align="left"><p>This policy setting allows you to turn on and configure logging for AGPM. This setting affects both client and server components of AGPM.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Administrative Templates Folder](administrative-templates-folder-agpm40.md)

 

 





