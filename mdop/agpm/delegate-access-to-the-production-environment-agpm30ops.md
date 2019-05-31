---
title: Delegate Access to the Production Environment
description: Delegate Access to the Production Environment
author: mjcaparas
ms.assetid: c1ebae2e-909b-4e64-b368-b7d3cc67b1eb
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Delegate Access to the Production Environment


You can change access to Group Policy Objects (GPOs) in the production environment, replacing any existing permissions on those GPOs. You can configure permissions at the domain level to either allow or prevent users from editing, deleting, or modifying the security of GPOs in the production environment when they are not using the **Change Control** folder in the Group Policy Management Console (GPMC).

**Note**  
-   Delegating access to the production environment does not affect users’ ability to link GPOs.

-   When GPOs are controlled or deployed, access for any other accounts except those with **Read** and **Apply** permissions is removed.

 

A user account that has either the necessary permissions in Advanced Group Policy Management (AGPM) or the role of AGPM Administrator (Full Control) is required to complete this procedure. Review the details in "Additional considerations" in this topic.

**To change access to GPOs in the production environment**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  Click the **Production Delegation** tab.

3.  To add permissions for a user or group that does not have access to the production environment, or to replace the permissions for a user or group that does have access:

    1.  Click **Add**, select a user or group, and then click **OK**.

    2.  Select permissions to delegate to that user or group for the production environment, and then click **OK**.

4.  To remove all permissions to the production environment for a user or group, select the user or group, click **Remove**, and then click **OK**.

### Additional considerations

-   By default, you must be an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **Modify Security** permission for the domain.

-   Permissions for the AGPM Service Account cannot be changed on the **Production Delegation** tab.

-   By default, the following accounts have permissions for GPOs in the production environment:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Account</th>
    <th align="left">Default Permissions for GPOs</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>&lt;AGPM Service Account&gt;</p></td>
    <td align="left"><p>Edit Settings, Delete, Modify Security</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Authenticated Users</p></td>
    <td align="left"><p>Read, Apply</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Domain Admins</p></td>
    <td align="left"><p>Edit Settings, Delete, Modify Security</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Enterprise Admins</p></td>
    <td align="left"><p>Edit Settings, Delete, Modify Security</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Enterprise Domain Controllers</p></td>
    <td align="left"><p>Read</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>System</p></td>
    <td align="left"><p>Edit Settings, Delete, Modify Security</p></td>
    </tr>
    </tbody>
    </table>

     

-   Membership in the Group Policy Creator Owners group should be restricted, so it is not used to circumvent AGPM management of access to GPOs. (In the **Group Policy Management Console**, click **Group Policy Objects** in the forest and domain in which you want to manage GPOs, click **Delegation**, and then configure the settings to meet the needs of your organization.)

### Additional references

-   [Configuring Advanced Group Policy Management](configuring-advanced-group-policy-management.md)

 

 





