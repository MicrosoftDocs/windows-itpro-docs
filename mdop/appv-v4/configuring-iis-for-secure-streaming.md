---
title: Configuring IIS for Secure Streaming
description: Configuring IIS for Secure Streaming
author: dansimp
ms.assetid: 9a80a703-4642-4bec-b7af-dc7cb6b76925
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Configuring IIS for Secure Streaming


With the release of Microsoft Application Virtualization (App-V) version 4.5, you can use HTTP and HTTPS as protocols for streaming application packages to the App-V clients. This option enables organizations to leverage the additional scalability that IIS typically offers. When you use IIS as a streaming server, you can help secure the communications between the client and server by using HTTPS instead of HTTP.

**Note**  
If you want to stream applications from a file server, you should enhance the security of the communications to the application packages. This can be achieved using IPsec. For more information see the following topics in the TechNet Library:

-   For Windows Server 2003, <https://go.microsoft.com/fwlink/?LinkId=133226>

-   For Windows Server 2008, <https://go.microsoft.com/fwlink/?LinkId=133227>

 

## MIME Types


When you use IIS to stream virtual applications with HTTP or HTTPS, to support App-V, the following MIME types must be added to the IIS server:

-   .OSD=TXT

-   .SFT=Binary

Use the following KB articles as guidance for adding MIME types:

IIS 6.0: <https://go.microsoft.com/fwlink/?LinkId=151973>

IIS 7.0: <https://go.microsoft.com/fwlink/?LinkId=151977>

## Kerberos Authentication


When you use HTTP or HTTPS and Kerberos authentication to stream ICO, OSD, or SFT files, you are enhancing the security of your environment. However, for IIS to support Kerberos authentication, you must configure a proper Service Principal Name (SPN). The `setspn.exe` tool is available for Windows Server 2003 from the Support Tools on the installation CD and is built-in to Windows Server 2008.

To create an SPN, run `setspn.exe` from a command prompt while logged in as a member of Domain Administrators—for example, `setspn.exe –A HTTP/FQDN of Server ServerName`.

## Related topics


[Configuring Management or Streaming Server for Secure Communications Post-Installation](configuring-management-or-streaming-server-for-secure-communications-post-installation.md)

 

 





