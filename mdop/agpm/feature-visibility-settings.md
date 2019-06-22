---
title: Feature Visibility Settings
description: Feature Visibility Settings
author: mjcaparas
ms.assetid: 9db2ba03-fb75-4f95-9138-ec89b9fc8d01
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Feature Visibility Settings


The Administrative template settings for Advanced Group Policy Management (AGPM) enable you to centrally configure the visibility of the **Change Control** node and **History** tab for Group Policy administrators to whom a Group Policy object (GPO) with these settings is applied.

The following settings are available under User Configuration\\Administrative Templates\\Windows Components\\Microsoft Management Console\\Restricted/Permitted Snap-ins\\Extension Snap-ins in the **Group Policy Object Editor** when editing a GPO in the Group Policy Management Console (GPMC). If this path is not visible, right-click **Administrative Templates**, and add the agpm.admx or agpm.adm template.

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
<td align="left"><p><strong>AGPM Change Control</strong></p></td>
<td align="left"><p>If enabled or not configured, the <strong>Change Control</strong> node is visible in the GPMC.</p>
<p>If disabled, the <strong>Change Control</strong> node is not visible in the GPMC.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>AGPM Link Extension</strong></p></td>
<td align="left"><p>If enabled or not configured, a <strong>History</strong> tab appears in the GPMC for each linked GPO.</p>
<p>If disabled, the <strong>History</strong> tab is not visible for linked GPOs.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>AGPM GPO Extension</strong></p></td>
<td align="left"><p>If enabled or not configured, a <strong>History</strong> tab appears in the GPMC for each GPO.</p>
<p>If disabled, the <strong>History</strong> tab is not visible for GPOs.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Administrative Template Settings](administrative-template-settings.md)

 

 





