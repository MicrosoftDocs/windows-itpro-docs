---
title: How to Configure the Application Virtualization Management Servers
description: How to Configure the Application Virtualization Management Servers
author: dansimp
ms.assetid: a9f96148-bf2d-486f-98c2-23409bfb0935
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Application Virtualization Management Servers


Before virtualized applications can be streamed to the Application Virtualization Desktop Client or the Client for Remote Desktop Services (formerly Terminal Services), the Application Virtualization Management Server must be configured. When you configure the server, you are setting up the *content directory* where the SFT files are loaded and stored. The SFT files contain the virtualized application (or applications).

**Important**  
Application Virtualization Servers stream SFT files to the Desktop Client and the Client for Remote Desktop Services using only RTSP or RTSPS protocols. The ICO (icon) file and the OSD (open software descriptor) file can be configured to stream from a different file or HTTP server.

 

**To configure the Application Virtualization Management Server**

1.  Complete the following procedure:

    [How to Install Application Virtualization Management Server](how-to-install-application-virtualization-management-server.md)

    **Note**  
    During the installation procedure, you specify the location of the \\Content directory on the **Content Path** screen.

     

2.  Navigate to the location that you specified for the \\Content directory, and if necessary, create the directory.

3.  When the content directory is created, configure this directory as a standard file share.

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Application Virtualization System Requirements](application-virtualization-system-requirements.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[How to Configure Servers for Server-Based Deployment](how-to-configure-servers-for-server-based-deployment.md)

 

 





