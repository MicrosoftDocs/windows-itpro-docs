---
title: How to Configure a Domain User or Group
description: How to Configure a Domain User or Group
author: dansimp
ms.assetid: 055aba81-a9c9-4b98-969d-775e603becf3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Configure a Domain User or Group


The deployment settings enable you to control which users or groups can access the MED-V workspace, as well as how long the MED-V workspace can be utilized and whether it can be used offline. You can also configure additional rules to control access between the MED-V workspace and the host.

All MED-V workspace permissions are configured in the **Policy** module, on the **Deployment** tab.

To allow users to utilize the MED-V workspace, you must first add domain users or groups to the MED-V workspace permissions. You can then set permissions for each user or group.

## How to Add a Domain User or Group


**To add a domain user or group**

1.  In the **Users / Groups** window, click **Add.**

2.  In the **Enter User or Group names** dialog box, select domain users or groups by doing one of the following:

    -   In the **Enter User or Group names** field, type a user or group that exists in the domain or as a local user or group on the computer. Then click **Check Names** to resolve it to the full existent name.

    -   Click **Find** to open the standard **Select Users or Groups** dialog box. Then select domain users or groups.

3.  Click **OK**.

    The domain users or groups are added.

    **Note**  
    Users from trusted domains should be added manually.

     

    **Warning**  
    Do not run the management application from a computer that is part of a domain that is not trusted by the domain the server is installed on.

     

## How to Remove a Domain User or Group


**To remove a domain user or group**

1.  In the **Users / Groups** window, select a user or group.

2.  Click **Remove**.

    The user or group is deleted.

## How to Set Permissions for a User or a Group


**To set permissions for a user or a group**

1.  Click the user or group for which you are setting the permissions.

2.  Configure the MED-V workspace properties as described in the following table.

3.  On the **Policy** menu, select **Commit**.

**Workspace Deployment Properties**

Property
Description
*General*

Enable Workspace for &lt;user or group&gt;

Select this check box to enable the MED-V workspace for this user or group.

Workspace expires on this date

Select this check box to assign an expiration date for the permissions set for this user or group.

When selected, the date box is enabled. Set the date, and permissions will expire at the end of the date specified.

Offline work is restricted to

Select this check box to assign a time period in which the policy must be refreshed for this user or group. When selected, the time period box is enabled. Set the number of days or hours, and at the end of the specified time period, the user or group will not be able to connect if the policy is not refreshed.

Workspace deletion options

Click to set the MED-V workspace deletion options. For more information, see [How to Set MED-V Workspace Deletion Options](how-to-set-med-v-workspace-deletion-options.md).

*Data Transfer*

Support clipboard between host and Workspace

Select this check box to enable copying and pasting between the host and the MED-V workspace.

Support file transfer between the host and Workspace

Select this check box to enable transferring files between the host and MED-V workspace. Select one of the following options from the **File Transfer** box:

-   **Both**—Enable transferring files between the host and the MED-V workspace.

-   **Host to Workspace**—Enable transferring files from the host to the MED-V workspace.

-   **Workspace to Host**—Enable transferring files from the MED-V workspace to the host.

**Note**  
If a user without permissions attempts to transfer files, a window will appear prompting him to enter the credentials of a user with permissions to perform the file transfer.

 

**Important**  
To support file transfer in Windows XP SP3, you must disable offline file synchronization by editing the registry as follows:

`REG ADD HKLM\software\microsoft\windows\currentversion\netcache /V Enabled /T REG_DWORD /F /D 0`

 

Advanced

Click to set the advanced file transfer options. For more information, see [How to Set Advanced File Transfer Options](how-to-set-advanced-file-transfer-options.md).

*Device Control*

Enable printing to printers connected to the host

Select this check box to enable users to print from the MED-V workspace using the host printer.

**Note**  
The printing is performed by the printers defined on the host.

 

Enable access to CD / DVD

Select this check box to allow access to a CD or DVD drive from this MED-V workspace.

 

**Multiple Memberships**

1.  If the user is part of a group and permissions are applied to the user as well as to the group they are part of, all permissions are applied.

2.  If the user is a member of two different groups, the least restrictive permissions are applied.

## Related topics


[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

[How to Set MED-V Workspace Deletion Options](how-to-set-med-v-workspace-deletion-options.md)

[How to Set Advanced File Transfer Options](how-to-set-advanced-file-transfer-options.md)

 

 





