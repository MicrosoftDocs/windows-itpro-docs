---
title: Checklist Create, Edit, and Deploy a GPO
description: Checklist Create, Edit, and Deploy a GPO
author: mjcaparas
ms.assetid: a7a17706-304a-4455-9ada-52508ec620f1
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Checklist: Create, Edit, and Deploy a GPO


In an environment where multiple people make changes to Group Policy Objects (GPOs) using Advanced Group Policy Management (AGPM), an AGPM Administrator (Full Control) delegates permission to Editors, Approvers, and Reviewers, either as groups or as individuals. The following is a typical GPO development process for an Editor and an Approver.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Editor requests the creation of a new GPO or an Approver creates a new GPO.</p></td>
<td align="left"><p>[Request the Creation of a New Controlled GPO](request-the-creation-of-a-new-controlled-gpo-agpm30ops.md)</p>
<p>[Create a New Controlled GPO](create-a-new-controlled-gpo-agpm30ops.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Approver approves the creation of the GPO if it was requested by an Editor.</p></td>
<td align="left"><p>[Approve or Reject a Pending Action](approve-or-reject-a-pending-action-agpm30ops.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Editor checks out a copy of the GPO from the archive, so no one else can modify the GPO. Editor makes changes to the GPO, and then checks the modified GPO into the archive.</p></td>
<td align="left"><p>[Edit a GPO Offline](edit-a-gpo-offline-agpm30ops.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Editor requests deployment of the GPO to the production environment.</p></td>
<td align="left"><p>[Request Deployment of a GPO](request-deployment-of-a-gpo-agpm30ops.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Reviewers, such as Approvers or Editors, analyze the GPO.</p></td>
<td align="left"><p>[Performing Reviewer Tasks](performing-reviewer-tasks-agpm30ops.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Approver approves and deploys the GPO to the production environment or rejects the GPO.</p></td>
<td align="left"><p>[Approve or Reject a Pending Action](approve-or-reject-a-pending-action-agpm30ops.md)</p></td>
</tr>
</tbody>
</table>

 

### Additional references

[Operations Guide for Microsoft Advanced Group Policy Management 3.0](operations-guide-for-microsoft-advanced-group-policy-management-30-agpm30ops.md)

 

 





