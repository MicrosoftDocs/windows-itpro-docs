---
title: How to Add a Package by Using the Command Line
description: How to Add a Package by Using the Command Line
author: dansimp
ms.assetid: e75af49e-811a-407a-a7f0-6de8562b9188
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Add a Package by Using the Command Line


The following procedures list the steps that are necessary to add a virtual application package to the Application Virtualization (App-V) Client on a specific computer.

**To add a virtual application package for a specific user**

-   Run the following command under the user account of the person who is to get the package. The command adds and publishes the package for that user.

    `SFTMIME ADD PACKAGE:”name” /MANIFEST <manifest-path>`

**To add a virtual application package for all users**

-   Run the following command under an account that has administrator rights. The package is added and published for all users on the computer.

    `SFTMIME ADD PACKAGE:”name” /MANIFEST <manifest-path> /GLOBAL`

**To add a package using an electronic software distribution system**

1.  If you are using an electronic software distribution system that runs the commands under the computer’s **SYSTEM** account, the package is published for that account only, unless you use the /GLOBAL switch. Run the following command to add and publish the package for all users on the computer:

    `SFTMIME ADD PACKAGE:”name” /MANIFEST <manifest-path> /GLOBAL`

2.  

    If you want to add the package for specific users only, run the **ADD PACKAGE** command, and then explicitly publish the package for each user by running the following **PUBLISH PACKAGE** command under each person’s user account:

    `SFTMIME ADD PACKAGE:”name” /MANIFEST <manifest-path>`

    `SFTMIME PUBLISH PACKAGE:”name” /MANIFEST <manifest-path>`

    Publishing the package without the GLOBAL parameter grants the user access to the applications in the package and publishes the file types and shortcuts that are listed in the manifest to the user’s profile. Permissions required are “Manage file type associations” (**ManageTypes**) and “Publish shortcuts” (**PublishShortcut**).

## Related topics


[How to Delete All Virtual Applications by Using the Command Line](how-to-delete-all-virtual-applications-by-using-the-command-line.md)

[How to Remove a Package by Using the Command Line](how-to-remove-a-package-by-using-the-command-line.md)

 

 





