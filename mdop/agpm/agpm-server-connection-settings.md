---
title: AGPM Server Connection Settings
description: AGPM Server Connection Settings
author: dansimp
ms.assetid: faf78e5b-2b0d-4069-9b8c-910add892200
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


You can use Administrative template settings for Advanced Group Policy Management (AGPM) to centrally configure AGPM Server connections for Group Policy administrators to whom a Group Policy object (GPO) with these settings is applied.

The following settings are available under User Configuration\\Administrative Templates\\Windows Components\\AGPM when editing a GPO. If this path is not visible, right-click **Administrative Templates**, and add the agpm.admx or agpm.adm template.

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
<td align="left"><p><strong>AGPM Server (all domains)</strong></p></td>
<td align="left"><p>If enabled, this setting centrally configures one AGPM Server connection for use by all domains and disables the settings on the <strong>AGPM Server</strong> tab for Group Policy administrators. For multiple AGPM Servers, configure this setting with a default server and then configure the <strong>AGPM Server</strong> setting in the Administrative template to override this server for other domains.</p>
<p>If disabled or not configured, each Group Policy administrator must select the AGPM Server to display for each domain on the <strong>AGPM Server</strong> tab in AGPM.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>AGPM Server</strong></p></td>
<td align="left"><p>If enabled, this setting centrally configures multiple domain-specific AGPM Servers, overriding the <strong>AGPM Server (all domains)</strong> setting in the Administrative template. If your environment requires only a single AGPM Server, use only the <strong>AGPM Server (all domains)</strong> setting in the Administrative template.</p>
<p>If disabled or not configured, the <strong>AGPM Server (all domains)</strong> setting in the Administrative template configures the AGPM Server connection.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Administrative Template Settings](administrative-template-settings.md)

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md)

 

 





