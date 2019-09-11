---
title: Delegate Access to an Individual GPO in the Archive
description: Delegate Access to an Individual GPO in the Archive
author: dansimp
ms.assetid: 7b37b188-2b6b-4e52-be97-8ef899e9893b
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delegate Access to an Individual GPO in the Archive


As an AGPM Administrator (Full Control), you can delegate the management of a controlled Group Policy Object (GPO) in the archive so that selected groups and Editors can edit it, Reviewers can review it, and Approvers can approve it.

A user account with the AGPM Administrator (Full Control) role, the user account of the Approver who created the GPO, or a user account with the necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delegate the management of a controlled GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click the **Controlled** tab to display controlled GPOs, and then click the GPO to delegate:

    1.  To add access for a user or group, click the **Add** button, select the user or group, and click **OK**. In the **Add Group or User** dialog box, select a role and click **OK**.

    2.  To remove access for a user or group, select the user or group, and click the **Remove** button.

        **Note**  
        If a user or group inherits domain-wide access, the **Remove** button is unavailable. You can modify domain-wide access on the **Domain Delegation** tab.

         

    3.  To modify the roles and permissions delegated to a user or group, click the **Advanced** button. In the **Permissions** dialog box, select the user or group, select the check box for each role to be assigned to that user or group, and click **OK**.

        **Note**  
        Editor and Approver include Reviewer permissions.

         

### Additional considerations

-   By default, you must be the Approver who created or controlled the GPO or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** permission for the domain and **Modify Security** permission for the GPO.

-   To delegate read access to Group Policy administrators who use AGPM, you must grant them **List Contents** as well as **Read Settings** permissions. This enables them to view GPOs on the **Contents** tab of AGPM. Other permissions must be explicitly delegated.

-   Editors must have **Read** permission for the deployed copy of a GPO to make full use of Group Policy Software Installation.

-   Membership in the Group Policy Creator Owners group should be restricted, so it is not used to circumvent AGPM management of access to GPOs. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Managing the Archive](managing-the-archive.md)

 

 





