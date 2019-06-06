---
title: Electronic Software Distribution-Based Scenario Overview
description: Electronic Software Distribution-Based Scenario Overview
author: dansimp
ms.assetid: e9e94b8a-6cba-4de8-9b57-73897796b6a0
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Electronic Software Distribution-Based Scenario Overview


If you plan to use an electronic software distribution (ESD) solution to deploy virtual applications, it is important to understand the factors that go into and are affected by that decision. This topic describes the benefits of using an ESD-based scenario and provides information about the publishing and package streaming methods that you will need to consider as you proceed with your deployment.

**Important**  
Whichever ESD solution you use, you must be familiar with the requirements of your particular solution. If you are using System Center Configuration Manager 2007 R2 or later, see the System Center Configuration Manager documentation at <https://go.microsoft.com/fwlink/?LinkId=66999>.

 

Using an existing ESD system provides you with the following benefits:

-   Eliminates dual management infrastructures

-   Reduces the cost of additional hardware

-   Reduces the cost of additional operating system and database licenses

## Publishing Methods


When using an ESD-based scenario, you have the following choices for publishing the application to the clients:

-   **Stand-alone Windows Installer.** The Windows Installer file contains the manifest and the OSD and ICO files the clients use to configure a package. The Windows Installer file also copies the SFT file to the client because this scenario does not use a server.

-   **Windows Installer with the package manifest.** The Windows Installer file contains the manifest and the OSD and ICO files the clients use to configure a package. The SFT file is stored on a server. A command-line parameter directs the client to the location of the SFT file.

-   **SFTMIME commands.** SFTMIME commands are used with the manifest, OSD, ICO, and SFT files to add packages to the client. The manifest file must be on the client computer, or it must be accessible through a UNC path. Depending on the client configuration and the command-line options, the OSD, ICO, and SFT files can be on the client computer or on a server.

For more detailed information about the preceding publishing methods, see [Determine Your Publishing Method](determine-your-publishing-method.md).

## Package Streaming Methods


You will need to determine the method your Application Virtualization System will use to stream the virtual application packages, or SFT files, from the server to the clients. The following streaming options are available:

-   **Application Virtualization Streaming Server.** If you use an Application Virtualization Streaming Server in your configuration, the SFT files are streamed to the clients from that server using RTSP or RTSPS protocols. You must install the server software on a computer and you must configure it through the registry, but this configuration does not depend on services such as SQL or Active Directory Domain Services. The SFT files are stored on the server at a location accessible by the clients. Publishing information can be distributed to the clients through any distribution mechanism. However, when configured, the client receives package upgrades automatically and active upgrade is supported.

-   **Application Virtualization Management Server.** If you use an Application Virtualization Management Server in your configuration, the SFT files are streamed to the clients from that server using RTSP or RTSPS protocols. You manage this server through the Application Virtualization Management Console. This configuration uses a SQL database and Active Directory services. The server can distribute publishing information to the clients, so additional publishing mechanisms are not needed.

-   **File server.** If you use a file server in your configuration, the SFT files are streamed to the other client computers by using SMB protocols. File servers used in this configuration are managed by creating access control lists (ACLs) on the file shares and SFT files. Care must be taken to direct the clients to the correct files on the file server.

-   **IIS server.** If you use an IIS server in your configuration, the SFT files are streamed to the clients from that server using HTTP or HTTPS protocols. The IIS server is easy to configure and manage. Care must be taken to direct the clients to the correct files on the IIS server.

For more detailed information about the preceding streaming methods, see [Determine Your Streaming Method](determine-your-streaming-method.md).

## Related topics


[Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md)

[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Determine Your Publishing Method](determine-your-publishing-method.md)

[Determine Your Streaming Method](determine-your-streaming-method.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





