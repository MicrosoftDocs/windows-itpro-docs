---
title: How to Add a Package
description: How to Add a Package
author: dansimp
ms.assetid: 5407fdbe-e658-44f6-a9b8-a566b81dedce
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Add a Package


You can add a package from the Application Virtualization Server Management Console in the following ways:

-   Import an application, which creates the package automatically in the process.

-   Add a package manually.

It is recommended that you import applications instead of adding them manually. For more information about importing applications, see [How to Import an Application](how-to-import-an-applicationserver.md).

**To add a package manually**

1.  In the Application Virtualization Server Management Console, right-click the **Packages** node in the left pane and choose **New Package**.

2.  In the **New Package** dialog box, type a name in the **Package Name** field.

3.  Browse for or type a path name in the **Full path for package file** field. This must be an SFT file.

    **Note**  
    If you browse to the SFT file, replace the local path (such as C:\\Program Files\\User\_Apps\\Virtual\_App\_Server\\content) with the server's static host name or IP address. Using the variable *%SFT\_SOFTGRIDSERVER%* requires per-client computer configuration.

    In dialog boxes that refer to Virtual Application Servers, you must use a network location, such as the server's static host name or IP address, that your users can access. The application's Open Software Descriptor (OSD) file can replace the placeholder variable *%SFT\_SOFTGRIDSERER%* with the server's static host name or IP address. If you leave the placeholder variable, you must set this variable on each client computer that will access that server. Set a User or System variable on each computer for SFT\_SOFTGRIDSERVER. The variable value must be the server's static host name or IP address. If you set a variable, exit the Client session, log out of and back into Microsoft Windows, and then restart the session on each computer that had a session running and had the variable set.

     

4.  Click **Next**.

5.  The **Summary** dialog box shows the file location and prompts you to copy the file to the location if you have not already done so. Click **Finish** after you have verified the information.

    **Note**  
    If you are managing applications on a remote server, in the next dialog box, type only the path of the file relative to the server's content root.

     

## Related topics


[How to Import an Application](how-to-import-an-applicationserver.md)

[How to Manage Packages in the Server Management Console](how-to-manage-packages-in-the-server-management-console.md)

 

 





