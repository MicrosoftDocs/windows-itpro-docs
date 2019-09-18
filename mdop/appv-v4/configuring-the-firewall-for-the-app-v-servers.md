---
title: Configuring the Firewall for the App-V Servers
description: Configuring the Firewall for the App-V Servers
author: dansimp
ms.assetid: f779c450-6c6f-46a8-ac66-5e82e0689d55
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring the Firewall for the App-V Servers


After you install the Microsoft Application Virtualization (App-V) Management Server or Streaming Server and configure it to use the RTSP or RTSPS protocol, you must create firewall exceptions for the App-V programs.

## Configuring Firewall Exceptions for Application Virtualization Management Server


Create a firewall exception for **sghwdsptr.exe** and **sghwsvr.exe**. These programs are found in the folder C:\\Program Files\\Microsoft System Center App Virt Management Server\\App Virt Management Server\\bin on a 32-bit operating system. If you are using a 64-bit operating system version, the folder is located under C:\\Program Files (x86)\\Microsoft System Center App Virt Management Server\\App Virt Management Server\\bin.

## Configuring Firewall Exceptions for Application Virtualization Streaming Server


Create a firewall exception for **sglwdsptr.exe** and **sglwsvr.exe**. These programs are found in the folder C:\\Program Files\\Microsoft System Center App Virt Streaming Server\\App Virt Streaming Server\\bin on a 32-bit operating system. If you are using a 64-bit operating system version, the folder is located under C:\\Program Files (x86)\\Microsoft System Center App Virt Streaming Server\\App Virt Streaming Server\\bin.

## Related topics


[How to Configure Servers for Server-Based Deployment](how-to-configure-servers-for-server-based-deployment.md)

[How to Install and Configure the Default Application](how-to-install-and-configure-the-default-application.md)

 

 





