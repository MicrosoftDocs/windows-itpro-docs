---
title: Delete a GPO
description: Delete a GPO
author: mjcaparas
ms.assetid: 85fca371-5707-49c1-aa51-813fc3a58dfc
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delete a GPO


Advanced Group Policy Management (AGPM) enables Approvers to delete a controlled Group Policy object (GPO), moving it to the Recycle Bin.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delete a controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Right-click the GPO to delete, and then click **Delete**.

    -   To delete the GPO from the archive while leaving the deployed version of the GPO untouched in the production environment, click **Delete GPO from archive only (uncontrol)**.

    -   To delete the GPO from both the archive and production environment, click **Delete GPO from archive and production**.

4.  Type a comment to be displayed in the audit trail for the GPO, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the **Controlled** tab and is displayed on the **Recycle Bin** tab, where it can be restored or destroyed. If the GPO was deleted only from the archive, it is also displayed on the **Uncontrolled** tab.

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to delete a deployed GPO. Specifically, you must have **List Contents** and **Delete GPO** permissions for the GPO.

-   By default, you must be an Editor, an Approver, or an AGPM Administrator (Full Control) to delete a GPO from the archive. Specifically, you must have **List Contents** and either **Edit Settings** or **Delete GPO** permissions for the GPO.

-   To delete an uncontrolled GPO from the production environment without first controlling it, in the **Group Policy Management Console**, click **Forest**, click **Domains**, click **&lt;MyDomain&gt;**, and then click **Group Policy Objects**. Right-click the uncontrolled GPO, and then click **Delete**.

### Additional references

-   [Deleting, Restoring, or Destroying a GPO](deleting-restoring-or-destroying-a-gpo.md)

 

 





