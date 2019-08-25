---
title: Configuring Management or Streaming Server for Secure Communications Post-Installation
description: Configuring Management or Streaming Server for Secure Communications Post-Installation
author: dansimp
ms.assetid: 1062a213-470b-4ae2-b12f-b3e28a6ab745
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring Management or Streaming Server for Secure Communications Post-Installation


If the proper certificate was not provisioned before the installation of the App-V Management Server or the App-V Streaming Server, App-V can be configured for enhanced security after the initial installation. You can configure the App-V Management Server through the App-V Management Console. However, the App-V Streaming Server is managed through the registry. In either case, the certificate must include the proper *extended key usage* (EKU) for Server authentication and the Network Service must have read access to the private key.

## In This Section


<a href="" id="how-to-configure-management-server-security-post-installation"></a>[How to Configure Management Server Security Post-Installation](how-to-configure-management-server-security-post-installation.md)  
Provides a procedure that can be performed post-installation, using the App-V Management Console, to add the certificate and configure the App-V Management Server for enhanced security.

<a href="" id="how-to-configure-streaming-server-security-post-installation"></a>[How to Configure Streaming Server Security Post-Installation](how-to-configure-streaming-server-security-post-installation.md)  
Provides a procedure that can be performed post-installation, to add the certificate and configure the App-V Streaming Server for enhanced security.

<a href="" id="troubleshooting-certificate-permission-issues"></a>[Troubleshooting Certificate Permission Issues](troubleshooting-certificate-permission-issues.md)  
Provides troubleshooting guidance for when the private key has not been configured with the proper ACL for the Network Service.

 

 





