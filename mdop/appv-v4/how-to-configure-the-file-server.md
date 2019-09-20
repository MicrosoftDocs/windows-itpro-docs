---
title: How to Configure the File Server
description: How to Configure the File Server
author: dansimp
ms.assetid: 0977554c-1741-411b-85e7-7e1cd017542f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the File Server


You can use the following procedure to configure a local computer that is used as a file share and streams applications to the Application Virtualization Desktop Client and the Client for Remote Desktop Services (formerly Terminal Services). This scenario is used when you do not want to add an additional server infrastructure to your existing hardware environment.

If you are using an Application Virtualization Management Server as a distribution point to the file share installed in local offices, you must configure this server before virtual applications can be streamed to the computers that are used as file shares. When you configure the servers and the file shares, you are setting up the content directory where the SFT files are loaded and stored. The SFT files contain the virtual application (or applications).

**Important**  
For applications to stream properly to the Application Virtualization Desktop Client and the Client for Remote Desktop Services, the SFT file streams from the content directory on the server where you store the virtual application; the ICO (icon) file and the OSD (open software descriptor) file can be configured to stream from a different server.

 

**To configure the Application Virtualization file server**

1.  Complete the following installation procedure to configure the server that is used as the distribution point:

    [How to Install Application Virtualization Management Server](how-to-install-application-virtualization-management-server.md)

    **Note**  
    During the installation procedure, you specify the location of the \\Content directory on the **Content Path** screen.

     

2.  Create a \\Content directory, which corresponds to the directory you specified when you installed the server, on each computer that you are using as a file share.

    **Important**  
    Configure the Application Virtualization Desktop Clients to stream applications from the computer you are using as a file share rather than from an Application Virtualization Server or IIS server.

     

3.  When the \\Content directory is created, configure this directory as a standard file share.

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)

[How to Configure the Application Virtualization Streaming Servers](how-to-configure-the-application-virtualization-streaming-servers.md)

[How to Configure the Server for IIS](how-to-configure-the-server-for-iis.md)

 

 





