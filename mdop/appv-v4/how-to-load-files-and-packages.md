---
title: How to Load Files and Packages
description: How to Load Files and Packages
author: dansimp
ms.assetid: f86f5bf1-99a4-44d7-ae2f-e6049c482f68
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Load Files and Packages


You can use the following procedure to load files and packages on Application Virtualization Servers.

**Note**  
During the installation process, you specified the location of the \\Content directory on the **Content Path** page. This directory should be created and configured as a standard file share before you point to its location.

 

**To load files and packages**

1.  On the computer from which you will stream applications, navigate to the location that you specified for the \\Content directory. If necessary, create the directory and configure it as a standard file share.

2.  Move the SFT files for the virtual applications and packages to the \\Content directory. To keep the SFT files organized and to avoid confusion, put applications and packages in dedicated subfolders.

3.  Load the applications and packages according to the requirements of your scenario and configuration, considering the following conditions:

    -   If your applications and packages are stored on an Application Virtualization (App-V) Management Server, load them through the Management Console. For more information, see [How to Load or Unload an Application](how-to-load-or-unload-an-application.md) or [How to Load Virtual Applications from the Desktop Notification Area](how-to-load-virtual-applications-from-the-desktop-notification-area.md).

    -   If your applications are stored on an App-V Streaming Server, a Web server, or a computer configured as a file server, the applications can be automatically loaded.

        **Note**  
        The App-V Streaming Server automatically polls the \\Content directory for applications and packages and puts this information in RAM to service application requests.

        The App-V Clients must be properly configured to retrieve applications and packages from Web servers and file servers. For more information, see [How to Configure the Client for Application Package Retrieval](how-to-configure-the-client-for-application-package-retrieval.md).

         

## Related topics


[Application Virtualization Server](application-virtualization-server.md)

 

 





