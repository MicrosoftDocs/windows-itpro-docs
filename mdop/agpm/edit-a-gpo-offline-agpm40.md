---
title: Edit a GPO Offline
description: Edit a GPO Offline
author: mjcaparas
ms.assetid: 9c75eb3c-d4d5-41e0-b65e-8b4464a42cd9
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Edit a GPO Offline


To make changes to a controlled Group Policy Object (GPO), you must first check out a copy of the GPO from the archive. No one else will be able to modify the GPO until it is checked in again, preventing the introduction of conflicting changes by multiple Group Policy administrators. When you have finished modifying the GPO, you check it into the archive so that it can be reviewed and deployed to the production environment.

A user account with the Editor or AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO, or a user account with the necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

## Editing a GPO offline


To edit a GPO, you check out the GPO from the archive, edit the GPO offline, and then check the GPO into the archive so that it can be reviewed and deployed (or modified by other Editors).

-   [Check out a GPO from the archive for editing](#bkmk-checkout)

-   [Edit a GPO offline](#bkmk-edit)

-   [Check a GPO into the archive](#bkmk-checkin)

### <a href="" id="bkmk-checkout"></a>

**To check out a GPO from the archive for editing**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab, click the **Controlled** tab to display the controlled GPOs.

3.  Right-click the GPO to be edited, and then click **Check Out**.

4.  Type a comment to be displayed in the History of the GPO while it is checked out, and then click **OK**.

5.  When the **Progress** window indicates that overall progress is complete, click **Close**. On the **Controlled** tab, the state of the GPO is now identified as **Checked Out**.

### <a href="" id="bkmk-edit"></a>

**To edit a GPO offline**

1.  On the **Controlled** tab, right-click the GPO to be edited, and then click **Edit**.

2.  In the **Group Policy Management Editor** window, make changes to an offline copy of the GPO.

    **Note**  
    To disable all Computer Configuration settings or all User Configuration settings, right-click the GPO in the **Group Policy Management Editor** window and click **Properties**. Select **Disable Computer Configuration settings** or **Disable User Configuration settings** as appropriate.

     

3.  When you have finished modifying the GPO, close the **Group Policy Management Editor** window.

### <a href="" id="bkmk-checkin"></a>

**To check a GPO into the archive**

1.  On the **Controlled** tab:

    -   If you have made no changes to the GPO, right-click the GPO and click **Undo Check Out**, and then click **Yes** to confirm.

    -   If you have made changes to the GPO, right-click the GPO and click **Check In**.

2.  Type a comment to be displayed in the audit trail of the GPO, and then click **OK**.

3.  When the **Progress** window indicates that overall progress is complete, click **Close**. On the **Controlled** tab, the state of the GPO is identified as **Checked In**.

### Additional considerations

-   To check out and edit a GPO, by default you must be the Approver who created or controlled the GPO, an Editor, or an AGPM Administrator (Full Control). Specifically, you must have **List Contents** and **Edit Settings** permissions for the GPO. Additionally, to edit the GPO you must be the individual who has checked out the GPO.

-   To check in a GPO, by default, you must be an Editor, an Approver, or an AGPM Administrator (Full Control). Specifically, you must have **List Contents** and either **Edit Settings** or **Deploy GPO** permissions for the GPO. If you are not an Approver or AGPM Administrator (or other Group Policy administrator with **Deploy GPO** permission), you must be the Editor who has checked out the GPO.

-   When editing a GPO, any Group Policy Software Installation upgrade of a package in another GPO should reference the deployed GPO, and not the checked-out copy.

### Additional references

-   [Editing a GPO](editing-a-gpo-agpm40.md)

-   Reviewing a GPO

    -   [Review GPO Settings](review-gpo-settings-agpm40.md)

    -   [Review GPO Links](review-gpo-links-agpm40.md)

    -   [Identify Differences Between GPOs, GPO Versions, or Templates](identify-differences-between-gpos-gpo-versions-or-templates-agpm40.md)

-   Deploying a GPO

    -   [Request Deployment of a GPO](request-deployment-of-a-gpo-agpm40.md)

    -   [Deploy a GPO](deploy-a-gpo-agpm40.md)

 

 





