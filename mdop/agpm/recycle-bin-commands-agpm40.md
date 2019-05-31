---
title: Recycle Bin Commands
description: Recycle Bin Commands
author: mjcaparas
ms.assetid: 347a101f-0ba0-4afc-bd59-752cc06bb904
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Recycle Bin Commands


The **Recycle Bin** tab:

-   Displays a list of Group Policy Objects (GPOs) that have been deleted from the archive.

-   Provides a shortcut menu with commands for managing GPOs and for displaying reports for GPOs.

-   Displays a list of the groups and users who have permission to access a selected GPO.

Right-clicking the **Group Policy Objects** list on this tab displays a shortcut menu, including whichever of the following options are applicable:

## Reports


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Settings</strong></p></td>
<td align="left"><p>Generate an HTML-based or XML-based report displaying the settings within the selected GPO or display links to the selected GPOs from organizational units as of when the GPOs were most recently controlled, imported, or checked in.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Differences</strong></p></td>
<td align="left"><p>Generate an HTML-based or XML-based report comparing the settings within two selected GPOs or within the selected GPO and a template.</p></td>
</tr>
</tbody>
</table>

 

## Version management


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Destroy</strong></p></td>
<td align="left"><p>Remove the selected GPO from the <strong>Recycle Bin</strong>, so it can no longer be restored.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Restore</strong></p></td>
<td align="left"><p>Move the selected GPO from the <strong>Recycle Bin</strong> to the <strong>Controlled</strong> tab. This does not restore the GPO to the production environment.</p></td>
</tr>
</tbody>
</table>

 

## Miscellaneous


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Refresh</strong></p></td>
<td align="left"><p>Update the display of the Group Policy Management Console (GPMC) to incorporate any changes. Some changes are not visible until the display is refreshed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Help</strong></p></td>
<td align="left"><p>Display help for Advanced Group Policy Management (AGPM).</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Contents Tab](contents-tab-agpm40.md)

-   [Performing Approver Tasks](performing-approver-tasks-agpm40.md)

-   [Performing Reviewer Tasks](performing-reviewer-tasks-agpm40.md)

 

 





