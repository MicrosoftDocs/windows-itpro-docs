---
title: Restore a Deleted GPO
description: Restore a Deleted GPO
author: dansimp
ms.assetid: 853feb0a-d2d9-4be9-a07e-e113a56a9968
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Restore a Deleted GPO


Approvers can restore a deleted Group Policy Object (GPO) from the Recycle Bin, returning it to the archive.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To restore a deleted GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Recycle Bin** tab to display the deleted GPOs.

3.  Right-click the GPO to restore, and then click **Restore**.

4.  Type a comment to be displayed in the history of the GPO, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the **Recycle Bin** tab and is displayed on the **Controlled** tab.

**Note**  
If a GPO was deleted from the production environment, restoring it to the archive will not automatically redeploy it to the production environment. To return the GPO to the production environment, deploy the GPO. For information, see [Deploy a GPO](deploy-a-gpo-agpm30ops.md).

 

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and either **Deploy GPO** or **Delete GPO** permissions for the GPO.

### Additional references

-   [Deleting, Restoring, or Destroying a GPO](deleting-restoring-or-destroying-a-gpo-agpm30ops.md)

 

 





