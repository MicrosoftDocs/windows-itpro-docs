---
title: Delegate Access to an Individual GPO
description: Delegate Access to an Individual GPO
author: dansimp
ms.assetid: b2a7d550-14bf-4b41-b6e4-2cc091eedd2d
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delegate Access to an Individual GPO


As an AGPM Administrator (Full Control), you can delegate the management of a controlled Group Policy object (GPO), so selected groups and Editors can edit it, Reviewers can review it, and Approvers can approve it.

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO, or a user account with the necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delegate the management of a controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Controlled** tab to display controlled GPOs, and then click the GPO to delegate.

3.  Click the **Add** button, select the users or groups to be permitted access, and then click **OK**.

4.  To customize the permissions for each user or group, click the **Advanced** button on the **Contents** tab and check role permissions to allow or deny. (For more detailed control, click **Advanced** in the **Permissions** dialog box.)

5.  Click **Apply**, and then click **OK** in the **Permissions** dialog box.

### Additional considerations

-   By default, you must be the Approver who created or controlled the GPO or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** permission for the domain and **Modify Security** permission for the GPO.

-   To delegate read access to Group Policy administrators who use AGPM, you must grant them **List Contents** as well as **Read Settings** permissions. This enables them to view GPOs on the **Contents** tab of AGPM. Set the permission to apply to **This object and nested objects**. Other permissions must be explicitly delegated.

-   Editors must have **Read** permission for the deployed copy of a GPO to make full use of Group Policy Software Installation.

-   Membership in the Group Policy Creator Owners group should be restricted so that it is not used to circumvent AGPM management of access to GPOs. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md)

 

 





