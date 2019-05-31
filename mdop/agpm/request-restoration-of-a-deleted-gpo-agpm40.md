---
title: Request Restoration of a Deleted GPO
description: Request Restoration of a Deleted GPO
author: mjcaparas
ms.assetid: bac5ca3b-be47-49b5-bf1b-96280625fda8
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Request Restoration of a Deleted GPO


Unless you are an Approver or an AGPM Administrator (Full Control), you must request the restoration of a deleted Group Policy Object (GPO) from the Recycle Bin to return it to the archive.

A user account with the Editor role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To request the restoration of a deleted GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Recycle Bin** tab to display the deleted GPOs.

3.  Right-click the GPO you want to restore, and then click **Restore**.

4.  Unless you have special permission to restore GPOs, you must submit a request for restoration of the deleted GPO. To receive a copy of the request, type your e-mail address in the **Cc** field. Type a comment to be displayed in the audit trail for the GPO, and then click **Submit**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is removed from the **Recycle Bin** tab and is displayed on the **Controlled** tab.

**Note**  
If a GPO was deleted from the production environment, restoring it to the archive will not automatically redeploy it to the production environment. To return the GPO to the production environment, deploy the GPO. For information, see [Request Deployment of a GPO](request-deployment-of-a-gpo-agpm40.md).

 

### Additional considerations

-   By default, you must be an Editor to perform this procedure. Specifically, you must have **List Contents** and **Edit Settings** permission for the GPO.

-   To withdraw your request before it has been approved, click the **Pending** tab. Right-click the GPO, and then click **Withdraw**. The GPO will be returned to the **Recycle Bin** tab.

### Additional references

-   [Deleting or Restoring a GPO](deleting-or-restoring-a-gpo-agpm40.md)

 

 





