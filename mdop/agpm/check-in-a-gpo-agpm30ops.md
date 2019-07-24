---
title: Check In a GPO
description: Check In a GPO
author: mjcaparas
ms.assetid: 437397db-c94b-4940-b1a4-05442619ebee
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Check In a GPO


Ordinarily, Editors should check in Group Policy Objects (GPOs) that they have edited when their modifications are complete. (For details, see [Edit a GPO Offline](edit-a-gpo-offline-agpm30ops.md).) However, if the Editor is unavailable, an Approver can also check in a GPO.

A user account with the Editor, Approver, or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To check in a GPO that has been checked out by an Editor**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

    -   To discard any changes made by the Editor, right-click the GPO, click **Undo Check Out**, and then click **Yes** to confirm.

    -   To retain changes made by the Editor, right-click the GPO and then click **Check In**.

3.  Type a comment to be displayed in the audit trail of the GPO, and then click **OK**.

4.  When the **Progress** window indicates that overall progress is complete, click **Close**. On the **Controlled** tab, the state of the GPO is identified as **Checked In**.

### Additional considerations

-   By default, you must be an Editor, an Approver, or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and either **Edit Settings** or **Deploy GPO** permissions for the GPO. If you are not an Approver or AGPM Administrator (or other Group Policy administrator with **Deploy GPO** permission), you must be the Editor who has checked out the GPO.

### Additional references

-   [Performing Approver Tasks](performing-approver-tasks-agpm30ops.md)

-   [Edit a GPO Offline](edit-a-gpo-offline-agpm30ops.md)

 

 





