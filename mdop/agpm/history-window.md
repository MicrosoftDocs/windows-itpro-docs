---
title: History Window
description: History Window
author: mjcaparas
ms.assetid: f11f9ad9-bffe-4c56-8c46-fe9c0a8e55c1
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# History Window


The history of a Group Policy object (GPO) can be displayed by double-clicking a GPO or by right-clicking a GPO and then clicking **History**. It is also displayed in the **Group Policy Management Console** (GPMC) as a tab for each GPO.

The history provides a list of all versions of the selected GPO saved within the archive. From the **History** window, you can obtain a report of the settings within a GPO, compare multiple versions of a GPO, or roll back to a previous version of a GPO.

## Filtering events in the History window


The tabs within the **History** window filter the events displayed.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Tabs</th>
<th align="left">Filtering</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Show All</strong></p></td>
<td align="left"><p>Display all versions of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Checked In</strong></p></td>
<td align="left"><p>Display only checked-in versions of the GPO. The deployed version is omitted from this list.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Labels Only</strong></p></td>
<td align="left"><p>Display only GPOs that have labels associated with them.</p></td>
</tr>
</tbody>
</table>

 

## Event information


Information is provided for each event in the history of the selected GPO.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">GPO Characteristic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Computer</strong></p></td>
<td align="left"><p>Automatically generated version of the Computer Configuration portion of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>User</strong></p></td>
<td align="left"><p>Automatically generated version of the User Configuration portion of the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Time</strong></p></td>
<td align="left"><p>Timestamp of the version of the GPO when the action in the status field was performed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>State</strong></p></td>
<td align="left"><p>The state of the selected version of the GPO:</p>
<p><img src="images/36f6b687-f5cc-40d1-805f-b191d1fb1ace.gif" alt="Deployed GPO icon" /> <strong>Deployed</strong>: This version of the GPO is currently live in the production environment.</p>
<p><img src="images/57b610a5-1c71-4d26-9173-d04abd495fcc.gif" alt="Checked in GPO icon" /> <strong>Checked In</strong>: This version of the GPO is available for authorized Editors to check out for editing or for a Group Policy administrator to deploy.</p>
<p><img src="images/8e7a7c4e-809a-435a-8b29-30d797936210.gif" alt="Checked out GPO icon" /> <strong>Checked Out</strong>: This version of the GPO is currently checked out by an Editor and is unavailable for other Editors. (The checked out state is not recorded in the <strong>History</strong> except to indicate if a GPO is currently checked out.)</p>
<p><img src="images/327623bd-0842-4372-be1f-bdc4b8c3481c.gif" alt="Created GPO icon" /> <strong>Created</strong>: Identifies the date and time of the initial creation of the GPO.</p>
<p><img src="images/8356fcdc-1279-425b-ab14-a23bcfe391da.gif" alt="Labeled GPO icon" /> <strong>Labeled</strong>: Identifies a labeled version of the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>GPO Status</strong></p></td>
<td align="left"><p>The Computer Configuration and the User Configuration can be managed separately from each other. This status shows which portions of the GPO are enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Owner</strong></p></td>
<td align="left"><p>The person who checked in or deployed the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Comment</strong></p></td>
<td align="left"><p>A comment entered by the owner of a GPO at the time that this version was modified. Useful for identifying the specifics of the version in case of the need to roll back to a previous version.</p></td>
</tr>
</tbody>
</table>

 

## Reports


Depending on whether a single GPO version or multiple GPO versions are selected, the **Settings** and **Differences** buttons display reports on GPO settings. Right-clicking GPO versions provides the option to display XML-based reports as well.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Button</th>
<th align="left">Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Settings</strong></p></td>
<td align="left"><p>Generate an HTML-based report displaying the settings within the selected version of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Differences</strong></p></td>
<td align="left"><p>Generate an HTML-based report comparing the settings within multiple selected versions of the GPO.</p></td>
</tr>
</tbody>
</table>

 

### Key to difference reports

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Symbol</th>
<th align="left">Meaning</th>
<th align="left">Color</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>None</p></td>
<td align="left"><p>Item exists with identical settings in both GPOs</p></td>
<td align="left"><p>Varies with level</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>[#]</strong></p></td>
<td align="left"><p>Item exists in both GPOs, but with changed settings</p></td>
<td align="left"><p>Blue</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>[-]</strong></p></td>
<td align="left"><p>Item exists only in the first GPO</p></td>
<td align="left"><p>Red</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>[+]</strong></p></td>
<td align="left"><p>Item exists only in the second GPO</p></td>
<td align="left"><p>Green</p></td>
</tr>
</tbody>
</table>

 

-   For items with changed settings, the changed settings are identified when the item is expanded. The value for the attribute in each GPO is displayed in the same order that the GPOs are displayed in the report.

-   Some changes to settings may cause an item to be reported as two different items (one present only in the first GPO, one present only in the second), rather than as one item that has changed.

### Additional references

-   [Contents Tab](contents-tab.md)

 

 





