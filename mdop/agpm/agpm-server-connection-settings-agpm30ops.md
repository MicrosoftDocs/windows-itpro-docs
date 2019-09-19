---
title: AGPM Server Connection Settings
description: AGPM Server Connection Settings
author: dansimp
ms.assetid: 5f03e397-b868-4c49-9cbf-a5f5d0ddcc39
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# AGPM Server Connection Settings


You can use Administrative template settings for Advanced Group Policy Management (AGPM) to centrally configure AGPM Server connections for Group Policy administrators to whom a Group Policy Object (GPO) with these settings is applied.

The following settings are available under User Configuration\\Policies\\Administrative Templates\\Windows Components\\AGPM when editing a GPO.

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
<td align="left"><p><strong>AGPM: Specify default AGPM Server (all domains)</strong></p></td>
<td align="left"><p>This policy setting allows you to specify a default AGPM Server for all domains. This is used only by AGPM Clients, and restricts Group Policy administrators from connecting to another archive. You can override this default for individual domains using the <strong>AGPM: Specify AGPM Servers</strong> setting.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>AGPM: Specify AGPM Servers</strong></p></td>
<td align="left"><p>This policy setting allows you to specify the AGPM Servers for individual domains. This is used only by AGPM Clients, and restricts Group Policy administrators from connecting to a different archive for the specified domain. To specify a default AGPM Server, use the <strong>AGPM: Specify default AGPM Server (all domains)</strong> setting and use this policy setting to override the default on a per domain basis.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Administrative Templates Folder](administrative-templates-folder-agpm30ops.md)

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks-agpm30ops.md)

 

 





