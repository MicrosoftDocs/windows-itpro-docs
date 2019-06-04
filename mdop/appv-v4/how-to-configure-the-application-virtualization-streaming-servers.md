---
title: How to Configure the Application Virtualization Streaming Servers
description: How to Configure the Application Virtualization Streaming Servers
author: dansimp
ms.assetid: 3e2dde35-9d72-40ba-9fdf-d0338bd4d561
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Application Virtualization Streaming Servers


Before virtual applications can be streamed to the Application Virtualization Desktop Client or the Client for Remote Desktop Services (formerly Terminal Services), the Application Virtualization Streaming Servers must be configured. When you configure the servers, you are setting up the *content directory* where the SFT files are loaded and stored. The SFT files contain the virtual application (or applications).

**Important**  
Application Virtualization Servers stream SFT files to the Desktop Client and the Client for Remote Desktop Services using only RTSP or RTSPS protocols. The ICO (icon) file and the OSD (open software descriptor) file can be configured to stream from a different file or HTTP server.

 

**To configure the Application Virtualization Streaming Servers**

1.  Complete the installation procedure for the Application Virtualization Streaming Server. During the installation procedure, you specify the location of the \\Content directory on the **Content Path** screen.

2.  Navigate to the location that you specified for the \\Content directory, and if you have to, create the directory.

3.  When the Content directory is created, configure this directory as a standard file share.

4.  Configure the NTFS file system permissions to the Content directory and the package folders under the Content directory. You should use Security Groups in Active Directory Domain Services that define which users can access each application.

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)

[How to Configure the File Server](how-to-configure-the-file-server.md)

[How to Configure the Server for IIS](how-to-configure-the-server-for-iis.md)

 

 





