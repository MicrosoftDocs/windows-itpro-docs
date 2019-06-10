---
title: How to Configure Management Server Security Post-Installation
description: How to Configure Management Server Security Post-Installation
author: dansimp
ms.assetid: 71979fa6-3d0b-4a8b-994e-cb728d013090
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure Management Server Security Post-Installation


Use the App-V Management Console to add the certificate and configure the App-V Management Server for enhanced security. You can use the following procedure to configure security post-installation.

**To configure Management Server security post-installation**

1.  Open the App-V Management Console, and connect to the **Management Service** with App-V administrator privileges.

2.  Expand the server, expand **Server Groups**, and then select the appropriate server group with which the Management Server was registered.

3.  Right-click the Management Server object, and select **Properties**.

4.  On the **Ports** tab, click **Server Certificate** and complete the wizard to select the properly provisioned certificate.

    **Note**  
    If no certificates are displayed in the wizard, a certificate has not been provisioned or the certificate does meet the requirements of App-V.

     

5.  Click **Next** to continue on to the **Welcome To Certificate Wizard** page.

6.  Select the correct certificate in the **Available Certificates** screen.

7.  Click **Finish**.

8.  After completing the wizard, clear **RTSP** as an available listening port. This prevents connections from being made over a non-secure communication channel.

9.  Click **Apply**, and restart the **Microsoft Virtual Application Server** service. Use the service’s MMC snap-in to accomplish this task.

## Related topics


[How to Configure Streaming Server Security Post-Installation](how-to-configure-streaming-server-security-post-installation.md)

[Troubleshooting Certificate Permission Issues](troubleshooting-certificate-permission-issues.md)

 

 





