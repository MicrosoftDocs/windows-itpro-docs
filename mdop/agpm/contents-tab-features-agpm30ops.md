---
title: Contents Tab Features
description: Contents Tab Features
author: mjcaparas
ms.assetid: 725f025a-c30a-4d07-add1-4e0ed9a1a5fd
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Contents Tab Features


Each secondary tab within the **Contents** tab has two sections—**Group Policy objects** and **Groups and Users**.

## Group Policy objects section


The **Group Policy objects** section displays a filtered list of Group Policy Objects (GPOs) and identifies the following attributes for each GPO:

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
<td align="left"><p><strong>Name</strong></p></td>
<td align="left"><p>Name of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>State</strong></p></td>
<td align="left"><p>The state of the selected GPO</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Changed By</strong></p></td>
<td align="left"><p>The Editor who checked in or the Approver who deployed the selected GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Change Date</strong></p></td>
<td align="left"><p>For a controlled GPO, the most recent date it was checked in after being modified or checked out to be modified. For an uncontrolled GPO, the date when it was last modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Comment</strong></p></td>
<td align="left"><p>A comment entered by the person who checked in or deployed a GPO at the time that it was modified. Useful for identifying the specifics of the version in case of the need to roll back to a previous version.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Computer Version</strong></p></td>
<td align="left"><p>Automatically generated version of the Computer Configuration portion of the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>User Version</strong></p></td>
<td align="left"><p>Automatically generated version of the User Configuration portion of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>GPO Status</strong></p></td>
<td align="left"><p>The Computer Configuration and the User Configuration can be managed separately. The GPO Status indicates which portions of the GPO are enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>WMI Filter</strong></p></td>
<td align="left"><p>Display any WMI filters that are applied to this GPO. WMI filters are managed under the <strong>WMI Filters</strong> folder for the domain in the console tree of the GPMC.</p></td>
</tr>
</tbody>
</table>

 

## Groups and Users section


When a GPO is selected, the **Groups and Users** section displays a list of the groups and users with access to that GPO. The allowed permissions and inheritance are displayed for each group or user. An AGPM Administrator can configure permissions using either standard AGPM roles (Editor, Approver, Reviewer, and AGPM Administrator) or a customized combination of permissions.

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
<td align="left"><p><strong>Add</strong></p></td>
<td align="left"><p>Add a new entry to the security descriptor. Any user or group in Active Directory can be added.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Remove</strong></p></td>
<td align="left"><p>Remove the selected entry from the Access Control List.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Properties</strong></p></td>
<td align="left"><p>Display the properties for the selected object. The properties page is the same one displayed for an object in <strong>Active Directory Users and Computers</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Advanced</strong></p></td>
<td align="left"><p>Open the <strong>Access Control List Editor</strong>.</p></td>
</tr>
</tbody>
</table>

 

### Additional considerations

-   For information about roles and permissions related to specific tasks, see the tasks under [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks-agpm30ops.md), [Performing Editor Tasks](performing-editor-tasks-agpm30ops.md), [Performing Approver Tasks](performing-approver-tasks-agpm30ops.md), and [Performing Reviewer Tasks](performing-reviewer-tasks-agpm30ops.md).

### Additional references

-   [Contents Tab](contents-tab-agpm30ops.md)

 

 





