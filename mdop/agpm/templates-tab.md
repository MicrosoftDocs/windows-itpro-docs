---
title: Templates Tab
description: Templates Tab
author: mjcaparas
ms.assetid: 5676e9f9-eb52-49e1-a55d-15c1059af368
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Templates Tab


The **Templates** tab:

-   Displays a list of available templates that you can use to create new Group Policy objects (GPOs).

-   Provides a shortcut menu with commands for creating a GPO based on a selected template, managing templates, and displaying reports for templates.

-   Displays a list of the groups and users who have permission to access a selected template.

Because a template cannot be altered, templates have no history. However, like any GPO version, the settings of a template can be displayed with a settings report or compared to another GPO with a difference report.

**Note**  
A template is an uneditable, static version of a GPO for use as a starting point for creating new, editable GPOs.

 

Right-clicking the **Group Policy Objects** list on this tab displays a shortcut menu, including whichever of the following options are applicable.

## Control


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
<td align="left"><p><strong>New Controlled GPO</strong></p></td>
<td align="left"><p>Create a new GPO based on the selected template. The option to deploy the new GPO to the production environment is provided. If you do not have permission to create a GPO, you will be prompted to submit a request. (This option is displayed if no GPO is selected when right-clicking in the <strong>Group Policy Objects</strong> list.)</p></td>
</tr>
</tbody>
</table>

 

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
<td align="left"><p>Generate an HTML-based or XML-based report displaying the settings within the selected GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Differences</strong></p></td>
<td align="left"><p>Generate an HTML-based or XML-based report comparing the settings within two selected GPO templates.</p></td>
</tr>
</tbody>
</table>

 

## Template management


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
<td align="left"><p><strong>Set as Default</strong></p></td>
<td align="left"><p>Set the selected template as the default to be used automatically when creating a new GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Delete</strong></p></td>
<td align="left"><p>Move the selected template to the <strong>Recycle Bin</strong>. If you do not have permission to delete a GPO, you will be prompted to submit a request.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Rename</strong></p></td>
<td align="left"><p>Change the name of the selected template.</p></td>
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
<td align="left"><p>Update the display of the Group Policy Management Console to incorporate any changes. Some changes are not visible until the display is refreshed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Help</strong></p></td>
<td align="left"><p>Display help for Advanced Group Policy Management (AGPM).</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Contents Tab](contents-tab.md)

-   [Performing Editor Tasks](performing-editor-tasks.md)

-   [Performing Reviewer Tasks](performing-reviewer-tasks.md)

 

 





