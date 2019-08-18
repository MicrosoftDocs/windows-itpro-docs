---
title: How to Configure the App-V System for Package Upgrade
description: How to Configure the App-V System for Package Upgrade
author: dansimp
ms.assetid: de133898-f887-46c1-9bc9-fbb03feac66a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the App-V System for Package Upgrade


When you deploy a new version of an existing application package that has been upgraded in the App-V Sequencer, you can deploy it so that the App-V clients automatically stream the new version to the local cache. Depending on the streaming solution you use, there are different procedures for configuring the package upgrade. The following sections describe the most typical scenarios for publishing and streaming, and include the procedures necessary for configuring the package upgrade for each scenario.

## Using a Management Server for both publishing and streaming


In this scenario, a single App-V Management Server is used for both publishing and streaming of packages and applications, and the RTSP(S) protocol is required. When the original package is imported to the App-V Management Server, the administrator copies the package folder that contains the files created by the sequencer to the CONTENT folder, for example, to \\\\server\\CONTENT\\packagename. The administrator also edits the HREF entry in the OSD file to point to the SFT file in the package folder, and then imports the package to the server.

When a user is authenticated by the Management Server, the server publishes the user’s applications by sending the applist.xml file to the client. The client then retrieves the OSD files and icons for the applications from the Management Server. When the user double-clicks an application icon, the application content is streamed to the client cache from the path that is specified in the OSD file, and the application is started.

### To upgrade the package

To add a new version of an application that has been upgraded in the App-V Sequencer, the administrator must copy the new SFT file and any other modified files to the same folder as the original version of the application. The administrator will then use **Add Version** in the server management console to add the new version of the package.

When the user next starts the application, the server streams the new version to the client automatically. This specific method of upgrading a package was formerly known as an active upgrade.

## Using a Management Server for publishing and a Streaming Server for streaming


In this scenario, the App-V Management Server is used for publishing the packages, and the Streaming Server is used for streaming packages and applications. The RTSP(S) protocol is required. When the original package is imported to the Management Server, the administrator copies the package folder that contains the files created by the sequencer to the CONTENT folder, for example, to \\\\server\\CONTENT\\packagename. The administrator edits the HREF entry in the OSD file to point to the SFT file on the Streaming Server, and then imports the package to the Management Server.

To set up the Streaming Server, the administrator copies the package folder from the Management Server to the CONTENT folder on the Streaming Server. This folder must have the same name and relative path under the Streaming Server’s CONTENT folder as on the Management Server, for example, \\\\streamingserver\\CONTENT\\packagename.

If the client’s Application Source Root (ASR) setting is configured to point to the Streaming Server, the client uses this setting instead of the server name in the HREF entry in the OSD file. The ISR and OSR fields on the client can optionally be configured to point to either the Management Server or the Streaming Server, depending on the specific system architecture that is used.

When a user is authenticated by the Management Server, the server publishes the user’s applications by sending the applist.xml file to the client. The client retrieves the OSD files and icons for the applications from either the Streaming Server or the Management Server, depending on the settings in the OSR and ISR fields.

When the user double-clicks an application icon, the client uses the path to the package content file (SFT) that is contained in the OSD file HREF element. If the ASR is used the client replaces the server name (and port and protocol, if used) in the HREF element with the path to the Streaming Server that is specified in the ASR. The application is then streamed from the Streaming Server to the client cache and is started.

### To upgrade the package

To add a new version of an application that has been upgraded in the App-V Sequencer, the administrator must copy the new version of the SFT file and any other modified files to the same folder as the original version of the application on the Streaming Server.

For consistency, we recommend that you copy new files to the folder on the Management Server as well. In particular, if you use the client’s OSR or ISR fields, copy the updated OSD file and icons to the server that is specified in the OSR and ISR fields.

After the Streaming Server detects the new version, the next time the user starts the application, the server streams the new version to the client automatically.

## Using a Management Server for publishing and an IIS Server for streaming


In this scenario, the App-V Management Server is used for publishing the packages, and the IIS server is used for streaming packages and applications. When the original package is imported to the Management Server, the administrator copies the package folder that contains the files created by the sequencer to the CONTENT folder, for example, to \\\\server\\CONTENT\\packagename. The administrator edits the HREF entry in the OSD file so it points to the SFT file on the IIS server, and then imports the package to the Management Server.

To set up the IIS server for streaming, the administrator copies the package folder from the Management Server to the CONTENT folder on the IIS Server. This folder must have the same name and relative path under the IIS server’s Web Content folder as on the Management Server; for example, the URL on the IIS Server can be accessed by using http://IISserver/CONTENT/packagename or https://IISserver/CONTENT/packagename.

If the client’s Application Source Root (ASR) setting is configured to point to the IIS Server, the client uses the ASR instead of the server name in the HREF entry in the OSD file. You can optionally configure the ISR and OSR fields on the client to point to either the Management Server or the IIS Server, depending on the specific system architecture that you use.

When the Management Server authenticates the user, the server publishes the user’s applications by sending the applist.xml file to the client. The client retrieves the OSD files and icons for the applications from either the IIS Server or the Management Server, depending on the settings in the ISR and OSR fields.

When the user double-clicks an application icon, the client uses the path to the package content file (SFT) that is contained in the OSD file HREF element. If the ASR is used the client replaces the server name (and port and protocol, if used) in the HREF element with the path to the IIS Server that is specified in the ASR. The application is then streamed from the IIS server to the client cache by using the HTTP(S) protocol and is started.

### To upgrade the package

The procedure to upgrade the package is as follows:

-   Copy the new version of the OSD file to the original version’s folder under the Management Server’s CONTENT folder, for example \\\\server\\CONTENT\\packagename, and replace the existing OSD file. For consistency, copy any other modified files, too. If the client’s OSR or ISR fields are used, then also copy the updated OSD file and icons to the server that is specified in the OSR and ISR fields.

-   Copy the new version of the SFT file to the package folder under the Web Content folder on the IIS server; for example, the URL on the IIS Server can be accessed by using http://IISserver/CONTENT/packagename or https://IISserver/CONTENT/packagename.

At the next publishing refresh, the client is updated with the new version of the OSD file. This file now points to the new version of the SFT file; therefore, when the user next double-clicks an application icon, the new version is started.

## Using a Management Server for publishing and a File Share for Streaming


In this scenario, the App-V Management Server is used for publishing the packages, and the file server is used for streaming packages and applications. When the original package is imported to the Management Server, the administrator copies the package folder that contains the files created by the sequencer to the CONTENT folder, for example, to \\\\server\\CONTENT\\packagename. The administrator edits the HREF entry in the OSD file so that it points to the SFT file on the file server, and imports the package to the Management Server.

To set up the file server for streaming, the administrator copies the package folder from the Management Server to the CONTENT folder on the file server. This folder must have the same name and relative path under the file server’s CONTENT folder as on the Management Server, for example \\\\fileserver\\CONTENT\\packagename.

If the client’s Application Source Root (ASR) setting is configured to point to the file server by using a UNC path, for example \\\\fileserver\\content, the client uses this setting instead of the server name in the HREF entry in the OSD file. The administrator can optionally configure the ISR and OSR fields on the client to point to either the Management Server or the file server, depending on the specific system architecture being used.

When the Management Server authenticates the user, the server publishes the user’s applications by sending the applist.xml file to the client. The client retrieves the OSD files and icons for the applications from either the file server or the Management Server, depending on the settings in the ISR and OSR fields.

When the user double-clicks an application icon, the client uses the path to the package content file (SFT) that is contained in the OSD file HREF element. If the ASR is used, the client replaces the server name (and port and protocol, if used) in the HREF element with the path to the file server that is specified in the ASR. The application is then streamed from the file server to the client cache and is started.

### To upgrade the package

The procedure to upgrade the package is as follows:

-   Copy the new version of the OSD file to the original version’s folder under the Management Server’s CONTENT folder, for example \\\\server\\CONTENT\\packagename, replacing the existing OSD file. Any other modified files should be copied as well for consistency. If the client’s OSR or ISR fields are used, then also copy the updated OSD file and icons to the server that is specified in the OSR and ISR fields.

-   Copy the new version of the SFT file to the package folder under the CONTENT folder on the file server, for example \\\\fileserver\\CONTENT\\packagename. Copy the V2 SFT file to the folder under the CONTENT share on the file server, for example \\\\fileserver\\CONTENT\\packagename\\V1.

At the next publishing refresh the client is updated with the new version of the OSD file. This file now points to new version of the SFT file, so when the user next double-clicks an application icon, the new version is started.

## Upgrading the package by using MSI Streaming mode


When you generate a Windows Installer (MSI) file during sequencing a package, the sequencer creates a .MSI file that contains all the necessary publishing information. The administrator must copy the .MSI file to the client and the .SFT file containing the package content to a network share accessible by the client computer.

To publish the application to the client, run the following command on the client computer:

   **Msiexec.exe /i \\\\PathToMsi\\packagename.msi MODE=STREAMING OVERRIDEURL=\\\\\\\\server\\share\\package.sft**

The .MSI file publishes the applications to the client and then streams the .SFT file to the client cache.

### To upgrade the package

To add a new version, an administrator must deploy a new .MSI file to the client and a new .SFT file to the network share. The administrator must then run the same command used to deploy the package, but use the new .MSI file and the new .SFT file, for example:

   **Msiexec.exe /i \\\\PathToMsi\\packagename\_2.msi MODE=STREAMING OVERRIDEURL=\\\\\\\\server\\share\\package\_2.sft**

 

 





