---
title: History Window
description: History Window
author: mjcaparas
ms.assetid: 5bea62e7-d267-40b2-a66d-fb1be7373a1c
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


The history of a Group Policy Object (GPO) can be displayed by double-clicking a GPO or by right-clicking a GPO and then clicking **History**. It is also displayed in the Group Policy Management Console (GPMC) as a tab for each GPO.

The history provides a record of events in the lifetime of the selected GPO. From the **History** window, you can obtain a report of the settings in a version of the GPO, compare multiple versions of a GPO, or roll back to an earlier version of a GPO.

## Filtering events in the History window


The tabs within the **History** window filter the states in the history of the GPO.

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
<td align="left"><p><strong>All States</strong></p></td>
<td align="left"><p>Display all states in the history of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Unique Versions</strong></p></td>
<td align="left"><p>Display only unique versions of the GPO checked into the archive. The version deployed to the production environment, shortcuts to unique versions, and informational states are omitted from this list.</p></td>
</tr>
</tbody>
</table>



## Event information


Information is provided for each state in the history of the GPO.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">GPO attribute</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Change Date</strong></p></td>
<td align="left"><p>Time stamp of when the action in the <strong>State</strong> column was performed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>State</strong></p></td>
<td align="left"><p>A state in the history of the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Changed By</strong></p></td>
<td align="left"><p>The person who checked in or deployed the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Comment</strong></p></td>
<td align="left"><p>A comment entered by the person who checked in or deployed a GPO at the time that this version was changed, useful for identifying the specifics of the version in case of the need to roll back to an earlier version.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Deletable</strong></p></td>
<td align="left"><p>Whether this version of the GPO can be deleted if the number of unique versions of each GPO retained in the archive is limited.</p>
<div class="alert">
<strong>Note</strong><br/><p>You can change whether a version of a GPO can be deleted by right-clicking the GPO and then clicking <strong>Do Not Allow Deletion</strong> or <strong>Allow Deletion</strong>.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Computer Version</strong></p></td>
<td align="left"><p>Automatically generated version of the Computer Configuration part of the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>User Version</strong></p></td>
<td align="left"><p>Automatically generated version of the User Configuration part of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>GPO Status</strong></p></td>
<td align="left"><p>The Computer Configuration and the User Configuration can be managed separately from each other. This status shows which portions of the GPO are enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Source GPO Information</strong></p></td>
<td align="left"><p>For a GPO that has been imported from another forest, the original GPO name, domain, and user and date associated with the last change.</p></td>
</tr>
</tbody>
</table>



## Reports


The **Settings** and **Differences** buttons display reports about GPO settings for the GPO version or versions selected. Also, right-clicking a GPO version or versions provides the option to display XML-based reports.

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

-   Some changes to settings may cause an item to be reported as two items (one present only in the first GPO, one present only in the second), instead of one item that has changed.

### Additional references

-   [Contents Tab](contents-tab-agpm40.md)









