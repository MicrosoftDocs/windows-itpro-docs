---
title: How to Remove a Package by Using the Command Line
description: How to Remove a Package by Using the Command Line
author: dansimp
ms.assetid: 47697ec7-20e5-4258-8865-a0a710d41d5a
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Remove a Package by Using the Command Line


You can use the following command-line procedures to delete a virtual application package from the Application Virtualization (App-V) Client on a specific computer.

**To delete a virtual application package for all users**

-   If the package was previously added for all users by using the /GLOBAL switch, use the following command to delete the package and the global file types and shortcuts. Administrator rights are required. The /GLOBAL switch is not needed in this case because the command always performs a global deletion of the package.

    `SFTMIME DELETE PACKAGE:”name”`

**To delete a package previously added for individual users**

1.  If the package was previously added for individual users, you have several options.

    Run the following command once under the user account of each person the package was published to. This denies the user access to the applications if they roam to another computer. It deletes the specific user’s settings, shortcuts, and file types from the profile, and it stops background loads under the user’s context.

    `SFTMIME UNPUBLISH PACKAGE:”name”`

2.  Alternatively, run the following command under the user account of each person the package was published to.

    `SFTMIME UNPUBLISH PACKAGE:”name”`

    Then run this command for the package.

    `SFTMIME DELETE PACKAGE:”name”`

    This completely removes the package, and it deletes all user settings, shortcuts, and file types from their profiles. If the package is subsequently re-added, the users will have to specify their settings again. Only “Delete applications” (**DeleteApp**) permission is needed to run this command.

3.  As a third alternative, you can simply run the **DELETE PACKAGE** command without using the **UNPUBLISH PACKAGE** command. In this case, file types and shortcuts for each user are hidden rather than deleted, and the user settings are retained. This means that if the package is subsequently re-added for the user, the file types and shortcuts are restored, and the user settings are reapplied.

## Related topics


[How to Add a Package by Using the Command Line](how-to-add-a-package-by-using-the-command-line.md)

[How to Delete All Virtual Applications by Using the Command Line](how-to-delete-all-virtual-applications-by-using-the-command-line.md)

 

 





