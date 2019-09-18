---
title: Request Deletion of a GPO
description: Request Deletion of a GPO
author: dansimp
ms.assetid: 2410f7a1-ccca-44cf-ab26-76ad474409e7
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Request Deletion of a GPO


Unless you are an Approver or an AGPM Administrator (Full Control), you must request the deletion of a Group Policy Object (GPO).

A user account with the Editor role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To request the deletion of a controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Right-click the GPO you want to delete, and then click **Delete**.

    -   To delete the GPO from the archive while leaving the deployed version of the GPO untouched in the production environment, click **Delete GPO from archive only**.

    -   To delete the GPO from both the archive and production environment of the domain, click **Delete GPO from archive and production**.

4.  Unless you have special permission to delete GPOs, you must submit a request for deletion of the deployed GPO. To receive a copy of the request, type your e-mail address in the **Cc** field. Type a comment to be displayed in the audit trail for the GPO, and then click **Submit**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. The GPO is displayed on the list of GPOs on the **Pending** tab. When an Approver has approved your request, the GPO will be moved from the **Pending** tab to the **Recycle Bin** tab, where it can be restored or destroyed.

### Additional considerations

-   By default, you must be an Editor to perform this procedure. Specifically, you must have **List Contents** and **Edit Settings** permissions for the GPO.

-   To withdraw your request before it has been approved, click the **Pending** tab. Right-click the GPO, and then click **Withdraw**. The GPO will be returned to the **Controlled** tab.

-   To delete an uncontrolled GPO from the production environment without first controlling it, in the **Group Policy Management Console**, click **Forest**, click **Domains**, click **&lt;MyDomain&gt;**, and then click **Group Policy Objects**. Right-click the uncontrolled GPO, and then click **Delete**.

### Additional references

-   [Deleting or Restoring a GPO](deleting-or-restoring-a-gpo-agpm40.md)

 

 





