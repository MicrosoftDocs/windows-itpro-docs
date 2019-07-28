---
title: How to Delete All Virtual Applications by Using the Command Line
description: How to Delete All Virtual Applications by Using the Command Line
author: dansimp
ms.assetid: bfe13b5c-825a-4eb1-a979-6c4b8d8b2a9c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Delete All Virtual Applications by Using the Command Line


You can use the following procedure to delete all virtual applications from a specific computer.

**Note**  
When all applications are deleted from a package, the Application Virtualization (App-V) Client also deletes the package.

 

**To delete all applications**

-   Run the following command to delete all applications for the user account under which the command is run. If you run the command with the optional /GLOBAL switch, using an account with administrative rights, all applications are deleted for all users.

    `SFTMIME DELETE OBJ:APP [/GLOBAL]`

    **Note**  
    When all applications are deleted from a package, the Application Virtualization (App-V) Client also deletes the package.

     

## Related topics


[How to Add a Package by Using the Command Line](how-to-add-a-package-by-using-the-command-line.md)

[How to Remove a Package by Using the Command Line](how-to-remove-a-package-by-using-the-command-line.md)

 

 





