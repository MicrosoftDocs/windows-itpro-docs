---
title: How to Configure Streaming Server Security Post-Installation
description: How to Configure Streaming Server Security Post-Installation
author: dansimp
ms.assetid: 9bde3677-d1aa-4dcc-904e-bb49a268d748
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Configure Streaming Server Security Post-Installation


Configure the App-V Streaming Server for enhanced security through the registry. As with the App-V Management Server, a certificate must be correctly provisioned with the correct EKU identifier for Server Authentication before you complete the following post-installation procedure.

**To configure Streaming Server security post-installation**

1.  Create an MMC, add the **Certificates** snap-in, and select **Local Machine certificate store**.

2.  Open the **Personal** certificates for the computer, and open the certificate provisioned for App-V.

3.  On the **Details** tab, scroll down to the thumbprint and copy the hash in the details pane.

4.  Open the registry editor, and navigate to `HKLM\Software\Microsoft\SoftGrid\4.5\Distribution server`.

5.  Edit the `X509CertHash` value, paste the thumbprint hash in the value field, and remove all spaces. Click **OK** to accept the edit.

6.  In the registry editor, navigate to `HKLM\Software\Microsoft\SoftGrid\4.5\Distribution server\RtspsPorts`.

7.  Create a new **DWORD** value named "322," and then enter the decimal value as 322 or the hexadecimal value as 142.

8.  Restart the streaming service.

## Related topics


[How to Configure Management Server Security Post-Installation](how-to-configure-management-server-security-post-installation.md)

[Troubleshooting Certificate Permission Issues](troubleshooting-certificate-permission-issues.md)

 

 





