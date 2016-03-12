---
title: ACT LPS Share Permissions (Windows 10)
description: To upload log files to the ACT Log Processing Service (LPS) share certain permissions must be set at the share level and folder level.
MSHAttr: PreferredLib /library
ms.assetid: 51f6ddf7-f424-4abe-a0e0-71fe616f9e84
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# ACT LPS Share Permissions


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

To upload log files to the ACT Log Processing Service (LPS) share, certain permissions must be set at the share level and folder level.

## Share-Level Permissions


The **Everyone** group must have **Change** and **Read** permissions to the ACT LPS share.

**To set the share-level permissions**

1.  Browse to the ACT LPS share, right-click the folder, and select **Properties**.

2.  Click the **Sharing** tab, share the folder, and then click **Permissions**.

3.  Add the **Everyone** group if it is not already listed, and then select the **Change** and **Read** check boxes in the **Allow** column.

## Folder-Level Permissions (NTFS Only)


The **Everyone** group must have **Write** access to the ACT LPS share.

The ACT Log Processing Service account must have **List Folder Contents**, **Read**, and **Write** permissions.

-   If the ACT Log Processing Service account is **Local System Account**, apply the permissions to the *&lt;domain&gt;*\\*&lt;computer&gt;*$ account.

-   If the ACT Log Processing Service is a user account, apply the permissions to the specific user.

**To set the folder-level permissions**

1.  In Windows Explorer, right-click the folder for the ACT LPS share, and then click **Properties**.

2.  Click the **Security** tab, add the account that runs the ACT Log Processing Service, and then select the **List Folder Contents**, **Read**, and **Write** check boxes in the **Allow** column.

3.  Add the **Everyone** group if it is not already listed, and then select the **Write** check box in the **Allow** column.

## Related topics


[ACT Tools, Packages, and Services](act-tools-packages-and-services.md)

[ACT Deployment Options](act-deployment-options.md)

[ACT Database Configuration](act-database-configuration.md)

[ACT Database Migration](act-database-migration.md)

 

 





