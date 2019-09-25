---
title: Delete a Controlled GPO
description: Delete a Controlled GPO
author: dansimp
ms.assetid: 2a461018-aa0b-4ae3-b079-efc554ca4a3d
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delete a Controlled GPO


Approvers can delete a controlled Group Policy Object (GPO), moving it to the Recycle Bin.

A user account with the Approver or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delete a controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Right-click the GPO you want to delete, and then click **Delete**.

    -   To delete the GPO from the archive while leaving the deployed version of the GPO untouched in the production environment, click **Delete GPO from archive only**.

    -   To delete the GPO from both the archive and production environment of the domain, click **Delete GPO from archive and production**.

4.  Type a comment to be displayed in the audit trail for the GPO, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the **Controlled** tab and is displayed on the **Recycle Bin** tab, where it can be restored or destroyed. If the GPO was deleted only from the archive, it is also displayed on the **Uncontrolled** tab.

### Additional considerations

-   By default, you must be an Approver or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Delete GPO** permissions for the GPO.

-   To delete an uncontrolled GPO from the production environment without first controlling it, in the **Group Policy Management Console**, click **Forest**, click **Domains**, click **&lt;MyDomain&gt;**, and then click **Group Policy Objects**. Right-click the uncontrolled GPO, and then click **Delete**.

### Additional references

-   [Deleting, Restoring, or Destroying a GPO](deleting-restoring-or-destroying-a-gpo-agpm40.md)

 

 





