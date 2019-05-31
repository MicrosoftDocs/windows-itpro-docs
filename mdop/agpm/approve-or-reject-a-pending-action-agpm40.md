---
title: Approve or Reject a Pending Action
description: Approve or Reject a Pending Action
author: mjcaparas
ms.assetid: 078ea8b5-9ac5-45fc-9ac1-a1aa629c10b4
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Approve or Reject a Pending Action


The core responsibility of an Approver is to evaluate and then approve or reject requests for Group Policy Object (GPO) creation, deployment, and deletion from Editors or Reviewers who do not have permission to complete those actions. Reports can assist an Approver with evaluating a new version of a GPO.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To approve or reject a pending request**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Pending** tab to display the pending GPOs.

3.  Right-click a pending GPO, and then click either **Approve** or **Reject**.

4.  If approving deployment, click **Advanced** in the **Approve Pending Operation** dialog box to review links to the GPO. Pause the mouse pointer on an item in the tree to display details.

    -   By default, all links to the GPO will be restored.

    -   To prevent a link from being restored, clear the check box for that link.

    -   To prevent all links from being restored, clear the **Restore Links** check box in the **Deploy GPO** dialog box.

5.  Click **Yes** or **OK** to confirm approval or rejection of the pending action. If you have approved the request, the GPO is moved to the appropriate tab for the action performed.

    **Note**  
    If an Approver's e-mail address is included in the **To e-mail address** field on the **Domain** **Delegation** tab, the Approver will receive e-mail from the AGPM alias when an Editor or Reviewer submits a request.

     

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have the permissions required to perform the request that you are approving.

### Additional references

-   [Performing Approver Tasks](performing-approver-tasks-agpm40.md)

 

 





