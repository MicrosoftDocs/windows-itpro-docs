---
title: Domain Delegation Tab
description: Domain Delegation Tab
author: dansimp
ms.assetid: 523cdf39-f4b8-4d20-a917-3485756658ce
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Domain Delegation Tab


The **Domain Delegation** tab on the **Change Control** pane provides a list of Group Policy administrators who have domain-level access to the archive and indicates the roles of each. Additionally, this tab enables AGPM Administrators (Full Control) to configure domain-level permissions for Editors, Approvers, Reviewers, and other AGPM Administrators. There are two sections on the **Domain Delegation** tab—configuration of e-mail notification and role-based delegation for Advanced Group Policy Management (AGPM) at the domain level.

## Configuration of e-mail notification


The e-mail notification section of this tab identifies the Approvers that will receive notification when operations are pending in AGPM.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>From e-mail address</strong></p></td>
<td align="left"><p>The AGPM alias from which notification is sent to Approvers. In an environment with multiple domains, this can be the same alias throughout the environment or a different alias for each domain.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>To e-mail address</strong></p></td>
<td align="left"><p>A comma-delimited list of e-mail addresses of Approvers to whom notification is to be sent</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SMTP server</strong></p></td>
<td align="left"><p>The name of the e-mail server, such as mail.contoso.com</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>User name</strong></p></td>
<td align="left"><p>A user with access to the SMTP server</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Password</strong></p></td>
<td align="left"><p>User's password for authentication to the SMTP server</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Confirm password</strong></p></td>
<td align="left"><p>Confirm user's password</p></td>
</tr>
</tbody>
</table>

 

## Domain-level role-based delegation


The role-based delegation section of this tab displays and enables an AGPM Administrator to delegate allowed, denied, and inherited permissions for each group and user on the domain with access to the archive. An AGPM Administrator can configure domain-wide permissions using either standard AGPM roles (Editor, Approver, Reviewer, and AGPM Administrator) or a customized combination of permissions for each Group Policy administrator.

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
<td align="left"><p>Add a new entry to the security descriptor. Any users or groups in Active Directory can be added as Group Policy administrators.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Remove</strong></p></td>
<td align="left"><p>Remove the selected Group Policy administrators from the Access Control List.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Properties</strong></p></td>
<td align="left"><p>Display the properties for the selected Group Policy administrators.</p></td>
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

-   [User Interface: Advanced Group Policy Management](user-interface-advanced-group-policy-management-agpm30ops.md)

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks-agpm30ops.md)

 

 





