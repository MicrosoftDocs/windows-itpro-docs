---
title: How to Configure Windows Server 2003 Firewall for App-V
description: How to Configure Windows Server 2003 Firewall for App-V
author: dansimp
ms.assetid: 2c0e80f8-41e9-4164-ac83-b23b132b489a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure Windows Server 2003 Firewall for App-V


Use the following procedure to configure the Windows Server 2003 firewall for App-V.

**To configure Windows Server 2003 firewall for App-V**

1.  In **Control Panel**, open the **Windows Firewall**.

    **Note**  
    If the server has not been configured to run the firewall service before this step, you will be prompted to start the firewall service.

     

2.  If ICO and OSD files are published through SMB, ensure that **File and Printer Sharing** is enabled on the **Exceptions** tab.

    **Note**  
    If ICO and OSD files are published through HTTP/HTTPS on the Management Server, you might need to add an exception for HTTP or HTTPS. If the IIS server hosting the ICO and OSD files is hosted on a computer separate from the Management Server, you need to add the exception to that computer. To maximize performance, it is recommended that you host the ICO and OSD files on a separate server from the Management Server.

     

3.  Add a program exception for `sghwdsptr.exe`, which is the Management Server service executable. The default path to this executable is `%ProgramFiles%\Microsoft System Center App Virt Management Server\App Virt Management Server\bin`.

    **Note**  
    If the Management Server uses RTSP for communication, you must also add a program exception for `sghwsvr.exe`.

    The App-V Streaming Server requires a program exception `sglwdsptr.exe` for RTSPS communication. The App-V Streaming Server that uses RTSP for communication also requires a program exception for `sglwsvr.exe`.

     

4.  Ensure that the proper scope is configured for each exception. To reduce risk, remove any computer and strictly limit the IP addresses to which the server will respond.

## Related topics


[How to Configure Windows Server 2008 Firewall for App-V](how-to-configure-windows-server-2008-firewall-for-app-v.md)

 

 





