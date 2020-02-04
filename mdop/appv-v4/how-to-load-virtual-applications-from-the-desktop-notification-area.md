---
title: How to Load Virtual Applications from the Desktop Notification Area
description: How to Load Virtual Applications from the Desktop Notification Area
author: dansimp
ms.assetid: f52758eb-8b81-4b3c-9bc3-adcf7c00c238
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Load Virtual Applications from the Desktop Notification Area


If you are a mobile user, you might want to fully load your applications in the cache to use them during disconnected operation or offline mode. To stream applications from the Application Virtualization (App-V) Server or the Application Virtualization (App-V) Streaming Server, you must be connected to a server to load applications. If you are not connected to the server when you attempt to load applications, your system will generate an appropriate error message. You can also stream applications to the client from a file or disk.

The applications are loaded one application at a time. The progress bar shows you the application name, the percentage of application loaded, and the number of applications already processed compared to the total number of the applications queued. You can skip any application in progress before it is 100% loaded. You can skip the loading of all remaining applications as well.

**Note**  
If your system encounters an error while loading an application, it reports the error to you. You must dismiss the error dialog before it will load the next application.

 

**To load all applications**

1.  Right-click the Application Virtualization System icon in the notification area.

2.  Select **Load Applications** from the pop-up menu.

**To skip applications**

1.  Click the progress bar to display the dialog box.

2.  Select one of the following buttons to achieve the desired results:

    1.  **Skip**—To skip the currently loading application.

    2.  **Skip All**—To skip all remaining applications.

    3.  **Continue**—To cancel the dialog box and continue loading applications.

## Related topics


[How to Use the Desktop Notification Area for Application Virtualization Client Management](how-to-use-the-desktop-notification-area-for-application-virtualization-client-management.md)

 

 





