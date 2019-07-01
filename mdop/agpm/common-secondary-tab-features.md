---
title: Common Secondary Tab Features
description: Common Secondary Tab Features
author: mjcaparas
ms.assetid: 44a15c28-944c-49c1-8534-115ce1c362ed
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Common Secondary Tab Features


Each secondary tab has two sections—**Group Policy objects** and **Groups and Users**.

## Group Policy objects section


The **Group Policy objects** section displays a filtered list of Group Policy objects (GPOs) and identifies the following characteristics for each GPO:

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
<td align="left"><p><strong>Name</strong></p></td>
<td align="left"><p>Name of the Group Policy object.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Computer (Comp.)</strong></p></td>
<td align="left"><p>Automatically generated version of the Computer Configuration portion of the GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>User</strong></p></td>
<td align="left"><p>Automatically generated version of the User Configuration portion of the GPO.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>State</strong></p></td>
<td align="left"><p>The state of the selected GPO:</p>
<p><img src="images/36f6b687-f5cc-40d1-805f-b191d1fb1ace.gif" alt="Deployed GPO icon" /> <strong>Uncontrolled:</strong> Not managed by AGPM.</p>
<p><img src="images/57b610a5-1c71-4d26-9173-d04abd495fcc.gif" alt="Checked in GPO icon" /> <strong>Checked In:</strong> Available for authorized Editors to check out for editing or for a Group Policy administrator to deploy.</p>
<p><img src="images/8e7a7c4e-809a-435a-8b29-30d797936210.gif" alt="Checked out GPO icon" /> <strong>Checked Out:</strong> Currently being edited. Unavailable for other Editors to check out until the Editor who checked it out or an AGPM Administrator checks it in.</p>
<p><img src="images/0840a6a3-54a6-4528-98a9-7b122243c1a5.gif" alt="Pending GPO icon" /> <strong>Pending:</strong> Awaiting approval from a Group Policy administrator before being created, controlled, deployed, or deleted.</p>
<p><img src="images/57b610a5-1c71-4d26-9173-d04abd495fcc.gif" alt="Checked in GPO icon" /> <strong>Deleted:</strong> Deleted from the archive, but still able to be restored.</p>
<p><img src="images/9b65829d-253c-4f30-9295-c816a6521ed2.gif" alt="Template icon" /> <strong>Template:</strong> A static version of a GPO for use as a starting point when creating new GPOs.</p>
<p><img src="images/cd349b8d-c4d8-45ff-b17f-7db882502c58.gif" alt="Default template icon" /> <strong>Template (default):</strong> By default, this template is the starting point used when creating a new GPO.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>GPO Status</strong></p></td>
<td align="left"><p>The Computer Configuration and the User Configuration can be managed separately. The GPO Status indicates which portions of the GPO are enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>WMI Filter</strong></p></td>
<td align="left"><p>Display any WMI filters that are applied to this GPO. WMI filters are managed under the <strong>WMI Filters</strong> node for the domain in the console tree of the GPMC.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Modified</strong></p></td>
<td align="left"><p>For a controlled GPO, the most recent date when it was checked in after being modified or checked out to be modified. For an uncontrolled GPO, the date when it was last modified.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Owner</strong></p></td>
<td align="left"><p>The Editor who checked in or the Approver who deployed the selected GPO.</p></td>
</tr>
</tbody>
</table>

 

## Groups and Users section


When a GPO is selected, the **Groups and Users** section displays a list of the groups and users with access to that GPO. The allowed permissions and inheritance are displayed for each group or user. An AGPM Administrator can configure permissions using either standard AGPM roles (Editor, Approver, and Reviewer) or a customized combination of permissions.

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

-   For information about roles and permissions related to specific tasks, see the tasks under [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md), [Performing Editor Tasks](performing-editor-tasks.md), [Performing Approver Tasks](performing-approver-tasks.md), and [Performing Reviewer Tasks](performing-reviewer-tasks.md).

### Additional references

-   [Contents Tab](contents-tab.md)

 

 





