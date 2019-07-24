---
title: Delegate Access to a GPO
description: Delegate Access to a GPO
author: mjcaparas
ms.assetid: f1d6bb6c-d5bf-4080-a6cb-32774689f804
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delegate Access to a GPO


An Approver can delegate the management of a controlled Group Policy object (GPO) that was **created by that Approver**. Like an AGPM Administrator (Full Control), the Approver can delegate access to such a GPO, so selected Editors can edit it, Reviewers can review it, and other Approvers can approve it. By default, an Approver cannot delegate access to GPOs created by another Group Policy administrator.

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO, or a user account with the necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delegate the management of a controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Controlled** tab to display controlled GPOs, and then click the GPO to delegate.

3.  Click the **Add** button, select the users or groups to be permitted access, and then click **OK**.

4.  To customize the permissions for each, click the **Advanced** button on the **Contents** tab and check role permissions to allow or deny. (For more detailed control, click **Advanced** in the **Permissions** dialog box.)

5.  Click **Apply**, and then click **OK** in the **Permissions** dialog box.

### Additional considerations

-   By default, you must be the Approver who created or controlled the GPO or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** permission for the domain and **Modify Security** permission for the GPO.

### Additional references

-   [Creating, Controlling, or Importing a GPO](creating-controlling-or-importing-a-gpo-approver.md)

 

 





