---
title: How to Delete a Package Version
description: How to Delete a Package Version
author: dansimp
ms.assetid: a55adb9d-ffa6-4df3-a2d1-5e0c73c35e1b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Delete a Package Version


From the Application Virtualization Server Management Console, for a package that has multiple versions, you can use the following procedure to delete one or more versions and still stream the remaining versions of the package. You might do this to more effectively manage files on the server or to remove an obsolete version.

**Note**  
When you choose to delete a version, a confirmation box reminds you that client computers might still be using it. You should advise users to exit and unload any applications before you remove a version that is in use.

 

**To delete a package version**

1.  In the left panel of the Application Virtualization Server Management Console, expand **Packages**.

2.  Click the package that contains the version you want to delete.

3.  In the center pane, right-click the version of the package you want to delete and choose **Delete**.

4.  Read the confirmation window, and click **Yes** to complete the action.

    **Note**  
    If you have users in disconnected operation, their applications will be replaced with the new versions the next time they connect to the servers. After you are sure all users have updated applications, you can delete old versions.

     

## Related topics


[How to Delete a Package](how-to-delete-a-packageserver.md)

[How to Manage Packages in the Server Management Console](how-to-manage-packages-in-the-server-management-console.md)

 

 





