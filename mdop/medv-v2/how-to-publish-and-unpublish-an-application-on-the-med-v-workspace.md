---
title: How to Publish and Unpublish an Application on the MED-V Workspace
description: How to Publish and Unpublish an Application on the MED-V Workspace
author: levinec
ms.assetid: fd5a62e9-0577-44d2-ae17-61c0aef78ce8
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Publish and Unpublish an Application on the MED-V Workspace


Even though an application is installed in a MED-V workspace, you might also have to publish the application before it becomes available to the end user. By default, most applications are published at the time that they are installed and shortcuts are created and enabled.

In some cases, you might want to install applications on the MED-V workspace without making them available to the end user, for example, virus-scanning software. Similarly, there are occasions in which you want to publish an application that is installed on the MED-V workspace that was previously unavailable to the end user. For example, you might have to publish an installed application if the installation did not automatically create a shortcut on the **Start** menu.

**Important**  
If you publish an application that does not support UNC paths, we recommend that you map the application to a drive.

 

You can publish or unpublish applications to a deployed MED-V workspace by performing one of the following tasks:

**To publish or unpublish an installed application**

1.  To publish an application on a deployed MED-V workspace, copy a shortcut for that application to the following folder on the virtual machine:

    C:\\Documents and Settings\\All Users\\Start Menu

    If it is necessary, use Group Policy or an ESD system to deploy a script that copies the shortcut for that application to the All Users\\Start Menu folder.

2.  To unpublish an application on a deployed MED-V workspace, delete the shortcut for that application from the following folder on the virtual machine:

    C:\\Documents and Settings\\All Users\\Start Menu

    If it is necessary, use Group Policy or an ESD system to deploy a script that deletes the shortcut for that application from the All Users\\Start Menu folder.

    **Note**  
    Frequently, the shortcut is automatically deleted from the host computer **Start** menu when you uninstall the application. However, in some cases, such as for a MED-V workspace that is configured for all users of a shared computer, you might have to manually delete the shortcut on the **Start** menu after the application is uninstalled. The end-user can do this by right-clicking the shortcut and selecting **Delete**.

     

To test that the application was published or unpublished, verify on the MED-V workspace whether the corresponding shortcut is available or not.

**Note**  
Applications that are included in Windows XP SP3 and are located in the virtual machine Start Menu folder are not automatically published to the host. They are controlled by registry settings that block automatic publishing. For more information, see [Windows Virtual PC Application Exclude List](windows-virtual-pc-application-exclude-list.md).

 

**To publish Control Panel items**

1.  Create a shortcut on the virtual machine where the target is the name of the item, such as C:\\WINDOWS\\system32\\appwiz.cpl.

    The shortcut must be either created in or moved to the "%ALLUSERSPROFILE%\\Start Menu\\" folder or one of its subfolders.

    The item will be published to the host computer in the corresponding location in the host Start Menu folder.

2.  Start the shortcut for the item in the host.

**Caution**  
When you create the shortcut, do not specify %SystemRoot%\\control.exe. This application will not be published because it is contained in the registry settings that block automatic publishing.

 

**How MED-V handles automatic application publishing**

1.  During application publishing, MED-V copies the shortcuts from the guest virtual machine to the host computer by trying to match the folder hierarchy that exists in the guest. By doing this, MED-V copies shortcuts from the guest to the host by following these steps:

    1.  MED-V tries to locate a folder under Start Menu\\Programs in the host computer that is named the same as the folder in the guest where the shortcut resides.

    2.  If there is no matching folder, MED-V then tries to locate a folder in the host Start Menu folder that is named the same as the folder in the guest where the shortcut resides.

    3.  If there is no matching folder, MED-V copies the shortcut to the default folder on the host, the Start Menu\\Programs folder.

2.  Example of application publishing process:

    1.  If an application shortcut is published to the Start Menu\\Programs\\AppShortcuts folder in the guest, then MED-V looks in the host computer for a Start Menu\\Programs\\ AppShortcuts folder and if found, copies the shortcut to that folder.

    2.  If the folder is not found, then MED-V looks in the host computer for a Start Menu\\AppShortcuts folder and if found, copies the shortcut to that folder.

    3.  If the folder is not found, then MED-V copies the shortcut to the Start Menu\\Programs folder.

**Note**  
A folder must already exist in the host computer Start Menu folder for MED-V to copy the shortcut there. MED-V does not create the folder if it does not already exist.

 

## Related topics


[Installing and Removing an Application on the MED-V Workspace](installing-and-removing-an-application-on-the-med-v-workspace.md)

[Managing Software Updates for MED-V Workspaces](managing-software-updates-for-med-v-workspaces.md)

[Windows Virtual PC Application Exclude List](windows-virtual-pc-application-exclude-list.md)

 

 





