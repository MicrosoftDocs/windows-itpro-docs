---
title: Controlled Tab
description: Controlled Tab
author: mjcaparas
ms.assetid: 8995a9e1-ace4-40b7-a47b-e1e9924541ba
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Controlled Tab


The **Controlled** tab:

-   Displays a list of Group Policy objects (GPOs) managed by Advanced Group Policy Management (AGPM).

-   Provides a shortcut menu with commands for managing GPOs and for displaying the history and reports for GPOs.

-   Displays a list of the groups and users who have permission to access a selected GPO.

Right-clicking the **Group Policy Objects** list on this tab displays a shortcut menu, including whichever of the following options are applicable.

## Control and history


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
<td align="left"><p>Create a new GPO with change control managed through AGPM and deploy it to the production environment. If you do not have permission to create a GPO, you will be prompted to submit a request. (This option is displayed if no GPO is selected when right-clicking in the <strong>Group Policy Objects</strong> list.)</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>History</strong></p></td>
<td align="left"><p>Open a window listing all versions of the selected GPO saved within the archive. From the history, you can obtain a report of the settings within a GPO, compare two versions of a GPO, compare a GPO to a template, or roll back to a previous version of a GPO.</p></td>
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
<td align="left"><p>Generate an HTML-based or XML-based report displaying the settings within the selected GPO or display links to the selected GPO(s) from organizational units as of when the GPO(s) was most recently controlled, imported, or checked in.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Differences</strong></p></td>
<td align="left"><p>Generate an HTML-based or XML-based report comparing the settings within two selected GPOs or within the selected GPO and a template.</p></td>
</tr>
</tbody>
</table>

 

## Editing


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
<td align="left"><p><strong>Edit</strong></p></td>
<td align="left"><p>Open the <strong>Group Policy Object Editor</strong> to make changes to the selected GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Check Out</strong></p></td>
<td align="left"><p>Obtain a copy of the selected GPO from the archive for offline editing and prohibit anyone else from editing it until it is checked back into the archive. (Check Out can be overridden by an AGPM Administrator (Full Control).)</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Check In</strong></p></td>
<td align="left"><p>Check the edited version of the selected GPO into the archive, so other authorized Editors can make changes or an Approver can deploy it to the production environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Undo Check Out</strong></p></td>
<td align="left"><p>Return a checked out GPO to the archive without any changes.</p></td>
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
<td align="left"><p><strong>Import from Production</strong></p></td>
<td align="left"><p>For the selected GPO, copy the version in the production environment to the archive.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Delete</strong></p></td>
<td align="left"><p>Move the selected GPO to the Recycle Bin and indicate whether to leave the deployed version (if one exists) in production or to delete it as well as the version in the archive. If you do not have permission to delete a GPO, you will be prompted to submit a request.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Deploy</strong></p></td>
<td align="left"><p>Move the selected GPO that is checked into the archive to the production environment. This action makes it active on the network and overwrites the previously active version of the GPO if one existed. If you do not have permission to deploy a GPO, you will be prompted to submit a request.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Label</strong></p></td>
<td align="left"><p>Mark the selected GPO with a descriptive label (such as &quot;Known good&quot;) and comment for record keeping. Labels appear in the <strong>State</strong> column and comments in the <strong>Comment</strong> column of the <strong>History</strong> window, enabling you to easily identify previous versions of a GPO identified with a particular label, so you can roll back if a problem occurs.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Rename</strong></p></td>
<td align="left"><p>Change the name of the selected GPO. If the GPO has already been deployed, the name will be updated in the production environment when the GPO is redeployed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Save as Template</strong></p></td>
<td align="left"><p>Create a new template based on the settings of the selected GPO.</p></td>
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
<td align="left"><p>Display help for AGPM.</p></td>
</tr>
</tbody>
</table>

 

### Additional references

-   [Contents Tab](contents-tab.md)

-   [Performing Editor Tasks](performing-editor-tasks.md)

-   [Performing Approver Tasks](performing-approver-tasks.md)

-   [Performing Reviewer Tasks](performing-reviewer-tasks.md)

 

 





