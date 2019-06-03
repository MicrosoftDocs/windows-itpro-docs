---
title: Delegate Domain-Level Access to the Archive
description: Delegate Domain-Level Access to the Archive
author: mjcaparas
ms.assetid: d232069e-71d5-4b4d-b22e-bef11de1cfd4
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delegate Domain-Level Access to the Archive


Set up delegation for your environment so that Group Policy administrators have the appropriate access to and control over Group Policy Objects (GPOs) in the archive. There are baseline permissions you can apply to make operation more efficient. You can grant permissions in any manner that meets the needs of your organization.

A user account with the AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management (AGPM) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delegate access so that users and groups have appropriate permissions to all GPOs throughout a domain**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  Click the **Domain Delegation** tab, and configure access to all GPOs in the domain:

    1.  To add access for a user or group, click the **Add** button, select the user or group, and click **OK**. In the **Add Group or User** dialog box, select a role and click **OK**.

    2.  To remove access for a user or group, select the user or group, and click the **Remove** button.

    3.  To modify the roles and permissions delegated to a user or group, select click the **Advanced** button. In the **Permissions** dialog box, select the user or group, select the check box for each role to be assigned to that user or group, and then click **OK**.

        **Note**  
        Editor and Approver include Reviewer permissions.

         

### Additional considerations

-   By default, you must be an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **Modify Security** permission for the domain.

-   To delegate read access to Group Policy administrators who use AGPM, you must grant them **List Contents** as well as **Read Settings** permissions. This enables them to view GPOs on the **Contents** tab of AGPM. Other permissions must be explicitly delegated.

-   Editors must be granted **Read** permission for the deployed copy of a GPO to make full use of Group Policy Software Installation.

-   Membership in the Group Policy Creator Owners group should be restricted, so it is not used to circumvent AGPM management of access to GPOs. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Managing the Archive](managing-the-archive.md)

 

 





