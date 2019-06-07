---
title: How to Configure the Server for IIS
description: How to Configure the Server for IIS
author: dansimp
ms.assetid: 1fcfc583-322f-4a38-90d0-e64bfa9ee3d8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure the Server for IIS


Before virtual applications can be streamed to the Application Virtualization Desktop Client and the Client for Remote Desktop Services (formerly Terminal Services), the IIS servers must be configured. When you configure the servers, you are setting up the content directory where the SFT files are loaded and stored. The SFT files contain the virtual application (or applications).

**To configure the content directory on the IIS server**

1.  On the server that is running IIS, locate the directory that you want to use as the content directory, or create the directory if it does not exist. Configure this directory as a standard file share.

2.  On the server that is running IIS, open **IIS Manager**, and under the default website, create a virtual directory that corresponds to the content directory that you created on the server. Make sure that **Read** is checked.

3.  Give the newly created virtual directory the alias **Content**.

4.  Accept all other default settings for this virtual directory.

5.  Configure the NTFS file system permissions to the content directory and the package folders under the content directory by using the Security Groups in Active Directory Domain Services that you defined earlier.

**Note**  
If you are using IIS to publish the ICO and OSD files, you must configure a MIME type for OSD=TXT; otherwise, IIS will not serve the ICO and OSD files to clients. If you are using IIS to publish packages (SFT files), you must configure a MIME type for SFT=Binary; otherwise, IIS will not serve the SFT files to clients.

 

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)

[How to Configure the Application Virtualization Streaming Servers](how-to-configure-the-application-virtualization-streaming-servers.md)

[How to Configure the File Server](how-to-configure-the-file-server.md)

 

 





