---
title: Delegate Domain-Level Access
description: Delegate Domain-Level Access
author: dansimp
ms.assetid: 64c8e773-38cc-4991-9ed2-5a801094d06e
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delegate Domain-Level Access


Set up delegation for your environment so Group Policy administrators have the appropriate access to and control over Group Policy objects (GPOs). There are baseline permissions you can apply to make the operation of Advanced Group Policy Management (AGPM) more efficient. You can grant permissions in any manner that meets the needs of your organization.

A user account with the AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To delegate access so users and groups have appropriate permissions to all GPOs throughout a domain**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  Click the **Domain Delegation** tab, then click the **Advanced** button.

3.  In the **Permissions** dialog box, click the check box for each role to be assigned to an individual, and then click the **Advanced** button.

    **Note**  
    Editor and Approver include Reviewer permissions.

     

4.  In the **Advanced Security Settings** dialog box, select a Group Policy administrator, and then click **Edit**.

5.  For **Apply onto**, select **This object and nested objects**, configure any special permissions beyond the standard AGPM roles, then click **OK** in the **Permission** **Entry** dialog box.

6.  In the **Advanced Security Settings** dialog box, click **OK**.

7.  In the **Permissions** dialog box, click **OK**.

### Additional considerations

-   By default, you must be an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **Modify Security** permission for the domain.

-   To delegate read access to Group Policy administrators who use AGPM, you must grant them **List Contents** as well as **Read Settings** permissions. This enables them to view GPOs on the **Contents** tab of AGPM. Set the permission to apply to **This object and nested objects**. Other permissions must be explicitly delegated.

-   Editors must be granted **Read** permission for the deployed copy of a GPO to make full use of Group Policy Software Installation.

-   Membership in the Group Policy Creator Owners group should be restricted so that it is not used to circumvent AGPM management of access to GPOs. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks.md)

 

 





